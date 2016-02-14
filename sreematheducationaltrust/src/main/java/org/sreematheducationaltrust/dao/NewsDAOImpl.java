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
import org.sreematheducationaltrust.domain.News;

@Service
public class NewsDAOImpl implements NewsDAO {

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

}
