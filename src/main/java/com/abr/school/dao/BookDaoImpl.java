package com.abr.school.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.manytoone.test.Author;
import com.manytoone.test.Book;

@Repository
@Transactional
public class BookDaoImpl implements BookDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		
	}

	@Override
	public void saveUser(Author author) {
		Session session=sessionFactory.getCurrentSession();
		session.save(author);
		
		Book book=(new ArrayList<>(author.getBooks()).get(0));
		session.save(book);
		
	}

	@Override
	public List<Author> getAuthors() {
		
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Author");
		List<Author> authors=query.list();
		return authors;
	}

}
