package com.mixtri.tracks;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

/* This class will interact with the database */

public class TrackDB {

	private static Logger log = Logger.getLogger(TrackDB.class.getName());
	
	public List<TrackBean> getAllTracks(){
	//Once the database is set up, actual queries will be placed here	
		
		List<TrackBean> trackList=new ArrayList<>();
		TrackBean tb1=new TrackBean(1,"assets/img/artist/artist1.jpg",8,"Maroon 5 Move Like Jagger","4:05","Christina Aguilera","assets/audio/2.mp3");
		TrackBean tb2=new TrackBean(2,"assets/img/artist/artist1.jpg",8,"Maroon 5 Move Like Jagger 2","4:05","Christina Aguilera 2","assets/audio/2.mp3");
		TrackBean tb3=new TrackBean(3,"assets/img/artist/artist1.jpg",8,"Maroon 5 Move Like Jagger 3","4:05","Christina Aguilera 3","assets/audio/2.mp3");
		TrackBean tb4=new TrackBean(4,"assets/img/artist/artist1.jpg",8,"Maroon 5 Move Like Jagger 4","4:05","Christina Aguilera 4","assets/audio/2.mp3");
		
		trackList.add(tb1);
		trackList.add(tb2);
		trackList.add(tb3);
		trackList.add(tb4);
		
		return trackList;
	}
	
	
}
