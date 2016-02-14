package org.sreematheducationaltrust.dao;

import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;

@Service
public class AdminTaskPanelDAOImpl implements AdminTaskPanelDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	ServletContext context;
	
	@Transactional
	public void newsPost(News news) {
		try {
			if (null != news) {
				this.sessionFactory.getCurrentSession().save(news);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
	
	@Transactional
	public List<News> getAllNews() {
		List<News> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from News");
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get the users from UserEntity based on the page no");
			e.printStackTrace();
		}
		return list;
		
	}

	public List<News> getNewsByLanguage(String newsLAnguage) {
		// TODO Auto-generated method stub
		return null;
	}

	public News getNewsById(int newsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void createEvent(Events event) {
		try {
			if (null != event) {
				this.sessionFactory.getCurrentSession().save(event);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List<Events> getAllEvents() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
