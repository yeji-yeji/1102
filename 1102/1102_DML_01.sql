create database study_db;

show database;

use study_db;

create table book
(bookid INT PRIMARY KEY AUTO_INCREMENT,
bookname VARCHAR(32) NOT NULL,
publisher VARCHAR(32) NOT NULL,
price INT);

create table orders
(orderid INT PRIMARY KEY AUTO_INCREMENT,
custid INT, 
bookid INT,
saleprice INT,
irderdate DATE);

create table customer
(custid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
address VARCHAR(50) NOT NULL,
phone VARCHAR(13) NOT NULL);

INSERT INTO book(bookname,publisher,price) VALUES("축구의 역사","굿스포츠",7000)
INSERT INTO book(bookname,publisher,price) VALUES("축구아는 여자","나무수",13000)
INSERT INTO book(bookname,publisher,price) VALUES("축구의 이해","대한 미디어",22000)
INSERT INTO book(bookname,publisher,price) VALUES("골프 바이블","대한 미디어",35000)
INSERT INTO book(bookname,publisher,price) VALUES("피겨 교본","굿스포츠",8000)
INSERT INTO book(bookname,publisher,price) VALUES("역도 단계별 기술","굿스포츠",6000)
INSERT INTO book(bookname,publisher,price) VALUES("야구의 추억","이상미디어",20000)
INSERT INTO book(bookname,publisher,price) VALUES("야구를 부탁해","이상미디어",13000)
INSERT INTO book(bookname,publisher,price) VALUES("올림픽 이야기","상성당",7500)
INSERT INTO book(bookname,publisher,price) VALUES("Olympic Champions","Pearson",13000)

select*
from orders;

/* customer 테이블에서 김씨만 출력하는 쿼리를 완성하세요 */
select *
from customer
where name like "김%";

select *
from book
order by bookname;

select sum(saleprice) as total
from orders;








