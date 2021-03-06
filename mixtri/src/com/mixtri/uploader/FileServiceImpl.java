package com.mixtri.uploader;

import java.io.File;


import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.apache.log4j.Logger;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import com.google.gson.Gson;
import com.mixtri.DAO.MixtriDAO;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

@Path("/")
public class FileServiceImpl implements IFileService {

	static Logger log = Logger.getLogger(FileServiceImpl.class.getName());
	static String UPLOAD_FILE_SERVER;

	static{
		try{
			Properties prop = new Properties();
			String path = new File("properties/mixtri.properties").getAbsolutePath();
			File file = new File(path);

			InputStream input = null;
			input = new FileInputStream(file);
			// load a properties file
			prop.load(input);
			UPLOAD_FILE_SERVER = prop.getProperty("UPLOAD_PATH");
		}catch(Exception exp){
			log.error("Error Loading properties files "+exp.getStackTrace());
		}

	}

	@GET
	@Path("/download")
	@Produces("application/zip")
	public Response downloadFile() {
		String responseOk;
		Gson gson = new Gson();
		try{ 
			// set file (and path) to be download
			File file = new File("D:/Demo/download/Microbiology.zip");

			ResponseBuilder responseBuilder = Response.ok((Object) file);
			responseBuilder.header("Content-Disposition", "attachment; filename=\"MyJerseyZipFile.zip\"");

			responseOk = gson.toJson("File downloaded successfully");
			return Response.ok(responseOk, MediaType.APPLICATION_JSON).build();
		}catch(Exception exp){

			log.error("Exception Occured while downoloading file: downloadFile method: "+exp);
			Response.Status httpStatus = Response.Status.INTERNAL_SERVER_ERROR;
			return Response.status(httpStatus).build() ;

		}

	}

	@POST
	@Path("/upload")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces(MediaType.APPLICATION_JSON)
	public Response uploadFile(
			@FormDataParam("uploadFile") InputStream fileInputStream,
			@FormDataParam("uploadFile") FormDataContentDisposition fileFormDataContentDisposition,
			@FormDataParam("emailId") String emailId) {

		// local variables
		String fileName = null;
		Gson gson = new Gson();
		String responseOk=null;
		Map<String,String> messages = new HashMap<String,String>();
		try {

			String uploadPath = UPLOAD_FILE_SERVER+"/"+emailId+"/tracks/";
			boolean directoryCreated = createUserDirectory(uploadPath);
			if(directoryCreated){
				fileName = fileFormDataContentDisposition.getFileName();
				final String uuid = UUID.randomUUID().toString().replaceAll("-", "");
				log.debug("Saving file: "+fileName+" as "+uuid);
				String title = fileName; 
				fileName = uuid+".mp3";
				byte[] bytes = IOUtils.toByteArray(fileInputStream);
				Response usedDiskSpace = getDiskSpace(emailId);
				String objUsedSpace = usedDiskSpace.getEntity().toString();
				objUsedSpace = objUsedSpace.replace("\"", ""); //replaces double quotes from starting and ending of the String
				double usedSpace = Double.valueOf(objUsedSpace);
					
				if((usedSpace - bytes.length/1000000)>0){
					double spaceLeftBytes = writeToFileServer(bytes, fileName,uploadPath);
					double spaceLeftMB = spaceLeftBytes/1000000;
					UploaderBean uploaderBean = setUploaderBean(emailId,spaceLeftMB,uuid,title,uploadPath);
					MixtriDAO mixtriDAO = new MixtriDAO();
					boolean isSaved = mixtriDAO.saveUploadedMixDAO(uploaderBean);
					messages.put("success", title+" Uploaded Successfully!");
					messages.put("id", uuid);
					messages.put("path", uploadPath);
					responseOk = gson.toJson(messages);
					return Response.ok(responseOk, MediaType.APPLICATION_JSON).build();
				}else{
					messages.put("error","ERROR: Not enough free space to upload. Please delete some old files to free some space!");
					responseOk = gson.toJson(messages);
				}
			}

			return Response.ok(responseOk, MediaType.APPLICATION_JSON).build();
		}
		catch(IOException ioe){
			ioe.printStackTrace();
			log.error("Exception Occured while uploading file: uploadFile method: "+ioe);
			Response.Status httpStatus = Response.Status.INTERNAL_SERVER_ERROR;
			return Response.status(httpStatus).build() ;
		}catch(Exception exp){

			log.error("Exception Occured while uploading file: uploadFile method: "+exp);
			Response.Status httpStatus = Response.Status.INTERNAL_SERVER_ERROR;
			return Response.status(httpStatus).build() ;
		}       
	}

