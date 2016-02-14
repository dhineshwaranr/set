package org.sreematheducationaltrust.service;

import java.util.List;

import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

public interface NewsService {

	public UserResponse newsPost(News news);
	public List<News> getAllNews();
	
}
