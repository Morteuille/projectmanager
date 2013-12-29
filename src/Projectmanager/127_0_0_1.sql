-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Dim 29 Décembre 2013 à 15:49
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `symfony2`
--
CREATE DATABASE `symfony2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `symfony2`;

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `Action_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Is_Checked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_406089A48DB60186` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `Event_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FA6F25A3166D1F9C` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `event_label`
--

CREATE TABLE IF NOT EXISTS `event_label` (
  `event_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`,`label_id`),
  KEY `IDX_4FBCE1C471F7E88B` (`event_id`),
  KEY `IDX_4FBCE1C433B92F39` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `label`
--

CREATE TABLE IF NOT EXISTS `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Label_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(11) NOT NULL,
  `User_FName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_LName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Phone_Office` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Phone_Mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `meeting`
--

CREATE TABLE IF NOT EXISTS `meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Meeting_Duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `planification`
--

CREATE TABLE IF NOT EXISTS `planification` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Event_Date` datetime NOT NULL,
  PRIMARY KEY (`event_id`,`user_id`),
  KEY `IDX_4CBE65EE71F7E88B` (`event_id`),
  KEY `IDX_4CBE65EEA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Project_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Creation_Date` datetime NOT NULL,
  `Created_By` int(11) NOT NULL,
  `Completion_Percentage` int(11) NOT NULL,
  `Project_Color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `project_manager`
--

CREATE TABLE IF NOT EXISTS `project_manager` (
  `project_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`manager_id`),
  KEY `IDX_6C3A29DC166D1F9C` (`project_id`),
  KEY `IDX_6C3A29DC783E3463` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Task_Percentage` int(11) NOT NULL,
  `Task_Creation_Date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Task_Due_Date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `task_label`
--

CREATE TABLE IF NOT EXISTS `task_label` (
  `task_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`task_id`,`label_id`),
  KEY `IDX_C9034BC88DB60186` (`task_id`),
  KEY `IDX_C9034BC833B92F39` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Team_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

CREATE TABLE IF NOT EXISTS `team_user` (
  `team_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`,`user_id`),
  KEY `IDX_5C722232296CD8AE` (`team_id`),
  KEY `IDX_5C722232A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `User_FName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_LName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Phone_Office` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Phone_Mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `User_Service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `FK_406089A48DB60186` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`);

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_FA6F25A3166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Contraintes pour la table `event_label`
--
ALTER TABLE `event_label`
  ADD CONSTRAINT `FK_4FBCE1C433B92F39` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4FBCE1C471F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `planification`
--
ALTER TABLE `planification`
  ADD CONSTRAINT `FK_4CBE65EE71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FK_4CBE65EEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `project_manager`
--
ALTER TABLE `project_manager`
  ADD CONSTRAINT `FK_6C3A29DC166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6C3A29DC783E3463` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_label`
--
ALTER TABLE `task_label`
  ADD CONSTRAINT `FK_C9034BC833B92F39` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C9034BC88DB60186` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `FK_5C722232296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5C722232A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
