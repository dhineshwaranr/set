package org.sreematheducationaltrust.dao;

import java.util.List;

import org.sreematheducationaltrust.domain.News;

public interface NewsDAO {
	
	public void newsPost(News news);
	public List<News> getAllNews();

}
