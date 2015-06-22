package com.mixtri.tracks;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;

import com.mixtri.DAO.MixtriDAO;

@Path("/tracks")
public class TrackResource {

	private static Logger log = Logger.getLogger(TrackResource.class.getName());
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<TrackBean> getAllTracks(){

      MixtriDAO mixtridao=new MixtriDAO();
      return mixtridao.getAllTracks();
      
	}
}
