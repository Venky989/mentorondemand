-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mentor_on_demand
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mentor_on_demand
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mentor_on_demand` DEFAULT CHARACTER SET utf8 ;
USE `mentor_on_demand` ;

-- -----------------------------------------------------
-- Table `mentor_on_demand`.`hibernate_sequence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`hibernate_sequence` (
  `next_val` BIGINT(20) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`mentor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`mentor` (
  `me_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `me_confirm_password` VARCHAR(255) NULL DEFAULT NULL,
  `me_contact_no` VARCHAR(255) NULL DEFAULT NULL,
  `me_email` VARCHAR(255) NULL DEFAULT NULL,
  `me_firstname` VARCHAR(255) NULL DEFAULT NULL,
  `me_lastname` VARCHAR(255) NULL DEFAULT NULL,
  `me_linkedin_url` VARCHAR(255) NULL DEFAULT NULL,
  `me_password` VARCHAR(255) NULL DEFAULT NULL,
  `me_userid` VARCHAR(255) NULL DEFAULT NULL,
  `me_years_of_experience` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`me_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`mentor_calendar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`mentor_calendar` (
  `mc_id` BIGINT(20) NOT NULL,
  `mc_end_date` DATE NULL DEFAULT NULL,
  `mc_end_time` TIME NULL DEFAULT NULL,
  `mc_start_date` DATE NULL DEFAULT NULL,
  `mc_start_time` TIME NULL DEFAULT NULL,
  `mc_me_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  INDEX `FKg0vtymuejgf1nynfyxj70y4jt` (`mc_me_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`mentor_skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`mentor_skill` (
  `ms_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `ms_exp` BIGINT(20) NULL DEFAULT NULL,
  `ms_facilities` VARCHAR(255) NULL DEFAULT NULL,
  `ms_self_rating` BIGINT(20) NULL DEFAULT NULL,
  `ms_trainings_delivered` VARCHAR(255) NULL DEFAULT NULL,
  `ms_me_id` BIGINT(20) NULL DEFAULT NULL,
  `ms_sk_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`ms_id`),
  INDEX `FK49a3ygnib52wsm2kmp7a0937c` (`ms_me_id` ASC),
  INDEX `FKgu5jer1ugx4p79xhr6js7jtqs` (`ms_sk_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`role` (
  `ro_id` INT(11) NOT NULL AUTO_INCREMENT,
  `ro_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`ro_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`technology`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`technology` (
  `te_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `te_duration` VARCHAR(255) NULL DEFAULT NULL,
  `te_prereq` VARCHAR(255) NULL DEFAULT NULL,
  `te_name` VARCHAR(255) NULL DEFAULT NULL,
  `te_toc` VARCHAR(255) NULL DEFAULT NULL,
  `te_image` VARCHAR(800) NULL DEFAULT NULL,
  PRIMARY KEY (`te_id`))
ENGINE = MyISAM
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`trainee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`trainee` (
  `tr_id` BIGINT(20) NOT NULL,
  `tr_confirm_password` VARCHAR(255) NULL DEFAULT NULL,
  `tr_contact_no` VARCHAR(255) NULL DEFAULT NULL,
  `tr_email` VARCHAR(255) NULL DEFAULT NULL,
  `tr_firstname` VARCHAR(255) NULL DEFAULT NULL,
  `tr_lastname` VARCHAR(255) NULL DEFAULT NULL,
  `tr_password` VARCHAR(255) NULL DEFAULT NULL,
  `tr_userid` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`tr_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`training` (
  `tg_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `tg_status` VARCHAR(255) NULL DEFAULT NULL,
  `tg_me_id` BIGINT(20) NULL DEFAULT NULL,
  `tg_tr_id` BIGINT(20) NULL DEFAULT NULL,
  `tg_te_id` BIGINT(20) NULL DEFAULT NULL,
  `tg_progress` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`tg_id`),
  INDEX `FKgasjjefouws5l6x434nrlt6dk` (`tg_me_id` ASC),
  INDEX `FKplyquytxxusj2pqevwp7v1dsi` (`tg_te_id` ASC),
  INDEX `FK1n0bwq78qcj0a4e5qcnbkdkvl` (`tg_tr_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 23
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`user` (
  `us_id` BIGINT(20) NOT NULL,
  `us_password` VARCHAR(255) NULL DEFAULT NULL,
  `us_username` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`us_id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mentor_on_demand`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mentor_on_demand`.`user_role` (
  `ur_us_id` BIGINT(20) NOT NULL,
  `ur_ro_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`ur_us_id`, `ur_ro_id`),
  INDEX `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
