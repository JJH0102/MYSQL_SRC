SELECT *
FROM Customer, Orders;

-- 질의 3-21
SELECT *
FROM Customer, Orders
WHERE Customer.custid = Orders.custid
ORDER BY Orders.orderid;

-- 질의 3-25
SELECT Customer.name, Book.bookname
FROM Customer, Orders, Book
WHERE Customer.custid = Orders.custid AND Orders.bookid = Book.bookid;

-- 예제 문제

-- 각각의 주문한 번호와 책의 이름 출력
SELECT Orders.orderid, Book.bookname
FROM Book, Orders
WHERE Orders.bookid = Book.bookid;

