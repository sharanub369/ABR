package com.manytoone.test;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GeneratorType;


@Entity
@Table(name="tb_author",catalog="db_abr",uniqueConstraints={@UniqueConstraint(columnNames="AUTH_ID")})
public class Author {

	private int authID;
	private String authName;
	private String authCity;
	private String authMobile;
	
	private Set<Book> books=new HashSet<Book>(0);

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="AUTH_ID")
	public int getAuthID() {
		return authID;
	}

	public void setAuthID(int authID) {
		this.authID = authID;
	}

	
	@Column(name="AUTH_NAME")
	public String getAuthName() {
		return authName;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}
	
	@Column(name="AUTH_CITY")
	public String getAuthCity() {
		return authCity;
	}

	public void setAuthCity(String authCity) {
		this.authCity = authCity;
	}

	@Column(name="AUTH_MOBILE")
	public String getAuthMobile() {
		return authMobile;
	}

	public void setAuthMobile(String authMobile) {
		this.authMobile = authMobile;
	}

	@OneToMany(fetch=FetchType.EAGER,mappedBy="author")
	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}
	
	
}
