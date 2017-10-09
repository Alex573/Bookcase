USE `test`;

DROP TABLE IF EXISTS `test`.`book`;
CREATE TABLE `test`.`book` (
  `id` INT UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `description` VARCHAR(255) NULL,
  `author` VARCHAR(100) NULL,
  `isbn` VARCHAR(20) NULL,
  `printYear` INT NULL,
  `readAlready` TINYINT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8
COMMENT = 'book_table';


INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Повести Белкина ','В 1830 году Россию захватила вспышка холеры. Дорога к Москве была перекрыта из-за карантина,','Пушкин','689-5-91045-983-4','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Евгений Онегин','«Евгений Онегин»  самое известное и самое значительное произведение А. С. Пушкина, вершина ','Пушкин','690-5-91045-983-4','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Герой нашего времени','В романе Лермонтова соединены пять историй о молодом человеке, которого автор назвал ','Лермонтов','978-5-9691-1601-6','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Маскарад','"Маскарад" - драма Михаила Юрьевича Лермонтова в четырёх действиях. Дворянин Евгений Арбенин ','Лермонтов','979-5-9691-1601-7','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Демон.Сборник','В книгу великого русского поэта Михаила Юрьевича Лермонтова включены поэмы и повести ','Лермонтов','980-5-9691-1601-8','2012','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Сказка о царе Салтане','Дорогие читатели! Перед вами одна из сказок Александра Сергеевича Пушкина ','Пушкин','691-5-91045-983-4','2016','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Пиковая дама','Успех повести "Пиковая дама" начался с первого издания в 1834 году в журнале "Библиотека ','Пушкин','692-5-91045-983-4','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Преступление и наказание ','Роман «Преступление и наказание» — образец психологической и ','Достоевский','990-5-9691-1601-3','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Бесы','«Одно отрицание, без всякого великодушия и безо всякой силы» — произносит главный роман Николай ','Достоевский','991-5-9691-1601-6 ','2017','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Мцыри','В книге представлены стихотворения и поэма "Мцыри".','Лермонтов','981-5-9691-1601-9','2007','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Бородино: Стихотворения и поэма ','В сборник вошли избранные стихотворения великого русского поэта 18 ','Лермонтов','982-5-9691-1601-10','2004','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Княгиня Лиговская ','Роман «Княгиня Лиговская» объединил в себе традиционные черты «светской повести» ','Лермонтов','983-5-9691-1601-6','2011','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Вадим','Творческое наследие гениального русского поэта Михаила Юрьевича Лермонтова (1814-1841','Лермонтов','984-5-9691-1601-6','2011','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Барышня-крестьянка ','Барышня-крестьянка ','Пушкин','693-5-91045-983-4','2002','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Капитанская дочка ','В этот сборник вошла избранная проза Пушкина. "Повести Белкина" – цикл из пяти повестей.','Пушкин','694-5-91045-983-4','2015','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Сказка о мёртвой царевне и о семи богатырях ','Сказки Александра Сергеевича Пушкина всем знакомы и всеми ','Пушкин','695-5-91045-983-4','2016','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Братья Карамазовы ','"Братья Карамазовы" — итог творчества писателя, самое сложное, многоуровневое и ','Достоевский','987-5-9691-1601-8','2015','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Идиот','Роман «Идиот» занимает в творчестве Ф.М. Достоевского особое место. Здесь он впервые ярко и ','Достоевский','988-5-9691-1601-1','2016','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Сказка о рыбаке и рыбке. Сказка о золотом петушке ','В книгу вошли две известные сказки великого русского','Пушкин','696-5-91045-983-4','2004','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Сказка о Попе и о работнике его Балде ','Что вас ждет под обложкой: Уникальное издание чудесной сказки ','Пушкин','697-5-91045-983-4','2015','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Сказка о рыбаке и рыбке ','Дорогие читатели! Перед вами одна из сказок Александра Сергеевича Пушкина - ','Пушкин','698-5-91045-983-4','2016','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Ашик-Кериб ','Набросок сюжета восточной сказки, сделанный Михаилом Юрьевичем Лермонтовым в 1837 году, ','Лермонтов','985-5-9691-1601-6','2012','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Кавказский пленник ','Творческое наследие гениального русского поэта Михаила Юрьевича Лермонтова (1814-1841)','Лермонтов','986-5-9691-1601-6','2011','0');
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Униженные и оскорбленные ','Роман "Униженные и оскорбленные" (1861) создавался Ф. М. Достоевским в эпоху ','Достоевский','989-5-9691-1601-2','2016','0');
