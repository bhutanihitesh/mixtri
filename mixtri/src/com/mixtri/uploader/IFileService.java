package com.mixtri.uploader;

import java.io.InputStream;

import javax.ws.rs.core.Response;
 
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
 
public interface IFileService {
 
    public Response downloadFile();
    public Response uploadFile(InputStream fileInputStream, FormDataContentDisposition fileFormDataContentDisposition);
}