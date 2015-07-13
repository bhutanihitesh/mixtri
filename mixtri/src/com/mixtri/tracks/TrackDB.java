package com.mixtri.tracks;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.mixtri.database.DBConnection;

/* This class will interact with the database */

public class TrackDB {

	private static Logger log = Logger.getLogger(TrackDB.class.getName());
	
	public List<TrackBean> getAllTracks(){
	//Once the database is set up, actual queries will be placed here
		List<TrackBean> trackList=new ArrayList<>();
		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
	try{
		
		TrackBean tb1=new TrackBean(1,"assets/img/artist/artist1.jpg",7,"Maroon 5 Move Like Jagger 1","4:05","Christina Aguilera","assets/audio/2.mp3");
		TrackBean tb2=new TrackBean(2,"assets/img/artist/artist1.jpg",5,"Maroon 5 Move Like Jagger 2","4:05","Christina Aguilera 2","assets/audio/2.mp3");
		TrackBean tb3=new TrackBean(3,"assets/img/artist/artist1.jpg",6,"Maroon 5 Move Like Jagger 3","4:05","Christina Aguilera 3","assets/audio/2.mp3");
		TrackBean tb4=new TrackBean(4,"assets/img/artist/artist1.jpg",9,"Maroon 5 Move Like Jagger 4","4:05","Christina Aguilera 4","assets/audio/2.mp3");
		TrackBean tb5=new TrackBean(5,"assets/img/artist/artist1.jpg",7,"Maroon 5 Move Like Jagger 5","4:05","Christina Aguilera","assets/audio/2.mp3");
		TrackBean tb6=new TrackBean(6,"assets/img/artist/artist1.jpg",5,"Maroon 5 Move Like Jagger 6","4:05","Christina Aguilera 2","assets/audio/2.mp3");
		TrackBean tb7=new TrackBean(7,"assets/img/artist/artist1.jpg",6,"Maroon 5 Move Like Jagger 7","4:05","Christina Aguilera 3","assets/audio/2.mp3");
		TrackBean tb8=new TrackBean(8,"assets/img/artist/artist1.jpg",9,"Maroon 5 Move Like Jagger 8","4:05","Christina Aguilera 4","assets/audio/2.mp3");
		TrackBean tb9=new TrackBean(9,"assets/img/artist/artist1.jpg",7,"Maroon 5 Move Like Jagger 9","4:05","Christina Aguilera","assets/audio/2.mp3");
		TrackBean tb10=new TrackBean(10,"assets/img/artist/artist1.jpg",5,"Maroon 5 Move Like Jagger 10","4:05","Christina Aguilera 2","assets/audio/2.mp3");
		TrackBean tb11=new TrackBean(11,"assets/img/artist/artist1.jpg",6,"Maroon 5 Move Like Jagger 11","4:05","Christina Aguilera 3","assets/audio/2.mp3");
		TrackBean tb12=new TrackBean(12,"assets/img/artist/artist1.jpg",9,"Maroon 5 Move Like Jagger 12","4:05","Christina Aguilera 4","assets/audio/2.mp3");
		TrackBean tb13=new TrackBean(13,"assets/img/artist/artist1.jpg",7,"Maroon 5 Move Like Jagger 13","4:05","Christina Aguilera","assets/audio/2.mp3");
		TrackBean tb14=new TrackBean(14,"assets/img/artist/artist1.jpg",5,"Maroon 5 Move Like Jagger 14","4:05","Christina Aguilera 2","assets/audio/2.mp3");
		TrackBean tb15=new TrackBean(15,"assets/img/artist/artist1.jpg",6,"Maroon 5 Move Like Jagger 15","4:05","Christina Aguilera 3","assets/audio/2.mp3");
		TrackBean tb16=new TrackBean(16,"assets/img/artist/artist1.jpg",9,"Maroon 5 Move Like Jagger 16","4:05","Christina Aguilera 4","assets/audio/2.mp3");
		
		
		trackList.add(tb1);
		trackList.add(tb2);
		trackList.add(tb3);
		trackList.add(tb4);
		trackList.add(tb5);
		trackList.add(tb6);
		trackList.add(tb7);
		trackList.add(tb8);
		trackList.add(tb9);
		trackList.add(tb10);
		trackList.add(tb11);
		trackList.add(tb12);
		trackList.add(tb13);
		trackList.add(tb14);
		trackList.add(tb15);
		trackList.add(tb16);
		
	 }catch(Exception exp){
		 log.error("Exception Occured in fetching records: "+exp);
	 }finally{
		 //TODO: Close DB Connection.
	 }
	
		return trackList;
	}
	
	
}
