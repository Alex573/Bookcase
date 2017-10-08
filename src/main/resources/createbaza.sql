USE test;

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `print_year` int(11) NOT NULL,
  `read_already` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Повести Белкина ','В 1830 году Россию захватила вспышка холеры. Дорога к Москве была перекрыта из-за карантина,','Пушкин','689-5-91045-983-4','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Евгений Онегин','«Евгений Онегин»  самое известное и самое значительное произведение А. С. Пушкина, вершина ','Пушкин','690-5-91045-983-4','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Герой нашего времени','В романе Лермонтова соединены пять историй о молодом человеке, которого автор назвал ','Лермонтов','978-5-9691-1601-6','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Маскарад','"Маскарад" - драма Михаила Юрьевича Лермонтова в четырёх действиях. Дворянин Евгений Арбенин ','Лермонтов','979-5-9691-1601-7','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Демон.Сборник','В книгу великого русского поэта Михаила Юрьевича Лермонтова включены поэмы и повести ','Лермонтов','980-5-9691-1601-8','2012','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Сказка о царе Салтане','Дорогие читатели! Перед вами одна из сказок Александра Сергеевича Пушкина ','Пушкин','691-5-91045-983-4','2016','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Пиковая дама','Успех повести "Пиковая дама" начался с первого издания в 1834 году в журнале "Библиотека ','Пушкин','692-5-91045-983-4','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Преступление и наказание ','Роман «Преступление и наказание» — образец психологической и ','Достоевский','990-5-9691-1601-3','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Бесы','«Одно отрицание, без всякого великодушия и безо всякой силы» — произносит главный роман Николай ','Достоевский','991-5-9691-1601-6 ','2017','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Мцыри','В книге представлены стихотворения и поэма "Мцыри".','Лермонтов','981-5-9691-1601-9','2007','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Бородино: Стихотворения и поэма ','В сборник вошли избранные стихотворения великого русского поэта 18 ','Лермонтов','982-5-9691-1601-10','2004','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Княгиня Лиговская ','Роман «Княгиня Лиговская» объединил в себе традиционные черты «светской повести» ','Лермонтов','983-5-9691-1601-6','2011','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Вадим','Творческое наследие гениального русского поэта Михаила Юрьевича Лермонтова (1814-1841','Лермонтов','984-5-9691-1601-6','2011','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Барышня-крестьянка ','Барышня-крестьянка ','Пушкин','693-5-91045-983-4','2002','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Капитанская дочка ','В этот сборник вошла избранная проза Пушкина. "Повести Белкина" – цикл из пяти повестей.','Пушкин','694-5-91045-983-4','2015','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Сказка о мёртвой царевне и о семи богатырях ','Сказки Александра Сергеевича Пушкина всем знакомы и всеми ','Пушкин','695-5-91045-983-4','2016','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Братья Карамазовы ','"Братья Карамазовы" — итог творчества писателя, самое сложное, многоуровневое и ','Достоевский','987-5-9691-1601-8','2015','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Идиот','Роман «Идиот» занимает в творчестве Ф.М. Достоевского особое место. Здесь он впервые ярко и ','Достоевский','988-5-9691-1601-1','2016','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Сказка о рыбаке и рыбке. Сказка о золотом петушке ','В книгу вошли две известные сказки великого русского','Пушкин','696-5-91045-983-4','2004','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Сказка о Попе и о работнике его Балде ','Что вас ждет под обложкой: Уникальное издание чудесной сказки ','Пушкин','697-5-91045-983-4','2015','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Сказка о рыбаке и рыбке ','Дорогие читатели! Перед вами одна из сказок Александра Сергеевича Пушкина - ','Пушкин','698-5-91045-983-4','2016','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Ашик-Кериб ','Набросок сюжета восточной сказки, сделанный Михаилом Юрьевичем Лермонтовым в 1837 году, ','Лермонтов','985-5-9691-1601-6','2012','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Кавказский пленник ','Творческое наследие гениального русского поэта Михаила Юрьевича Лермонтова (1814-1841)','Лермонтов','986-5-9691-1601-6','2011','0');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`, `print_year`, `read_already`) VALUES ('Униженные и оскорбленные ','Роман "Униженные и оскорбленные" (1861) создавался Ф. М. Достоевским в эпоху ','Достоевский','989-5-9691-1601-2','2016','0');
