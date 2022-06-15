use batch59;

create table ogrenciler
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

-- ctrl + f ile find and restore yapabilirsin

insert into ogrenciler values('120', 'Ali Can', 'Ankara', '75');
insert into ogrenciler values('121', 'Veli Mert', 'Trabzon', '85');
insert into ogrenciler values('122', 'Ayşe Tan', 'Bursa', '65');
insert into ogrenciler values('123', 'Derya Soylu', 'Istanbul', '95');
insert into ogrenciler values('124', 'Yavuz Bal', 'Ankara', '80');

select * from ogrenciler;

-- SELECT - WHERE
/*
Verileri SELECT komutu ile veritabanından çekerken filtreleme yapmak için
SELECT ile birlikte WHERE komutu kullanılır.
SELECT sutun1, sutun2 ....
FROM tablo adı WHERE koşul
*/

-- Soru01: sınav notu 80den buyuk olan ogrencilerin bilgilerini listele 
select * from ogrenciler where sinav_notu>80;

-- SORU02: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
select * from ogrenciler where adres='Ankara';
	
-- SORU03: id'si 124 olan öğrencilerin tüm bilgilerini listele
select * from ogrenciler where id='124';

-- SORU04: id'si 124 olan öğrencilerin isim bilgilerini listele
select isim from ogrenciler where id='124';

-- SORU05: Adresi Ankara olan öğrencilerin isim bilgilerini listele
select isim, sinav_notu from ogrenciler where adres='Ankara';

create table personel
(
id char(4),
isim varchar(30),
maas int,
cinsiyet char(1),
yas int,
dogum_yeri varchar(30),
tuttugu_takim varchar(40)
);

insert into personel values('1200', 'Ali Can', '10000', 'E','45','Safranbolu','Besiktas');
insert into personel values('1201', 'Veli Mert', '15000', 'E','25','Bafra','Fenerbahce');
insert into personel values('1202', 'Ayşe Tan', '4500', 'K','38','Carsamba','Galatasaray');
insert into personel values('1203', 'Derya Soylu', '7800', 'K','18','Antalya','Antalyaspor');
insert into personel values('1204', 'Yavuz Bal', '8900', 'E','28','Selanik','Galatasaray');
insert into personel values('1205', 'Ahmet Dal', '17000', 'E','33','Istanbul','Besiktas');
insert into personel values('1206', 'Melisa Cal', '9900', 'E','39','Ankara','Sekerspor');

-- BETWEEN
/*
iki veri arasindaki verileri yazdirmak icin kullanilir
*/


-- SORU05: id'si 1002 ile 1005 arasında olan personel bilgilerini listele
select * from personel;
select * from personel where id between 1202 and 1205;

-- SORU06: Derya Soylu ile Yavuz Bal arasındaki personel bilgilerini listele
select * from personel where isim between 'Derya Soylu' and  'Yavuz Bal';

/*
SELECT - LIKE
LIKE: Sorgulama yaparken belirli patternleri kullanabilmezi sağlar
SELECT sutun1, sutun2, ...
FROM tablo_adı WHERE sutünN LIKE pattern
PATTERN İÇİN
% -> 0 veya daha fazla karakteri belirtir.
_ -> Tek bir karakteri belirtir.
*/

-- SORU07: id'si 1001,1002 ve 1004 olan prsonel bilgilerini listele
select * from personel where id in(1201,1202,1204);
-- SORU09: İsmi A harfi ile başlayan personeli listele
select * from personel where isim like 'A%';
-- SORU10: İsmi N harfi ile biten personeli listele
select * from personel where isim like '%n';
-- SORU11: İsminin 2. harfi E olan personeli listeleyin
select * from personel where isim like '_E%';
-- SORU12: İsminin 2. harfi E olup diğer harflerinde Y olan personel
select * from personel where isim like '_E%y%';
-- SORU13: İsminde A harfi olmayan personeli listeleyin
select * from personel where isim not like '%a%';
-- SORU14: Maaşı 5 haneli olan personeli listeleyin
select * from personel where maas like '_____';
-- SORU15: 1. harfi A ve 7. harfi A olan personeli listeleyin
select * from personel where isim like 'A_____A%';

