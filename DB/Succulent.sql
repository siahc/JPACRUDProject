-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema succulentdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `succulentdb` ;

-- -----------------------------------------------------
-- Schema succulentdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `succulentdb` DEFAULT CHARACTER SET utf8 ;
USE `succulentdb` ;

-- -----------------------------------------------------
-- Table `succulent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `succulent` ;

CREATE TABLE IF NOT EXISTS `succulent` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `common_name` VARCHAR(45) NOT NULL,
  `scientific_name` VARCHAR(45) NULL,
  `description` VARCHAR(500) NULL,
  `price` DOUBLE NULL,
  `watering_needs` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS succulentuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'succulentuser'@'localhost' IDENTIFIED BY 'succulentuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'succulentuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `succulent`
-- -----------------------------------------------------
START TRANSACTION;
USE `succulentdb`;
INSERT INTO `succulent` (`id`, `common_name`, `scientific_name`, `description`, `price`, `watering_needs`) VALUES (1, 'aloe', 'aloe_vera', 'Long, triangular-leaves; typically with soft thorns.', 5.00, 'medium');
INSERT INTO `succulent` (`id`, `common_name`, `scientific_name`, `description`, `price`, `watering_needs`) VALUES (2, 'cactus', 'cactaceae', 'Tall, compact growth. Thorns varying in size.', 100.00, NULL);
INSERT INTO `succulent` (`id`, `common_name`, `scientific_name`, `description`, `price`, `watering_needs`) VALUES (3, 'dragon_bones', 'euphorbia', 'Highly-variegated. Grows new crown of branches each growing season. ', 6.00, NULL);
INSERT INTO `succulent` (`id`, `common_name`, `scientific_name`, `description`, `price`, `watering_needs`) VALUES (4, 'jade', 'crassula', NULL, 3.00, NULL);
INSERT INTO `succulent` (`id`, `common_name`, `scientific_name`, `description`, `price`, `watering_needs`) VALUES (5, 'arctic_ice', 'echeveria', 'Compact, floral-like growth', 4.00, NULL);

COMMIT;

