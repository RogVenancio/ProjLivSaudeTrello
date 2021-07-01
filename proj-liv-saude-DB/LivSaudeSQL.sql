-- MySQL Script generated by MySQL Workbench
-- Wed Jun 30 21:20:07 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LivSaudeTrello
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `LivSaudeTrello` ;

-- -----------------------------------------------------
-- Schema LivSaudeTrello
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LivSaudeTrello` DEFAULT CHARACTER SET utf8 ;
USE `LivSaudeTrello` ;

-- -----------------------------------------------------
-- Table `LivSaudeTrello`.`listas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LivSaudeTrello`.`listas` ;

CREATE TABLE IF NOT EXISTS `LivSaudeTrello`.`listas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LivSaudeTrello`.`cards`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LivSaudeTrello`.`cards` ;

CREATE TABLE IF NOT EXISTS `LivSaudeTrello`.`cards` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `listas_id` INT NOT NULL,
  PRIMARY KEY (`id`, `listas_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Data for table `LivSaudeTrello`.`listas`
-- -----------------------------------------------------
START TRANSACTION;
USE `LivSaudeTrello`;
INSERT INTO `LivSaudeTrello`.`listas` (`id`, `titulo`) VALUES (1, 'Lista 1');
INSERT INTO `LivSaudeTrello`.`listas` (`id`, `titulo`) VALUES (2, 'Lista 2');
INSERT INTO `LivSaudeTrello`.`listas` (`id`, `titulo`) VALUES (3, 'Lista 3');

COMMIT;


-- -----------------------------------------------------
-- Data for table `LivSaudeTrello`.`cards`
-- -----------------------------------------------------
START TRANSACTION;
USE `LivSaudeTrello`;
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (1, 'Card 1', 1);
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (2, 'Card 2', 1);
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (3, 'Card 3', 1);
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (4, 'Card 1', 2);
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (5, 'Card 2', 2);
INSERT INTO `LivSaudeTrello`.`cards` (`id`, `titulo`, `listas_id`) VALUES (6, 'Card 3', 3);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
