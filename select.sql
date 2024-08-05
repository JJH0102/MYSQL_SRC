-- 질의 3-1
SELECT bookname, price
FROM Book;

-- 질의 3-3
SELECT DISTINCT publisher
FROM Book;

-- 질의 3-4
SELECT *
FROM Book
WHERE price < 20000;

-- 질의 3-5
SELECT *
FROM Book
WHERE price BETWEEN 10000 AND 20000;

-- 질의 3-6
SELECT *
FROM Book
WHERE publisher IN ('굿스포츠', '대한미디어');

-- 질의 3-7
SELECT bookname, publisher
FROM Book
WHERE bookname LIKE '축구의 역사';

-- 질의 3-8
SELECT bookname, publisher
FROM Book
WHERE bookname LIKE '%축구%';

-- 질의 3-9
SELECT *
FROM Book
WHERE bookname LIKE '_구%';

-- 질의 3-14
SELECT *
FROM Book
WHERE price > 10000
ORDER BY price DESC, publisher ASC;

-- 질의 3-15
SELECT SUM(saleprice) AS '총 매출'
FROM Orders;

SELECT AVG(saleprice) AS '총 매출 평균'
FROM Orders;

-- 질의 3-19
SELECT custid, COUNT(*) AS '도서 수량', SUM(saleprice) AS '총액'
FROM Orders
GROUP BY custid;

SELECT custid, sum(saleprice) AS '총액', count(*) AS '도서 수량', max(orderdate) AS '최근 거래일자'
FROM Orders
GROUP BY custid;

-- 연습문제

-- 01-(1)
SELECT bookname
FROM Book
WHERE bookid = 1;

-- 01-(3)
SELECT SUM(saleprice) AS '총 구매액'
FROM Orders
WHERE custid = 1;

-- 01-(4)
SELECT count(*) AS '구매한 도서 수'
FROM Orders
WHERE custid = 1;