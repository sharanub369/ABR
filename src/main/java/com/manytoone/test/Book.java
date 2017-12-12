package com.manytoone.test;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="tb_book", catalog="db_abr",uniqueConstraints={@UniqueConstraint(columnNames="BOOK_ID")})
public class Book {

	
	private int bookId;
	private String bookName;
	private String releaseDate;
	
	private Author author;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="BOOK_ID")
	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	@Column(name="BOOK_NAME")
	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	@Column(name="BOOK_RELEASE_DATE")
	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	
	@ManyToOne(fetch=FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name="AUTH_ID")
	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
	
	
}
