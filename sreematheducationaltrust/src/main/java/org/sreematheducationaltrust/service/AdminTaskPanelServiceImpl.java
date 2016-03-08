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
		Map<String,String> menuMap = new HashMap<String,String>();
		List<Map<String,String>> menuList = new ArrayList<Map<String,String>>();
		Iterator<MenuBar> iterator = mlist.iterator();
		System.out.println(mlist.size());
			
		for(MenuBar ml : mlist){
			menuMap.put("id",Integer.toString(ml.getId()));
			menuMap.put("menuName",ml.getMenuName());
			menuMap.put("language",ml.getLanguage().getLanguage());
			String mb = ml.getLanguage().getLanguage();
			String mb1 = Integer.toString(ml.getId());
			String mb2 = ml.getMenuName();
			System.out.println("-id-"+mb1+" lang-"+mb+"- name-"+mb2);
			menuList.add(menuMap);
		}
		
		System.out.println(menuList.size());
		return menuList;
	}

	public BaseResponse saveAboutUsContent(AboutUs aboutuscontent) {
		BaseResponse response = new BaseResponse();
		adminTaskPanelDAO.saveAboutUsContent(aboutuscontent);
		response.setStatusCode("1");
		response.setStatusMessage("Language Added");
		return null;
	}

}
