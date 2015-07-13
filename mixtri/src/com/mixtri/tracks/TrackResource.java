package com.mixtri.tracks;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;

import com.mixtri.DAO.MixtriDAO;

@Path("/tracks")
public class TrackResource {

	private static Logger log = Logger.getLogger(TrackResource.class.getName());
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public List<TrackBean> getTracks(@QueryParam("page") int page){

	  if(page < 1){
		  page=1;
	  }
	  
      MixtriDAO mixtridao=new MixtriDAO();
      List<TrackBean> tracks= mixtridao.getAllTracksDAO();
      
      int limitPerPage=5;
      int total=tracks.size();
      int last =(int)Math.ceil(total/limitPerPage);
      
      if(page > last){
    	  page=last;
      }
      
      int resultStartIndex=(page-1)*limitPerPage;
      int resultEndIndex=(page*limitPerPage)-1;
     //System.out.println(resultStartIndex +" "+resultEndIndex);
      return tracks.subList(resultStartIndex, resultEndIndex+1);
      
      
	}
	
}