	public UploaderBean setUploaderBean(String emailId,double fileSizeMB,String id,String title,String filePath){

		UploaderBean uploaderBean = new UploaderBean();
		uploaderBean.setFileSize(fileSizeMB);
		uploaderBean.setEmailId(emailId);
		uploaderBean.setId(id);
		uploaderBean.setTitle(title);
		uploaderBean.setFilePath(filePath);
		Date utilDate = new Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		uploaderBean.setDateUploaded(sqlDate);


		return uploaderBean;
	}

	/**
	 * write input stream to file server
	 * @param inputStream
	 * @param fileName
	 * @throws IOException
	 */
	private double writeToFileServer(byte[] bytes, String fileName, String UPLOAD_FILE_SERVER) throws IOException {

		OutputStream outputStream = null;
		String qualifiedUploadFilePath = UPLOAD_FILE_SERVER + fileName;
		double fileSize = 0.0;
		try {
			outputStream = new FileOutputStream(new File(qualifiedUploadFilePath));
			int read = 0;

			//byte[] bytes = new byte[1024];
			outputStream.write(bytes);
			/*while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);	
			}*/
			outputStream.flush();

			File file = new File(qualifiedUploadFilePath);
			fileSize = file.length();
		}
		catch (IOException ioe) {
			ioe.printStackTrace();            
		}
		finally{
			//release resource, if any
			outputStream.close();
		}

		return fileSize;
	}

	@GET
	@Path("/diskspace")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getDiskSpace(@QueryParam("emailId") String emailId){

		String spaceLeft="";
		Gson gson = new Gson();
		String uploadPath = UPLOAD_FILE_SERVER+"/"+emailId+"/tracks/";
		try{
			File file = new File(uploadPath);
			if(file.exists()){
				double size = FileUtils.sizeOfDirectory(new File(uploadPath));
				double userDiskSpace = size/1000000;
				int oneGB = 1024;
				double diskSpaceLeft = oneGB - userDiskSpace;
				spaceLeft = gson.toJson(String.format("%.2f", diskSpaceLeft)); //rounds off to first two decimals
				return Response.ok(spaceLeft, MediaType.APPLICATION_JSON).build();
			}

			spaceLeft = gson.toJson("1024");
			return Response.ok(spaceLeft, MediaType.APPLICATION_JSON).build();
		}catch(Exception exp){
			log.error("Exception Occured while fetching disk space for the user:"+uploadPath);
			log.error("Exception Occured while fetching disk space for the user:"+exp);
			Response.Status httpStatus = Response.Status.INTERNAL_SERVER_ERROR;
			return Response.status(httpStatus).build() ;
		} 
	}

	public boolean createUserDirectory(String uploadPath) throws IOException{

		File files = new File(uploadPath);
		if (!files.exists()) {
			if (files.mkdirs()) {
				log.debug("User Directory Created: "+uploadPath);
				return true;
			} else {
				log.error("failed to create user Direcory: "+uploadPath);
				throw new IOException();

			}
		}

		return true;
	}
	
	@GET
	@Path("/pastmixes")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getPastMixes(@QueryParam("emailId") String emailId){
		
		String pastMixesOrgNames="";
		Gson gson = new Gson();
		String uploadPath = UPLOAD_FILE_SERVER+"/"+emailId+"/tracks/";
		Map<String,File[]> fileList = new HashMap<String, File[]>();
		Map<String,String> mapOrgNames = new HashMap<String, String>();
		try{
			File folder = new File(uploadPath);
			
			if(folder.exists()){
				
				File[] listOfFiles = folder.listFiles();
				
				fileList.put(emailId, listOfFiles);
				MixtriDAO mixtriDAO = new MixtriDAO();
				log.debug("Getting past track info for the user: "+emailId);
				mapOrgNames = mixtriDAO.getUserPastTracksInfoDAO(fileList);
				mapOrgNames.put("path", uploadPath);
				pastMixesOrgNames = gson.toJson(mapOrgNames);
				
			}else{
				mapOrgNames.put("", "");
				pastMixesOrgNames = gson.toJson(mapOrgNames);
			}
		}catch(Exception exp){
			
			log.error("Exception Occured while retriving past mixes fro the user: "+exp);
		}
		
		return Response.ok(pastMixesOrgNames, MediaType.APPLICATION_JSON).build();
		
	}
}
