CREATE TABLE NewBook
(
	bookid	INTEGER,
    bookname VARCHAR(20),
    publisher VARCHAR(20),
    price	INTEGER
);

DROP TABLE NewBook;

CREATE TABLE NewOrders
(
  `orderid` INT NULL,
  `custid` INT NOT NULL,
  `bookid` INT NOT NULL,
  `saleprice` INT NULL,
  `orderdate` DATE NULL,
  PRIMARY KEY (`orderid`),
  FOREIGN KEY(custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE
);

-- 질의 3-37
ALTER TABLE NewBook ADD isbn VARCHAR(13);

ALTER TABLE NewBook ADD isbn VARCHAR(13);

-- 질의 3-45
INSERT INTO Book(bookid, bookname, publisher) VALUES (11, '스포츠 의학', '한솔의학서적');
INSERT INTO Book(bookid, bookname, publisher) VALUES (12, '스포츠 의학', '한솔의학서적');
INSERT INTO Book(bookid, bookname, publisher) VALUES (13, '스포츠 의학', '한솔의학서적');
INSERT INTO Book(bookid, bookname, publisher) VALUES (14, '스포츠 의학', '한솔의학서적');

DELETE FROM Book
WHERE bookid = 11;