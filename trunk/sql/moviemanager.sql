-- phpMyAdmin SQL Dump
-- version 2.9.1.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Erstellungszeit: 09. Dezember 2006 um 14:25
-- Server Version: 5.0.27
-- PHP-Version: 5.2.0
-- 
-- Datenbank: `moviemanager`
-- 

-- --------------------------------------------------------

-- 
-- Tabellenstruktur für Tabelle `movies`
-- 

CREATE TABLE `movies` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `setting` varchar(255) NOT NULL,
  `enable` int(1) NOT NULL,
  `file` text NOT NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Daten für Tabelle `movies`
-- 

