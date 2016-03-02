package org.sreematheducationaltrust.dao;

import java.util.List;

import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

public interface AdminTaskPanelDAO {
	
	public void newsPost(News news);
	public List<News> getAllNews();
	public List<News> getNewsByLanguage(String newsLAnguage);
	public News getNewsById(int newsId);
	public void createEvent(Events event);
	public List<Events> getAllEvents();
	public void addLanguage(Language language);
}
