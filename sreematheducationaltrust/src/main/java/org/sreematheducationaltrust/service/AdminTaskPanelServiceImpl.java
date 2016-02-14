package org.sreematheducationaltrust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.sreematheducationaltrust.dao.AdminTaskPanelDAO;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

public class AdminTaskPanelServiceImpl implements AdminTaskPanelService {

	@Autowired
	AdminTaskPanelDAO adminTaskPanelDAO;
	
	public UserResponse newsPost(News news) {
		UserResponse response = new UserResponse();
		try{
			adminTaskPanelDAO.newsPost(news);
			response.setStatusCode("1");
			response.setStatusMessage("Success");
		}catch(Exception e){
			System.out.println(e);
		}
		return response;
	}

	public List<News> getAllNews() {
		return adminTaskPanelDAO.getAllNews();
	}

	public List<News> getNewsByLanguage(String newsLAnguage) {
		// TODO Auto-generated method stub
		return null;
	}

	public News getNewsById(int newsId) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserResponse createEvent(Events events) {
		UserResponse response = new UserResponse();
		try{
			adminTaskPanelDAO.createEvent(events);
			response.setStatusCode("1");
			response.setStatusMessage("Event Creation Success");
		}catch(Exception e){
			System.out.println(e);
		}
		return response;
	}
	public List<Events> getAllEvents() {
		// TODO Auto-generated method stub
		return null;
	}

}
