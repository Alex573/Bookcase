# Bookcase
https://bookcase-vas.herokuapp.com
CRUB Book work and  with cyrillic alphabet
https://bookcase-vas.herokuapp.com
CRUD (create, read, update, delete).
You have only 1 table book. It stores a list of books (for example, on a bookshelf). Books on the shelf can be added (create), take a look (read), replace with a new release (update), remove (delete).
The data that should be in the table:
• id - the identifier of the book in the database;
• title - the name of the book. You can use the VARCHAR type (100);
• description - a brief description of what the book is about. You can use the VARCHAR type (255);
• author - name and surname of the author. You can use the VARCHAR type (100);
• isbn - ISBN books. You can use the VARCHAR type (20);
• printYear - in which year the book is printed (INT);
• readAlready - whether someone read this book. This is a Boolean field.
Business requirement: when editing, there may be 2 options for behavior:
• The book is read, and only the readAlready field is changed, and only if it was false. The value of the field must be true.
• The book was replaced by a new edition. In this case, it should be possible to change the title, description, isbn, printYear. And the readAlready field must be set to false. The author field must be unchanged from the moment the book was created.
It is necessary to implement a standard CRUD application, which displays a list of all the books in the database (with a paging of 10 books per page). With the ability to delete, edit, add new ones, and search for existing ones.
On which field to look for - everyone decides for himself. You can confine yourself to the title field, but agree, it's convenient to look at books that have not yet been read, or that have come out after 2016.