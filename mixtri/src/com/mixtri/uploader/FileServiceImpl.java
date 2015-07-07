package com.mixtri.uploader;

import java.io.File;


import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;
 
import java.util.ResourceBundle;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
 







import org.apache.log4j.Logger;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import sun.security.util.PropertyExpander.ExpandException;

import com.google.gson.Gson;
import com.mixtri.BusinessExceptions.ExceptionHttpStatusResolver;
import com.mixtri.signup.UserSignUp;
 
@Path("/")
public class FileServiceImpl implements IFileService {
	
	static Logger log = Logger.getLogger(FileServiceImpl.class.getName());
 
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
 
    // http://localhost:8080/Jersey-UP-DOWN-Zip-File/rest/fileservice/upload/zip
    @POST
    @Path("/upload")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response uploadFile(
            @FormDataParam("uploadFile") InputStream fileInputStream,
            @FormDataParam("uploadFile") FormDataContentDisposition fileFormDataContentDisposition) {
 
        // local variables
        String fileName = null;
        String uploadFilePath = null;
        Gson gson = new Gson();
		
        try {
        
        Properties prop = new Properties();
        String path = new File("properties/mixtri.properties").getAbsolutePath();
		
		File file = new File(path);
		
        InputStream input = null;
    	input = new FileInputStream(file);
    	// load a properties file
		prop.load(input);
		final String  UPLOAD_FILE_SERVER = prop.getProperty("UPLOAD_PATH");
		    fileName = fileFormDataContentDisposition.getFileName();
            uploadFilePath = writeToFileServer(fileInputStream, fileName,UPLOAD_FILE_SERVER);
            
            String responseOk;
            responseOk = gson.toJson("File uploaded successfully at "+uploadFilePath);
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
    private String writeToFileServer(InputStream inputStream, String fileName, String UPLOAD_FILE_SERVER) throws IOException {
 
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
        return qualifiedUploadFilePath;
    }
}
