package program.bookcase.service;

/*
*Lex
*
*07.10.2017
*18:02
*/

import program.bookcase.dao.BookDao;
import program.bookcase.model.Books;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    @Transactional
    public void addBook(Books book) {
        bookDao.addBook(book);
    }

    @Override
    @Transactional
    public void updateBook(Books book) {
        bookDao.updateBook(book);
    }

    @Override
    @Transactional
    public void delBook(int id) {
        bookDao.delBook(id);
    }

    @Override
    @Transactional
    public void readBook(Books book) {
        bookDao.readBook(book);
    }

    @Override
    @Transactional
    public List<Books> searchBookByTitle(String title) {
        return bookDao.searchBookByTitle(title);
    }

    @Override
    @Transactional
    public List<Books> searchBookByAuthor(String author) { return bookDao.searchBookByAuthor(author); }

    @Override
    @Transactional
    public List<Books> searchBookByYear(int printYear) {
        return bookDao.searchBookByYear(printYear);
    }

    @Override
    @Transactional
    public List<Books> searchBookByRead(boolean readAlready) {
        return bookDao.searchBookByRead(readAlready);
    }

    @Override
    @Transactional
    public List<Books> listBooks() {
        return bookDao.listBooks();
    }

    @Override
    @Transactional
    public Books getBookById(int id) {
        return bookDao.getBookById(id);
    }
}
