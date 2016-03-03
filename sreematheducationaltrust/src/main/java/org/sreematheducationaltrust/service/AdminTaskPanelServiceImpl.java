package org.sreematheducationaltrust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.sreematheducationaltrust.dao.AdminTaskPanelDAO;
import org.sreematheducationaltrust.domain.AdminUsers;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;

public class AdminTaskPanelServiceImpl implements AdminTaskPanelService {

	@Autowired
	AdminTaskPanelDAO adminTaskPanelDAO;
	
	public UserResponse newsPost(News news) {
		UserResponse response = new UserResponse();
		try{
			Language lang = new Language();
			lang.getId(news.getLanguage().getLanguage());
			news.setLanguage(news.getLanguage());
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


	public BaseResponse addLanguage(Language language) {
		BaseResponse response = new BaseResponse();
		try{
			adminTaskPanelDAO.addLanguage(language);
			response.setStatusCode("1");
			response.setStatusMessage("Language Added");
		}catch(Exception e){
			System.out.println(e);
		}
		return response;
	}
	public AdminUsers getUserByUserName(String userName) {
		 
		return null;
	}

	public boolean resetAttempt(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	public Integer verifyAttempt(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean blockUser(String username) {
		// TODO Auto-generated method stub
		return false;

	}

	public List<Language> getAllLanguage() {
		return adminTaskPanelDAO.getAllLanguage();
	}

}
