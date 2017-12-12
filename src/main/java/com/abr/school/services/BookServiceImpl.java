package com.abr.school.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abr.school.dao.BookDao;
import com.manytoone.test.Author;

@Service("bookService")
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;	
	
	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public void saveUser(Author author) {
		System.out.println("==============BookServiceImpl=============");
		bookDao.saveUser(author);
		
	}

	@Override
	public List<Author> getAuthors() {
		return bookDao.getAuthors();
	}

}
