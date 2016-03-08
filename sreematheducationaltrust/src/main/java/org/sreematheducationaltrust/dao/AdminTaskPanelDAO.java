package org.sreematheducationaltrust.dao;

import java.util.List;

import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;

public interface AdminTaskPanelDAO {
	
	public void newsPost(News news);
	public List<News> getAllNews();
	public List<News> getNewsByLanguage(int newsLAnguage);
	public News getNewsById(int newsId);
	public void createEvent(Events event);
	public List<Events> getAllEvents();
 	public List<Language> getAllLanguage();
	public void addLanguage(Language language);
	public List<MenuBar> getMenuItems(int language);
	public List<MenuBar> getAllMenu();
	
	public void saveAboutUsContent(AboutUs aboutuscontent);
}
