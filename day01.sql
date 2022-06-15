create database batch59;

-- create database: database olustururuz

/*
javadaki 
*/

use batch59;
-- birden fazla database var ise use komutu ile calisacagimiz database'i seceriz

-- TABLO OLUSTURMA
create table student 
(
   -- no int unsigned not null auto_increment primary key,
   id varchar(4),
   name varchar(45),
   age int
);

-- VERİ GİRİSİ

insert into student values('1000','Ali Kan', '28');
insert into student values('1001','Ahmet Can', '28');
insert into student values('1002','Abuziddin Yan', '28');
insert into student values('1003','Ayse Tan', '28');
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


