package program.bookcase.service;

import program.bookcase.model.Books;

import java.util.List;

/*
*Lex
*
*07.10.2017
*18:01
*/
public interface BookService {

    public void addBook(Books book);

    public void updateBook(Books book);

    public void delBook(int id);

    public void readBook(Books book);

    public List<Books> searchBookByTitle(String title);

    public List<Books> searchBookByAuthor(String author);

    public List<Books> searchBookByYear(int printYear);

    public List<Books> searchBookByRead(boolean readAlready);

    public List<Books> listBooks();

    public Books getBookById(int id);
}
