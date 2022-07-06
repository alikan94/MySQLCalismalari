use batch59;
-- araç cubugundan create table diyerek hızlı bir seskilde tablo olusturabilriz
CREATE TABLE `batch59`.`calisanlar3` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `isim` VARCHAR(45) NULL,
  `adres` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefon` CHAR(11) NULL,
  `ise baslama tarihi` DATE NULL,
  `calisanlar3col` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));