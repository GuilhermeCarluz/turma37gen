-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_aprochegue
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_aprochegue
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_aprochegue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_aprochegue` ;

-- -----------------------------------------------------
-- Table `db_aprochegue`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_aprochegue`.`tb_temas` (
  `id_temas` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(1000) NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `assunto` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_temas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_aprochegue`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_aprochegue`.`tb_usuarios` (
  `id_usuario` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_aprochegue`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_aprochegue`.`tb_postagem` (
  `id_postagem` BIGINT NOT NULL AUTO_INCREMENT,
  `data_postagem` TIMESTAMP NOT NULL,
  `texto` VARCHAR(1500) NULL DEFAULT NULL,
  `foto` BLOB NULL DEFAULT NULL,
  `video` BLOB NULL DEFAULT NULL,
  `documento` BLOB NULL DEFAULT NULL,
  `fk_tb_usuarios` BIGINT NOT NULL,
  `fk_tb_temas` BIGINT NOT NULL,
  PRIMARY KEY (`id_postagem`, `fk_tb_usuarios`, `fk_tb_temas`),
  INDEX `fk_tb_temas_has_tb_usuarios_tb_usuarios1_idx` (`fk_tb_usuarios` ASC) VISIBLE,
  INDEX `fk_tb_temas_has_tb_usuarios_tb_temas_idx` (`fk_tb_temas` ASC) VISIBLE,
  CONSTRAINT `fk_tb_temas_has_tb_usuarios_tb_temas`
    FOREIGN KEY (`fk_tb_temas`)
    REFERENCES `db_aprochegue`.`tb_temas` (`id_temas`),
  CONSTRAINT `fk_tb_temas_has_tb_usuarios_tb_usuarios1`
    FOREIGN KEY (`fk_tb_usuarios`)
    REFERENCES `db_aprochegue`.`tb_usuarios` (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
