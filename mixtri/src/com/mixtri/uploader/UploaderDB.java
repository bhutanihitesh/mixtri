package com.mixtri.uploader;

import java.io.File;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.mixtri.database.DBConnection;

public class UploaderDB {
	private static Logger log = Logger.getLogger(UploaderDB.class.getName());
	
	
	public ResultSet saveUploadedMixDB(UploaderBean uploaderBean){
		ResultSet rs=null;
		DBConnection dbConnection = new DBConnection();
		
		System.out.println("Record inserted: "+uploaderBean.getId()+" "+uploaderBean.getEmailId()+" "+uploaderBean.getTitle()+" "
		+uploaderBean.getFileSize()+" "+uploaderBean.getFilePath()+" "+uploaderBean.getDateUploaded());
		try{
			
		}catch(Exception exp){
			log.error("Exception Occured while inserting record: "+exp);
		}finally{
			//TODO: Close DB Connection
		}
		
		
		return rs;
	}
	
	public Map<String,String> getPastUploadedTracksDB(Map <String, File[]>filesList){
		Map<String,String> mapOrgNames = new HashMap<String,String>();
		ResultSet rs=null;
		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
		try{
			log.debug("Entry: getPastUploadedTracks");
			//TODO: fetch records from DB by passing guid of tracks from the filesListArray and pass RS to getTracksOriginalNames()
			
			mapOrgNames = getTracksOriginalNamesDB(rs);
			
			
		}catch(Exception exp){
			
			log.error("Exception Occured in fetching records: "+exp);
		}finally{
			//TODO: Close DB Connections
		}
		
		return mapOrgNames;
		
	}
	
	
	public Map<String,String> getTracksOriginalNamesDB(ResultSet rs) throws Exception{
		Map<String,String> mapOrgNames = new HashMap<String,String>();
		//TODO: get names from the resultSet and put them in a list and return;
		mapOrgNames.put("5b5031da2d7d4efb8529d9f904b3b3b1","Bollywood Non-Stop-1");
		mapOrgNames.put("6ab1c7e918144f0c8b835141ee67f2c5","Bollywood Non-Stop-2");
		mapOrgNames.put("2c790a47eb0f47c3a236e74977fc02cb","Bollywood Non-Stop-3");
		mapOrgNames.put("2e5fd9fb040a4b33a41ce18bbe8f9492","Bollywood Non-Stop-4");
		
		return mapOrgNames;
				
	}

}
