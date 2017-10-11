package program.bookcase.controller;

/*
*Lex
*
*07.10.2017
*18:49
*/

import program.bookcase.model.Books;
import program.bookcase.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
public class BookController {



    @Autowired
    @Qualifier("bookService")
    private BookService bookService;

    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(@RequestParam(value = "page", required = false) Integer page, Model model) {

        List<Books> book = bookService.listBooks();
        PagedListHolder<Books> pagedListHolder = new PagedListHolder<Books>(book);
        pagedListHolder.setPageSize(10);
        model.addAttribute("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        model.addAttribute("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            model.addAttribute("book", new Books());
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            model.addAttribute("book", new Books());
            model.addAttribute("listBooks", pagedListHolder.getPageList());
        }

        return "books";

    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Books books) {
        if (books.getId() == 0) {
            bookService.addBook(books);
        } else {
            bookService.updateBook(books);
        }
        return "redirect:/";
    }

    @RequestMapping("/del/{id}")
    public String delBook(@PathVariable("id") int id) {
        bookService.delBook(id);
        return "redirect:/";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", bookService.getBookById(id));
        model.addAttribute("listBooks", bookService.listBooks());
        return "books";
    }

    @RequestMapping("/search/title")
    public String searchBookByTitle(@RequestParam(value = "title") String title, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByTitle(title));
        return "books";
    }
    @RequestMapping("/search/author")
    public String searchBookByAuthor(@RequestParam(value = "author") String author, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByAuthor(author));
        return "books";
    }

    @RequestMapping("/search/printYear")
    public String searchBookByYear(@RequestParam(value = "printYear") int printYear, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByYear(printYear));
        return "books";
    }

    @RequestMapping("/search/readAlready")
    public String searchBookByRead(@RequestParam(value = "readAlready") boolean readAlready, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByRead(readAlready));
        return "books";
    }



}
