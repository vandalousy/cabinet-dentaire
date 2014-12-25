CREATE DATABASE `de_cl`
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;



-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Jeu 25 Décembre 2014 à 14:35
-- Version du serveur: 5.0.45
-- Version de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de données: `de_cl`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `appointment`
-- 

CREATE TABLE `appointment` (
  `appId` int(6) NOT NULL auto_increment,
  `starTime` time NOT NULL,
  `endTime` time NOT NULL,
  `appDate` date NOT NULL,
  `reason` text collate utf8_unicode_ci NOT NULL,
  `patientId` int(6) NOT NULL,
  PRIMARY KEY  (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `appointment`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `medicalhistory`
-- 

CREATE TABLE `medicalhistory` (
  `historyId` int(6) NOT NULL auto_increment,
  `GP` char(5) collate utf8_unicode_ci NOT NULL,
  `medicalHistory` text collate utf8_unicode_ci NOT NULL,
  `previousDentist` varchar(30) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`historyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `medicalhistory`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `patient`
-- 

CREATE TABLE `patient` (
  `patientId` int(11) NOT NULL auto_increment,
  `firstName` varchar(30) collate utf8_unicode_ci NOT NULL,
  `lastName` varchar(30) collate utf8_unicode_ci NOT NULL,
  `adress` varchar(100) collate utf8_unicode_ci NOT NULL,
  `postCode` char(5) collate utf8_unicode_ci NOT NULL,
  `gender` char(1) collate utf8_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `telephone` varchar(15) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `patient`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `users`
-- 

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL auto_increment,
  `Username` varchar(150) collate utf8_unicode_ci NOT NULL,
  `Password` varchar(150) collate utf8_unicode_ci default NULL,
  `ver_code` varchar(150) collate utf8_unicode_ci default NULL,
  `verified` tinyint(4) default '0',
  PRIMARY KEY  (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `users`
-- 




