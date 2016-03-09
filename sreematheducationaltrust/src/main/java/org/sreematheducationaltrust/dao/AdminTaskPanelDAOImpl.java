package org.sreematheducationaltrust.dao;

import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.domain.Services;
import org.sreematheducationaltrust.io.BaseResponse;
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
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<News> getAllNews() {
		List<News> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from News n WHERE n.language.id = ?");
			int num = 1;
			query.setParameter(0, num);
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get the users from UserEntity based on the page no");
			e.printStackTrace();
		}
		for(News newss : list){
			System.out.println(newss.getNewsId());
			System.out.println(newss.getLanguage());
		}
		return list;
	}
	
	@Transactional
	public List<News> getNewsByLanguage(int newsLanguage) {
		List<News> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from News n WHERE n.language.id = ?");
			query.setParameter(0, newsLanguage);
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get the users from UserEntity based on the page no");
			e.printStackTrace();
		}
		for(News newss : list){
			System.out.println(newss.getNewsId());
			System.out.println(newss.getLanguage());
		}
		return list;
	}

	public News getNewsById(int newsId) {
		
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
	
	@Transactional
 	public List<Language> getAllLanguage() {
		List<Language> languageList = null;
		try{
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from Language");
			languageList = query.list();
		}catch(Exception e){
			System.out.println(e);
		}
		return languageList;
	}
	
	public void addLanguage(Language language) {
		try {
			if (null != language) {
				this.sessionFactory.getCurrentSession().save(language);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
 	}
	
	@Transactional
	public List<MenuBar> getMenuItems(int language) {
		List<MenuBar> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from MenuBar n WHERE n.language.id = ?");
			query.setParameter(0, language);
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get data");
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<MenuBar> getAllMenu() {
		List<MenuBar> menuList = null;
		try{
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from MenuBar");
			menuList = query.list();
		}catch(Exception e){
			System.out.println(e);
		}
		return menuList;
	}

	public void saveAboutUsContent(AboutUs aboutuscontent) {
		try{
			Session session = sessionFactory.getCurrentSession();
	        session.save(aboutuscontent);
		}catch(Exception e){
			
			
		}
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<AboutUs> getAboutUsContentByLanguage(int language) {
		List<AboutUs> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from AboutUs n WHERE n.language.id = ?");
			query.setParameter(0, language);
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get data");
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Services> getServiceContentByLanguage(int language) {
		List<Services> list = null;
		try {
			Query query = (Query) this.sessionFactory.getCurrentSession().createQuery("from Services n WHERE n.language.id = ?");
			query.setParameter(0, language);
			list = query.list();
		} catch (HibernateException e) {
			System.out.println("Exception while trying to get data");
			e.printStackTrace();
		}
		return list;
	}
	
	

}
