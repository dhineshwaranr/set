package org.sreematheducationaltrust.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.sreematheducationaltrust.dao.AdminTaskPanelDAO;
import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.AdminUsers;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.domain.Services;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationtrust.dto.MenuBarDto;

public class AdminTaskPanelServiceImpl implements AdminTaskPanelService {

	@Autowired
	AdminTaskPanelDAO adminTaskPanelDAO;
	
	public UserResponse newsPost(News news) {
		UserResponse response = new UserResponse();
		try{
			/*Language lang = new Language();
			lang.getId(news.getLanguage().getLanguage());
			news.setLanguage(news.getLanguage());*/
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

	public List<News> getNewsByLanguage(int newsLanguage) {
		return adminTaskPanelDAO.getNewsByLanguage(newsLanguage);
	}

	public News getNewsById(int newsId) {
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

	public List<MenuBar> getMenuItems(int language) {
		return adminTaskPanelDAO.getMenuItems(language);
	}

	public List<Map<String,String>> getAllMenu() {
		List<MenuBar> mlist = adminTaskPanelDAO.getAllMenu();
		List<Map<String,String>> menuList = new ArrayList<Map<String,String>>();
		for(MenuBar ml : mlist){
			Map<String,String> menuMap = new HashMap<String,String>();
			String mb = Integer.toString(ml.getId());
			String mb1 = ml.getMenuName();
			String mb2 = ml.getLanguage().getLanguage();
			menuMap.put("id",mb);
			menuMap.put("menuName",mb1);
			menuMap.put("language",mb2);
			menuList.add(menuMap);
		}
		return menuList;
	}

	public BaseResponse saveAboutUsContent(AboutUs aboutuscontent) {
		BaseResponse response = new BaseResponse();
		adminTaskPanelDAO.saveAboutUsContent(aboutuscontent);
		response.setStatusCode("1");
		response.setStatusMessage("Language Added");
		return null;
	}

	public List<AboutUs> getAboutUsContentByLanguage(int language) {
		return adminTaskPanelDAO.getAboutUsContentByLanguage(language);
	}

	public List<Services> getServiceContentByLanguage(int language) {
		return adminTaskPanelDAO.getServiceContentByLanguage(language);
	}

}
