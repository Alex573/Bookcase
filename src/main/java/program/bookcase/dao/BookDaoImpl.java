package program.bookcase.dao;


import org.hibernate.Session;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import program.bookcase.model.Books;


import java.util.ArrayList;
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

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);

    }

    @Override
    public void updateBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
    }

    @Override
    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Books book = (Books) session.load(Books.class, new Integer(id));
        if (book != null) {
            session.delete(book);
        }
    }

    @Override
    public void readBook(Books book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByName(String title) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books b where b.title = :title").setParameter("title", title).list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Books> searchBookByYear(int printYear) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.createQuery("from Books b where b.printYear >= :printYear").setParameter("printYear", printYear).list();
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
        return bookById;
    }
}
