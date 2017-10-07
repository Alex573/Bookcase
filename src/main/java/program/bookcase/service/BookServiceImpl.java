package program.bookcase.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import program.bookcase.dao.BookDao;
import program.bookcase.model.Books;

import java.util.List;

/*
*Lex
*
*07.10.2017
*18:02
*/
@Service
public class BookServiceImpl implements BookService {
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    @Transactional
    public void addBook(Books book) {
        this.bookDao.addBook(book);
    }

    @Override
    @Transactional
    public void updateBook(Books book) {
        this.bookDao.updateBook(book);
    }

    @Override
    @Transactional
    public void removeBook(int id) {
        this.bookDao.removeBook(id);
    }

    @Override
    @Transactional
    public void readBook(Books book) {
        this.bookDao.readBook(book);
    }

    @Override
    @Transactional
    public List<Books> searchBookByName(String title) {
        return this.bookDao.searchBookByName(title);
    }

    @Override
    @Transactional
    public List<Books> searchBookByYear(int printYear) {
        return this.bookDao.searchBookByYear(printYear);
    }

    @Override
    @Transactional
    public List<Books> searchBookByRead(boolean readAlready) {
        return this.bookDao.searchBookByRead(readAlready);
    }

    @Override
    @Transactional
    public List<Books> listBooks() {
        return this.bookDao.listBooks();
    }

    @Override
    @Transactional
    public Books getBookById(int id) {
        return this.bookDao.getBookById(id);
    }
}
