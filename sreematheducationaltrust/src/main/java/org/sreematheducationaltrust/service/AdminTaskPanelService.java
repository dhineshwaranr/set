package org.sreematheducationaltrust.service;

import java.util.List;

import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

public interface AdminTaskPanelService {

	public UserResponse newsPost(News news);
	public List<News> getAllNews();
	public List<News> getNewsByLanguage(String newsLAnguage);
	public News getNewsById(int newsId);
	public UserResponse createEvent(Events event);
	public List<Events> getAllEvents();
}
