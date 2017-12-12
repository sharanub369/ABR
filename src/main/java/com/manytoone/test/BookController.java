package com.manytoone.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abr.school.services.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@RequestMapping(value = "/saveAuthor")
	@ResponseBody
	public String saveAuthor() {
		Author author = new Author();
		author.setAuthID(1);
		author.setAuthName("sharan");
		author.setAuthCity("Bengaluru");
		author.setAuthMobile("9919850180");
		/* bookService.saveUser(author); */

		Book book = new Book();
		book.setBookId(1);
		book.setBookName("My Life");
		book.setReleaseDate("10/12/2017");
		book.setAuthor(author);

		author.getBooks().add(book);

		bookService.saveUser(author);

		return "success";
	}

	@RequestMapping(value = "/getAuthors")
	@ResponseBody
	public String getAuthors() {
		List<Author> authors = bookService.getAuthors();
		System.out.println("=======authors===" + authors.size());
		for (Object obj : authors) {
			Author author = (Author) obj;
			System.out.println("========Author===" + author.getAuthID() + "====" + author.getAuthName());

			if (author.getBooks() != null && author.getBooks().size() > 0) {
				Set<Book> books = author.getBooks();
				List<Book> booksList=new ArrayList<Book>(books);
				for(Object obj1:booksList)
				{
					Book book=(Book)obj1;
					System.out.println("===Book==="+book.getBookId()+"==="+book.getBookName()+"==Author=="+author.getAuthID());
				}
			}
		}
		return " ";
	}
}
