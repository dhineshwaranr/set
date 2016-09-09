package org.sreematheducationaltrust.dao;

import java.util.List;

import org.sreematheducationaltrust.domain.AboutUs;
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
	
	public List<Blogs> getBlogsByLanguage(int language);
	
	public List<GalleryCoverPage> getGalleryCoverPage();
	public List<Gallery> getGalleryImages(int albumId);
	
	public void saveAboutUsContent(AboutUs aboutuscontent);
	
	public List<AboutUs> getAboutUsContentByLanguage(int language);
	public List<Services> getServiceContentByLanguage(int language);
}
