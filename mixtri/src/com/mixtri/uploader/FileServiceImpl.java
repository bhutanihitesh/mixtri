package com.mixtri.uploader;

import java.io.File;


import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;
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
import org.apache.commons.io.FileUtils;

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
		try {

			String uploadPath = UPLOAD_FILE_SERVER+"/"+emailId+"/tracks/";
			boolean directoryCreated = createUserDirectory(uploadPath);
			if(directoryCreated){
			fileName = fileFormDataContentDisposition.getFileName();
			writeToFileServer(fileInputStream, fileName,uploadPath);

			
			responseOk = gson.toJson(fileName+" Uploaded Successfully!");
			return Response.ok(responseOk, MediaType.APPLICATION_JSON).build();
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

	/**
	 * write input stream to file server
	 * @param inputStream
	 * @param fileName
	 * @throws IOException
	 */
	private void writeToFileServer(InputStream inputStream, String fileName, String UPLOAD_FILE_SERVER) throws IOException {

		OutputStream outputStream = null;
		String qualifiedUploadFilePath = UPLOAD_FILE_SERVER + fileName;

		try {
			outputStream = new FileOutputStream(new File(qualifiedUploadFilePath));
			int read = 0;
			byte[] bytes = new byte[1024];
			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			outputStream.flush();
		}
		catch (IOException ioe) {
			ioe.printStackTrace();            
		}
		finally{
			//release resource, if any
			outputStream.close();
		}       
	}

	@GET
	@Path("/diskspace")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getDiskSpace(@QueryParam("emailId") String emailId){

		String fileSizeMB=null;
		Gson gson = new Gson();
		String uploadPath = UPLOAD_FILE_SERVER+"/"+emailId+"/tracks/";
		try{
			File file = new File(uploadPath);
			if(file.exists()){
				double size = FileUtils.sizeOfDirectory(new File(uploadPath));
				double userDiskSpace = size/1000000;
				int oneGB = 1024;
				double diskSpaceLeft = oneGB - userDiskSpace;
				fileSizeMB = gson.toJson(String.format("%.2f", diskSpaceLeft)); //rounds off to first two decimals
				return Response.ok(fileSizeMB, MediaType.APPLICATION_JSON).build();
			}
			
			fileSizeMB = gson.toJson("1024");
			return Response.ok(fileSizeMB, MediaType.APPLICATION_JSON).build();
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
				log.info("User Directory Created: "+uploadPath);
				return true;
			} else {
				log.error("failed to create user Direcory: "+uploadPath);
				throw new IOException();

			}
		}

		return true;
	}
}
