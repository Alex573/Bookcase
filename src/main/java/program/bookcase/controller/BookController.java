package program.bookcase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import program.bookcase.model.Books;
import program.bookcase.service.BookService;

import java.util.List;


/*
*Lex
*
*07.10.2017
*18:49
*/
@Controller
public class BookController {
    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
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
    public String createBook(@ModelAttribute("book") Books books) {
        if (books.getId() == 0) {
            bookService.addBook(books);
        } else {
            bookService.updateBook(books);
        }
        return "redirect:/";
    }

    @RequestMapping("/delete/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        bookService.removeBook(id);
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
        model.addAttribute("listBooks", bookService.searchBookByName(title));
        return "books";
    }

    @RequestMapping("/search/year")
    public String searchBookByYear(@RequestParam(value = "year") int year,
                                   @RequestParam(value = "page", required = false) Integer page, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByYear(year));
        return "books";
    }

    @RequestMapping("/search/read")
    public String searchBookByRead(@RequestParam(value = "read") boolean read, Model model) {
        model.addAttribute("book", new Books());
        model.addAttribute("listBooks", bookService.searchBookByRead(read));
        return "books";
    }
}
