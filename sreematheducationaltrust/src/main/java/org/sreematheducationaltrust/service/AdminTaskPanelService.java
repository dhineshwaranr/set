package org.sreematheducationaltrust.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.AdminUsers;
import org.sreematheducationaltrust.domain.Blogs;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Gallery;
import org.sreematheducationaltrust.domain.GalleryCoverPage;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.domain.Services;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationtrust.dto.MenuBarDto;

public interface AdminTaskPanelService {

	public UserResponse newsPost(News news);
	public List<News> getAllNews();
	public List<News> getNewsByLanguage(int newsLAnguage);
	public News getNewsById(int newsId);
	
	public UserResponse createEvent(Events event);
	public List<Events> getAllEvents();
	
	public BaseResponse addLanguage(Language language);
	public List<Language> getAllLanguage();
	
	public List<MenuBar> getMenuItems(int language);
	public List<Map<String,String>> getAllMenu();
	
	public List<GalleryCoverPage> getGalleryCoverPage();
	public List<Gallery> getGalleryImages();
	
	public List<AboutUs> getAboutUsContentByLanguage(int language);
	public List<Services> getServiceContentByLanguage(int language);
	
	public List<Blogs> getBlogsByLanguage(int language);
	
	public AdminUsers getUserByUserName(String userName);
	public boolean resetAttempt(String username);
	public Integer verifyAttempt(String username);
	public boolean blockUser(String username);
	
	public BaseResponse saveAboutUsContent(AboutUs aboutuscontent);
		
}
