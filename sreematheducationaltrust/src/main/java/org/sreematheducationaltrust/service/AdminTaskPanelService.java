package org.sreematheducationaltrust.service;

import java.util.List;

import org.sreematheducationaltrust.domain.AdminUsers;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;

public interface AdminTaskPanelService {

	public UserResponse newsPost(News news);
	public List<News> getAllNews();
	public List<News> getNewsByLanguage(String newsLAnguage);
	public News getNewsById(int newsId);
	public UserResponse createEvent(Events event);
	public List<Events> getAllEvents();
	public BaseResponse addLanguage(Language language);
	public AdminUsers getUserByUserName(String userName);
	public boolean resetAttempt(String username);
	public Integer verifyAttempt(String username);
	public boolean blockUser(String username);
}
