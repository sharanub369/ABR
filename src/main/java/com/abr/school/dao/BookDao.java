package com.abr.school.dao;

import java.util.List;

import com.manytoone.test.Author;

public interface BookDao {
	public void saveUser(Author author);
	public List<Author> getAuthors();
}