/* ====================== SELECT - REGEXP_LIKE ================================
    Daha karmaşık pattern ile sorgulama işlemi için REGEXP_LIKE kullanılabilir.
     -- 'c' => case-sentisitive demektir
     -- 'i' => incase-sentisitive demektir ve default incase-sensitive aktiftir..
    Syntax:
    --------
    REGEXP_LIKE(sutun_adı, 'pattern[] ', 'c' ] )
/* ========================================================================== */
use batch59;
CREATE TABLE kelimeler
(
id int UNIQUE,
kelime VARCHAR(50) NOT NULL,
harf_sayisi int
);
    INSERT INTO kelimeler VALUES (1001, 'hot', 3);
    INSERT INTO kelimeler VALUES (1002, 'hat', 3);
    INSERT INTO kelimeler VALUES (1003, 'hit', 3);
    INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
    INSERT INTO kelimeler VALUES (1005, 'hct', 3);
    INSERT INTO kelimeler VALUES (1006, 'adem', 4);
    INSERT INTO kelimeler VALUES (1007, 'selim', 5);
    INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
    INSERT INTO kelimeler VALUES (1009, 'hip', 3);
    INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
    INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
    INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
    INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
    INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
    INSERT INTO kelimeler VALUES (1015, 'hooooot', 7);
    INSERT INTO kelimeler VALUES (1016, 'oohiot', 6);
    INSERT INTO kelimeler VALUES (1017, 'kooomot', 7);
    INSERT INTO kelimeler VALUES (1018, 'hoomoot', 7);
    INSERT INTO kelimeler VALUES (1019, 'hoomoo', 6);
    INSERT INTO kelimeler VALUES (1020, 'him', 3);
    INSERT INTO kelimeler VALUES (1021, 'hitmii', 6);
select * from kelimeler;
drop table kelimeler;
-- SORU16: İçerisinde 'ot' veya 'at' bulunan kelimeleri küçük harfe dikkat ederek listeleyiniz
-- VEYA işlemi için | karakteri kullanılır.
select * from kelimeler where regexp_like (kelime , 'ot|at' , 'c');
-- SORU17: İçerisinde 'ot' veya 'at' bulunan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
select * from kelimeler where regexp_like (kelime , 'ot|at'); -- i kullanmamıza gerek yok
-- SORU18: 'ho' veya 'hi' ile başlayan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
-- Başlangıcı göstermek için ^ karakteri kullanılır.
select * from kelimeler where regexp_like (kelime, '^ho|hi');
-- SORU19: Sonu 't' veya 'm' ile bitenleri büyük-küçük harfe dikkat etmeksizin listeleyeniz.
-- Bitişi göstermek için $ karakteri kullanılır.
select * from kelimeler where regexp_like (kelime,'$t|m');
-- SORU20: h ile başlayıp t ile biten 3 harfli kelimeleri (h ile t küçük harfli olanlari) listeleyeniz
select * from kelimeler where regexp_like (kelime,'h[a-zA-Z0-9]t','c');
-- 3 HARF -> 'h[]t' / h-> 1. harf / []-> 2. harf / t-> 3. harf

-- SORU21: h ile başlayıp t ile biten 4 harfli kelimeleri (h ile t küçük harfli olanlari) listeleyeniz
select * from kelimeler where regexp_like (kelime,'^h[a-zA-Z0-9][a-zA-Z0-9]t');

-- SORU22: İlk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli kelimelerin tüm bilgilerini sorgulayalım.
select * from kelimeler where regexp_like (kelime,'^h[a|i]t$');

-- SORU23: İçinde m veya i veya e olan kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime, 'i|e|m');
select * from kelimeler where regexp_like(kelime, '[mie]');
-- SORU24: a veya s ile başlayan kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where regexp_like(kelime,'^a|^s');
-- SORU25: içerisinde en az 2 adet oo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
select * from kelimeler where kelime like '%oo%';
-- SORU26: içerisinde en az 4 adet oooo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
-- SORU27: ilk harfi s veya b , 3. harfi l olan ve 5 harfli olan kelimelerin küçük harfe dikkat ederek listeleyiniz.
