package com.abr.school.services;

import java.util.List;

import com.manytoone.test.Author;

public interface BookService {

	public void saveUser(Author author);
	public List<Author> getAuthors();
}
