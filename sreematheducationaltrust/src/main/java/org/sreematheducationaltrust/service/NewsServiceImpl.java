package org.sreematheducationaltrust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.sreematheducationaltrust.dao.NewsDAO;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsDAO newsDAO;
	public UserResponse newsPost(News news) {
		UserResponse response = new UserResponse();
		try{
			newsDAO.newsPost(news);
			response.setStatusCode("1");
			response.setStatusMessage("Success");
		}catch(Exception e){
			System.out.println(e);
		}
		return response;
	}

	public List<News> getAllNews() {
		return newsDAO.getAllNews();
	}

}
