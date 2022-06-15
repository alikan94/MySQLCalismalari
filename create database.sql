create database batch59;
-- create database: database olustururuz

-- "--" not eklememizi sağlar 

/*
javadaki 
*/

use batch59;
-- birden fazla database var ise use komutu ile calisacagimiz database'i seceriz

-- TABLO OLUSTURMA
create table student 
(
   id varchar(4),
   name varchar(45),
   age int,
   no int unsigned not null auto_increment primary key
);

-- VERİ GİRİSİ

insert into student values('1000','Ali Kan', '28',101);
insert into student values('1001','Ahmet Can', '28',102);
insert into student values('1002','Abuziddin Yan', '28',103);
insert into student values('1003','Ayse Tan', '28',104);

/*
veri girisi yukarıdaki gibi yapilir
*/

select * from student;
-- student tablosundaki her seyi getirir 

select name from student;
-- student tablosundaki name getirir 

select id from student;
-- student tablosundaki id getirir 

select age from student;
-- student tablosundaki age getirir 

select id, name from student;
-- student tablosundaki id ve name getirir 

drop table student;
-- student tablosunu siler


