package program.bookcase.dao;

import program.bookcase.model.Books;

import java.util.List;

/*
*Lex
*
*07.10.2017
*17:25
*/
public interface BookDao {
    //Добавление книги
    public void addBook(Books book);

    //Изменение
    public void updateBook(Books book);

    //Удаление
    public void removeBook(Books book);

    // Метод чтения книги
    public void readBook(Books book);

    // Метод поиска книги по названию
    public List<Books> searchBookByName(String title);

    // Метод поиска книги по году
    public List<Books> searchBookByYear(int printYear);

    // Метод поиска книги по прочтению
    public List<Books> searchBookByRead(boolean readAlready);

    // Метод вывода списка книг
    public List<Books> listBooks();

    // Получение книги по id
    public Books getBookById(int id);
}
