package program.bookcase.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import program.bookcase.model.Books;
import java.util.List;

/*
*Lex
*
*07.10.2017
*17:25
*/
@Repository
public class BookDaoImpl implements BookDao {



    private SessionFactory sessionFactory;

    private static Logger logger  = LoggerFactory.getLogger(BookDaoImpl.class);
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Book " + book.getTitle() + " create!");

    }

    @Override
    public void updateBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Book " + book.getTitle() + " update!");
    }

    @Override
    public void delBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Books book = (Books) session.load(Books.class, new Integer(id));
        if (book != null) {
            session.delete(book);
        }
        logger.info("Book " + book.getTitle() + " delete!");
    }

    @Override
    public void readBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByTitle(String title) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books b where b.title = :title").setParameter("title", title).list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByAuthor(String author) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books b where b.author = :author").setParameter("author", author).list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByYear(int printYear) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books b where b.printYear = :printYear").setParameter("printYear", printYear).list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByRead(boolean readAlready) {
        Session session = this.sessionFactory.getCurrentSession();
        return (readAlready) ? session.createQuery("from Books b where b.readAlready = true").list() : session.createQuery("from Books b where b.readAlready = false").list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> listBooks() {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books").list();
    }

    @Override
    public Books getBookById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Books bookById = (Books) session.load(Books.class, new Integer(id));
        logger.info("Book: " + bookById);
        return bookById;
    }
}
