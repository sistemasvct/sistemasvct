-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 09:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_system`
--

CREATE TABLE IF NOT EXISTS `gs_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) COLLATE utf8_bin NOT NULL,
  `value` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_billing_plans`
--

CREATE TABLE IF NOT EXISTS `gs_billing_plans` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `objects` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `period_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_dtc_data`
--

CREATE TABLE IF NOT EXISTS `gs_dtc_data` (
  `dtc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `code` varchar(20) COLLATE utf8_bin NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `address` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`dtc_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_geocoder_cache`
--

CREATE TABLE IF NOT EXISTS `gs_geocoder_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `address` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lat` (`lat`),
  KEY `lng` (`lng`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_maps`
--

CREATE TABLE IF NOT EXISTS `gs_maps` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `type` varchar(5) COLLATE utf8_bin NOT NULL,
  `url` varchar(2048) COLLATE utf8_bin NOT NULL,
  `layers` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_objects`
--

CREATE TABLE IF NOT EXISTS `gs_objects` (
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `protocol` varchar(50) COLLATE utf8_bin NOT NULL,
  `net_protocol` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip` varchar(50) COLLATE utf8_bin NOT NULL,
  `port` varchar(10) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `object_expire` varchar(5) COLLATE utf8_bin NOT NULL,
  `object_expire_dt` date NOT NULL,
  `manager_id` int(11) NOT NULL,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` double NOT NULL,
  `angle` double NOT NULL,
  `speed` double NOT NULL,
  `loc_valid` int(1) NOT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  `dt_last_stop` datetime NOT NULL,
  `dt_last_idle` datetime NOT NULL,
  `dt_last_move` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `icon` varchar(256) COLLATE utf8_bin NOT NULL,
  `map_arrows` varchar(512) COLLATE utf8_bin NOT NULL,
  `map_icon` varchar(5) COLLATE utf8_bin NOT NULL,
  `tail_color` varchar(7) COLLATE utf8_bin NOT NULL,
  `tail_points` int(4) NOT NULL,
  `device` varchar(30) COLLATE utf8_bin NOT NULL,
  `sim_number` varchar(50) COLLATE utf8_bin NOT NULL,
  `model` varchar(50) COLLATE utf8_bin NOT NULL,
  `vin` varchar(50) COLLATE utf8_bin NOT NULL,
  `plate_number` varchar(50) COLLATE utf8_bin NOT NULL,
  `odometer_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `engine_hours_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `odometer` double NOT NULL,
  `engine_hours` int(11) NOT NULL,
  `fcr` varchar(512) COLLATE utf8_bin NOT NULL,
  `time_adj` varchar(30) COLLATE utf8_bin NOT NULL,
  `accuracy` varchar(1024) COLLATE utf8_bin NOT NULL,
  `dt_chat` datetime NOT NULL,
  PRIMARY KEY (`imei`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gs_objects`
--

INSERT INTO `gs_objects` (`imei`, `protocol`, `ip`, `port`, `active`, `manager_id`, `dt_server`, `dt_tracker`, `lat`, `lng`, `altitude`, `angle`, `speed`, `loc_valid`, `params`, `dt_last_stop`, `dt_last_idle`, `dt_last_move`, `name`, `icon`, `map_arrows`, `map_icon`, `tail_color`, `tail_points`, `device`, `sim_number`, `model`, `vin`, `plate_number`, `odometer_type`, `engine_hours_type`, `odometer`, `engine_hours`, `fcr`, `time_adj`, `accuracy`, `dt_chat`) VALUES
('111111111111111', '', '', '', 'true', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '111111111111111', 'img/markers/objects/land-truck.svg', '', 'arrow', '#00FF44', 7, '', '', '', '', '', 'gps', 'off', 0, 0, '', '', '', '0000-00-00 00:00:00'),
('222222222222222', '', '', '', 'true', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '222222222222222', 'img/markers/objects/land-truck.svg', '', 'arrow', '#00FF44', 7, '', '', '', '', '', 'gps', 'off', 0, 0, '', '', '', '0000-00-00 00:00:00'),
('333333333333333', '', '', '', 'true', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '333333333333333', 'img/markers/objects/land-truck.svg', '', 'arrow', '#00FF44', 7, '', '', '', '', '', 'gps', 'off', 0, 0, '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gs_objects_unused`
--

CREATE TABLE IF NOT EXISTS `gs_objects_unused` (
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `protocol` varchar(50) COLLATE utf8_bin NOT NULL,
  `net_protocol` varchar(3) COLLATE utf8_bin NOT NULL,
  `ip` varchar(50) COLLATE utf8_bin NOT NULL,
  `port` varchar(10) COLLATE utf8_bin NOT NULL,
  `dt_server` datetime NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_chat`
--

CREATE TABLE IF NOT EXISTS `gs_object_chat` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_server` datetime NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `side` varchar(1) COLLATE utf8_bin NOT NULL,
  `msg` varchar(2048) COLLATE utf8_bin NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_cmd_exec`
--

CREATE TABLE IF NOT EXISTS `gs_object_cmd_exec` (
  `cmd_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dt_cmd` datetime NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `gateway` varchar(5) COLLATE utf8_bin NOT NULL,
  `type` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd` varchar(256) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `re_hex` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cmd_id`),
  KEY `user_id` (`user_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_custom_fields`
--

CREATE TABLE IF NOT EXISTS `gs_object_custom_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `value` varchar(100) COLLATE utf8_bin NOT NULL,
  `data_list` varchar(5) COLLATE utf8_bin NOT NULL,
  `popup` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_data_111111111111111`
--

CREATE TABLE IF NOT EXISTS `gs_object_data_111111111111111` (
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `angle` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  KEY `dt_tracker` (`dt_tracker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_data_222222222222222`
--

CREATE TABLE IF NOT EXISTS `gs_object_data_222222222222222` (
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `angle` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  KEY `dt_tracker` (`dt_tracker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_data_333333333333333`
--

CREATE TABLE IF NOT EXISTS `gs_object_data_333333333333333` (
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `altitude` double DEFAULT NULL,
  `angle` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  KEY `dt_tracker` (`dt_tracker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_img`
--

CREATE TABLE IF NOT EXISTS `gs_object_img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_file` varchar(50) COLLATE utf8_bin NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` double NOT NULL,
  `angle` double NOT NULL,
  `speed` double NOT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_sensors`
--

CREATE TABLE IF NOT EXISTS `gs_object_sensors` (
  `sensor_id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `param` varchar(20) COLLATE utf8_bin NOT NULL,
  `data_list` varchar(5) COLLATE utf8_bin NOT NULL,
  `popup` varchar(5) COLLATE utf8_bin NOT NULL,
  `result_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `text_1` varchar(50) COLLATE utf8_bin NOT NULL,
  `text_0` varchar(50) COLLATE utf8_bin NOT NULL,
  `units` varchar(10) COLLATE utf8_bin NOT NULL,
  `lv` double NOT NULL,
  `hv` double NOT NULL,
  `formula` varchar(50) COLLATE utf8_bin NOT NULL,
  `calibration` varchar(4096) COLLATE utf8_bin NOT NULL,
  `dictionary` varchar(4096) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`sensor_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_object_services`
--

CREATE TABLE IF NOT EXISTS `gs_object_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `data_list` varchar(5) COLLATE utf8_bin NOT NULL,
  `popup` varchar(5) COLLATE utf8_bin NOT NULL,
  `odo` varchar(5) COLLATE utf8_bin NOT NULL,
  `odo_interval` double NOT NULL,
  `odo_last` double NOT NULL,
  `engh` varchar(5) COLLATE utf8_bin NOT NULL,
  `engh_interval` int(11) NOT NULL,
  `engh_last` int(11) NOT NULL,
  `days` varchar(5) COLLATE utf8_bin NOT NULL,
  `days_interval` int(11) NOT NULL,
  `days_last` date NOT NULL,
  `odo_left` varchar(5) COLLATE utf8_bin NOT NULL,
  `odo_left_num` int(11) NOT NULL,
  `engh_left` varchar(5) COLLATE utf8_bin NOT NULL,
  `engh_left_num` int(11) NOT NULL,
  `days_left` varchar(5) COLLATE utf8_bin NOT NULL,
  `days_left_num` int(11) NOT NULL,
  `update_last` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_service_expire` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_rilogbook_data`
--

CREATE TABLE IF NOT EXISTS `gs_rilogbook_data` (
  `rilogbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `group` varchar(2) COLLATE utf8_bin NOT NULL,
  `assign_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `address` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`rilogbook_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_sms_gateway_app`
--

CREATE TABLE IF NOT EXISTS `gs_sms_gateway_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_sms` datetime NOT NULL,
  `identifier` varchar(20) COLLATE utf8_bin NOT NULL,
  `number` varchar(50) COLLATE utf8_bin NOT NULL,
  `message` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dt_sms` (`dt_sms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_sms_queue`
--

CREATE TABLE IF NOT EXISTS `gs_sms_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_sms` datetime NOT NULL,
  `gateway_url` varchar(2048) COLLATE utf8_bin NOT NULL,
  `filter` varchar(10) COLLATE utf8_bin NOT NULL,
  `number` varchar(512) COLLATE utf8_bin NOT NULL,
  `message` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dt_sms` (`dt_sms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_email_queue`
--

CREATE TABLE IF NOT EXISTS `gs_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_email` datetime NOT NULL,
  `email` varchar(512) COLLATE utf8_bin NOT NULL,
  `subject` varchar(512) COLLATE utf8_bin NOT NULL,
  `message` varchar(4096) COLLATE utf8_bin NOT NULL,
  `no_reply` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dt_email` (`dt_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_templates`
--

CREATE TABLE IF NOT EXISTS `gs_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `language` varchar(20) COLLATE utf8_bin NOT NULL,
  `subject` varchar(512) COLLATE utf8_bin NOT NULL,
  `message` varchar(4096) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gs_templates`
--

INSERT INTO `gs_templates` (`template_id`, `name`, `language`, `subject`, `message`) VALUES
(1, 'account_registration', 'english', 'Registration at %SERVER_NAME%', 'Hello,\n\nThank you for registering at %SERVER_NAME%.\n\nAccess to GPS server: %URL_LOGIN%\n\nUsername: %USERNAME%\nPassword: %PASSWORD%'),
(2, 'account_registration_au', 'english', 'Registration at %SERVER_NAME%', 'Hello,\n\nThank you for registering at %SERVER_NAME%.\n\nDesktop access:\n%URL_AU%\n\nMobile access:\n%URL_AU_MOBILE%'),
(3, 'account_recover_url', 'english', 'Lost login recovery to %SERVER_NAME%', 'Hello,\n\nA request has been made to recover account on %SERVER_NAME%.\n\nUse the link to complete the process: %URL_RECOVER%'),
(4, 'account_recover', 'english', 'Lost login recovery to %SERVER_NAME%', 'Hello,\n\nAccess to GPS server: %URL_LOGIN%\n\nUsername: %USERNAME%\nPassword: %PASSWORD%'),
(5, 'expiring_objects', 'english', 'Expiring objects', 'Hello,\n\nSome of your objects activation will expire soon. Please login into account for more details.\n\nIf you would like to continue using our service, please purchase access to %SERVER_NAME% at our shop:\n%URL_SHOP%'),
(6, 'event_email', 'english', '%NAME% - %EVENT%', 'Hello,\n\nThis is event message, please do not reply to this message.\n\nObject: %NAME%\nEvent: %EVENT%\nPosition: %G_MAP%\nSpeed: %SPEED%\nTime (position): %DT_POS%'),
(7, 'event_sms', 'english', '%NAME% - %EVENT%', 'Hello,\nObject: %NAME%\nEvent: %EVENT%\nPosition: %LAT%, %LNG%\nSpeed: %SPEED%\nTime (position): %DT_POS%'),
(8, 'expiring_account', 'english', 'Expiring account', 'Hello,\n\nYour account will expire soon. Please contact us for more details.'),
(9, 'database_backup', 'english', 'Database backup', 'Hello,\n\nThis is database backup, please do not reply to this e-mail.');

-- --------------------------------------------------------

--
-- Table structure for table `gs_themes`
--

CREATE TABLE IF NOT EXISTS `gs_themes` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `theme` varchar(2048) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_users`
--

CREATE TABLE IF NOT EXISTS `gs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `account_expire` varchar(5) COLLATE utf8_bin NOT NULL,
  `account_expire_dt` date NOT NULL,
  `privileges` text COLLATE utf8_bin NOT NULL,
  `manager_id` int(11) NOT NULL,
  `manager_billing` varchar(5) COLLATE utf8_bin NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `sess_hash` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `api` varchar(5) COLLATE utf8_bin NOT NULL,
  `api_key` varchar(100) COLLATE utf8_bin NOT NULL,
  `dt_reg` datetime NOT NULL,
  `dt_login` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  `notify_account_expire` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_object_expire` varchar(5) COLLATE utf8_bin NOT NULL,
  `info` varchar(1024) COLLATE utf8_bin NOT NULL,
  `comment` varchar(2048) COLLATE utf8_bin NOT NULL,
  `obj_add` varchar(5) COLLATE utf8_bin NOT NULL,
  `obj_limit` varchar(5) COLLATE utf8_bin NOT NULL,
  `obj_limit_num` int(11) NOT NULL,
  `obj_days` varchar(5) COLLATE utf8_bin NOT NULL,
  `obj_days_dt` date NOT NULL,
  `obj_edit` varchar(5) COLLATE utf8_bin NOT NULL,
  `obj_history_clear` varchar(5) COLLATE utf8_bin NOT NULL,
  `currency` varchar(3) COLLATE utf8_bin NOT NULL,
  `timezone` varchar(30) COLLATE utf8_bin NOT NULL,
  `dst` varchar(5) COLLATE utf8_bin NOT NULL,
  `dst_start` varchar(20) COLLATE utf8_bin NOT NULL,
  `dst_end` varchar(20) COLLATE utf8_bin NOT NULL,
  `language` varchar(20) COLLATE utf8_bin NOT NULL,
  `units` varchar(6) COLLATE utf8_bin NOT NULL,
  `map_sp` varchar(7) COLLATE utf8_bin NOT NULL,
  `map_is` double NOT NULL,
  `map_rc` varchar(7) COLLATE utf8_bin NOT NULL,
  `map_rhc` varchar(7) COLLATE utf8_bin NOT NULL,
  `groups_collapsed` varchar(100) COLLATE utf8_bin NOT NULL,
  `od` varchar(10) COLLATE utf8_bin NOT NULL,
  `ohc` varchar(256) COLLATE utf8_bin NOT NULL,
  `chat_notify` varchar(40) COLLATE utf8_bin NOT NULL,
  `sms_gateway_server` varchar(5) COLLATE utf8_bin NOT NULL,
  `sms_gateway` varchar(5) COLLATE utf8_bin NOT NULL,
  `sms_gateway_type` varchar(5) COLLATE utf8_bin NOT NULL,
  `sms_gateway_url` varchar(2048) COLLATE utf8_bin NOT NULL,
  `sms_gateway_identifier` varchar(20) COLLATE utf8_bin NOT NULL,
  `places_markers` varchar(5) COLLATE utf8_bin NOT NULL,
  `places_routes` varchar(5) COLLATE utf8_bin NOT NULL,
  `places_zones` varchar(5) COLLATE utf8_bin NOT NULL,
  `usage_email_daily` varchar(8) COLLATE utf8_bin NOT NULL,
  `usage_sms_daily` varchar(8) COLLATE utf8_bin NOT NULL,
  `usage_api_daily` varchar(8) COLLATE utf8_bin NOT NULL,
  `usage_email_daily_cnt` int(11) NOT NULL,
  `usage_sms_daily_cnt` int(11) NOT NULL,
  `usage_api_daily_cnt` int(11) NOT NULL,
  `dt_usage_d` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gs_users`
--

INSERT INTO `gs_users` (`id`, `active`, `account_expire`, `account_expire_dt`, `privileges`, `manager_id`, `manager_billing`, `username`, `password`, `sess_hash`, `email`, `api`, `api_key`, `dt_reg`, `dt_login`, `ip`, `notify_account_expire`, `notify_object_expire`, `info`, `comment`, `obj_history_clear`, `obj_edit`, `obj_add`, `obj_limit`, `obj_limit_num`, `obj_days`, `obj_days_dt`, `currency`, `timezone`, `dst`, `dst_start`, `dst_end`, `language`, `units`, `map_sp`, `map_is`, `map_rc`, `map_rhc`, `od`, `ohc`, `chat_notify`, `sms_gateway_server`, `sms_gateway`, `sms_gateway_type`, `sms_gateway_url`, `sms_gateway_identifier`, `places_markers`, `places_routes`, `places_zones`, `usage_email_daily`, `usage_sms_daily`, `usage_api_daily`, `usage_email_daily_cnt`, `usage_sms_daily_cnt`, `usage_api_daily_cnt`, `dt_usage_d`) VALUES
(1, 'true', 'false', '0000-00-00', '{"type":"super_admin"}', 0, '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin@admin.com', 'false', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '', 'true', 'true', 'trial', ''
, '', '', '0000-00-00', 'EUR', '+ 2 hour', 'false', '', '', 'english', 'km,l,c', 'last', 1, '#FF0000', '#0600B8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '0000-00-00 00:00:00'),
(2, 'true', 'false', '0000-00-00', '{"type":"viewer"}', 0, '', 'demo', '62cc2d8b4bf2d8728120d052163a77df', '', 'demo@demo.com', 'false', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '127.0.0.1', '', '', '', '', 'true', 'true', 'trial', '', '', '', '0000-00-00', 'EUR', '+ 2 hour', 'false', '', '', 'english', 'km,l,c', 'last', 1, '#FF0000', '#0600B8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_account_recover`
--

CREATE TABLE IF NOT EXISTS `gs_user_account_recover` (
  `recover_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `dt_recover` datetime NOT NULL,
  PRIMARY KEY (`recover_id`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_billing_plans`
--

CREATE TABLE IF NOT EXISTS `gs_user_billing_plans` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dt_purchase` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `objects` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `period_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`plan_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_cmd`
--

CREATE TABLE IF NOT EXISTS `gs_user_cmd` (
  `cmd_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `protocol` varchar(50) COLLATE utf8_bin NOT NULL,
  `gateway` varchar(5) COLLATE utf8_bin NOT NULL,
  `type` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cmd_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_cmd_schedule`
--

CREATE TABLE IF NOT EXISTS `gs_user_cmd_schedule` (
  `cmd_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `exact_time` varchar(5) COLLATE utf8_bin NOT NULL,
  `exact_time_dt` datetime NOT NULL,
  `day_time` varchar(512) COLLATE utf8_bin NOT NULL,
  `protocol` varchar(50) COLLATE utf8_bin NOT NULL,
  `imei` text COLLATE utf8_bin NOT NULL,
  `gateway` varchar(5) COLLATE utf8_bin NOT NULL,
  `type` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd` varchar(256) COLLATE utf8_bin NOT NULL,
  `dt_schedule_e` datetime NOT NULL,
  `dt_schedule_d` datetime NOT NULL,
  PRIMARY KEY (`cmd_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_events`
--

CREATE TABLE IF NOT EXISTS `gs_user_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `active` varchar(5) COLLATE utf8_bin NOT NULL,
  `duration_from_last_event` varchar(5) COLLATE utf8_bin NOT NULL,
  `duration_from_last_event_minutes` int(11) NOT NULL,
  `week_days` varchar(50) COLLATE utf8_bin NOT NULL,
  `day_time` varchar(512) COLLATE utf8_bin NOT NULL,
  `imei` text COLLATE utf8_bin NOT NULL,
  `checked_value` varchar(1024) COLLATE utf8_bin NOT NULL,
  `route_trigger` varchar(5) COLLATE utf8_bin NOT NULL,
  `zone_trigger` varchar(5) COLLATE utf8_bin NOT NULL,
  `routes` varchar(4096) COLLATE utf8_bin NOT NULL,
  `zones` varchar(4096) COLLATE utf8_bin NOT NULL,
  `notify_system` varchar(40) COLLATE utf8_bin NOT NULL,
  `notify_email` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_email_address` varchar(500) COLLATE utf8_bin NOT NULL,
  `notify_sms` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_sms_number` varchar(500) COLLATE utf8_bin NOT NULL,
  `notify_arrow` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_arrow_color` varchar(20) COLLATE utf8_bin NOT NULL,
  `notify_ohc` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_ohc_color` varchar(7) COLLATE utf8_bin NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `sms_template_id` int(11) NOT NULL,
  `cmd_send` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd_gateway` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd_type` varchar(5) COLLATE utf8_bin NOT NULL,
  `cmd_string` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_last_events_data`
--

CREATE TABLE IF NOT EXISTS `gs_user_last_events_data` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `event_desc` varchar(512) COLLATE utf8_bin NOT NULL,
  `notify_system` varchar(40) COLLATE utf8_bin NOT NULL,
  `notify_arrow` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_arrow_color` varchar(20) COLLATE utf8_bin NOT NULL,
  `notify_ohc` varchar(5) COLLATE utf8_bin NOT NULL,
  `notify_ohc_color` varchar(7) COLLATE utf8_bin NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` double NOT NULL,
  `angle` double NOT NULL,
  `speed` double NOT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_events_data`
--

CREATE TABLE IF NOT EXISTS `gs_user_events_data` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `event_desc` varchar(512) COLLATE utf8_bin NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `dt_server` datetime NOT NULL,
  `dt_tracker` datetime NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` double NOT NULL,
  `angle` double NOT NULL,
  `speed` double NOT NULL,
  `params` varchar(2048) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_events_status`
--

CREATE TABLE IF NOT EXISTS `gs_user_events_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `dt_server` datetime NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `event_status` int(11) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `event_id` (`event_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_failed_logins`
--

CREATE TABLE IF NOT EXISTS `gs_user_failed_logins` (
  `fail_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  `dt_login` datetime NOT NULL,
  PRIMARY KEY (`fail_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_markers`
--

CREATE TABLE IF NOT EXISTS `gs_user_markers` (
  `marker_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `marker_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `marker_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  `marker_icon` varchar(256) COLLATE utf8_bin NOT NULL,
  `marker_visible` varchar(5) COLLATE utf8_bin NOT NULL,
  `marker_lat` double NOT NULL,
  `marker_lng` double NOT NULL,
  PRIMARY KEY (`marker_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_objects`
--

CREATE TABLE IF NOT EXISTS `gs_user_objects` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `imei` varchar(20) COLLATE utf8_bin NOT NULL,
  `group_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `trailer_id` int(11) NOT NULL,
  PRIMARY KEY (`object_id`),
  KEY `user_id` (`user_id`),
  KEY `imei` (`imei`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gs_user_objects`
--

INSERT INTO `gs_user_objects` (`object_id`, `user_id`, `imei`, `group_id`, `driver_id`, `trailer_id`) VALUES
(1, 2, '111111111111111', 0, 0, 0),
(2, 2, '222222222222222', 0, 0, 0),
(3, 2, '333333333333333', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_object_drivers`
--

CREATE TABLE IF NOT EXISTS `gs_user_object_drivers` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `driver_assign_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `driver_idn` varchar(100) COLLATE utf8_bin NOT NULL,
  `driver_address` varchar(200) COLLATE utf8_bin NOT NULL,
  `driver_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `driver_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `driver_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  `driver_img_file` varchar(512) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_object_groups`
--

CREATE TABLE IF NOT EXISTS `gs_user_object_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `group_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_object_passengers`
--

CREATE TABLE IF NOT EXISTS `gs_user_object_passengers` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `passenger_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `passenger_assign_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `passenger_idn` varchar(100) COLLATE utf8_bin NOT NULL,
  `passenger_address` varchar(200) COLLATE utf8_bin NOT NULL,
  `passenger_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `passenger_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `passenger_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`passenger_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_object_trailers`
--

CREATE TABLE IF NOT EXISTS `gs_user_object_trailers` (
  `trailer_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `trailer_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `trailer_assign_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `trailer_model` varchar(50) COLLATE utf8_bin NOT NULL,
  `trailer_vin` varchar(50) COLLATE utf8_bin NOT NULL,
  `trailer_plate_number` varchar(50) COLLATE utf8_bin NOT NULL,
  `trailer_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`trailer_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_places_groups`
--

CREATE TABLE IF NOT EXISTS `gs_user_places_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `group_desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_reports`
--

CREATE TABLE IF NOT EXISTS `gs_user_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `format` varchar(4) COLLATE utf8_bin NOT NULL,
  `show_coordinates` varchar(5) COLLATE utf8_bin NOT NULL,
  `show_addresses` varchar(5) COLLATE utf8_bin NOT NULL,
  `zones_addresses` varchar(5) COLLATE utf8_bin NOT NULL,
  `stop_duration` int(11) NOT NULL,
  `speed_limit` int(11) NOT NULL,
  `imei` text COLLATE utf8_bin NOT NULL,
  `zone_ids` text COLLATE utf8_bin NOT NULL,
  `sensor_names` text COLLATE utf8_bin NOT NULL,
  `data_items` text COLLATE utf8_bin NOT NULL,
  `schedule_period` varchar(10) COLLATE utf8_bin NOT NULL,
  `schedule_email_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  `dt_schedule_d` datetime NOT NULL,
  `dt_schedule_w` datetime NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_reports_generated`
--

CREATE TABLE IF NOT EXISTS `gs_user_reports_generated` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dt_report` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `format` varchar(4) COLLATE utf8_bin NOT NULL,
  `objects` int(11) NOT NULL,
  `zones` int(11) NOT NULL,
  `sensors` int(11) NOT NULL,
  `schedule` varchar(5) COLLATE utf8_bin NOT NULL,
  `filename` varchar(100) COLLATE utf8_bin NOT NULL,
  `report_file` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_routes`
--

CREATE TABLE IF NOT EXISTS `gs_user_routes` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `route_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `route_color` varchar(7) COLLATE utf8_bin NOT NULL,
  `route_visible` varchar(5) COLLATE utf8_bin NOT NULL,
  `route_name_visible` varchar(5) COLLATE utf8_bin NOT NULL,
  `route_deviation` varchar(5) COLLATE utf8_bin NOT NULL,
  `route_points` varchar(5120) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`route_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_templates`
--

CREATE TABLE IF NOT EXISTS `gs_user_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `desc` varchar(1024) COLLATE utf8_bin NOT NULL,
  `subject` varchar(512) COLLATE utf8_bin NOT NULL,
  `message` varchar(4096) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_usage`
--

CREATE TABLE IF NOT EXISTS `gs_user_usage` (
  `usage_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dt_usage` date NOT NULL,
  `login` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `sms` int(11) NOT NULL,
  `api` int(11) NOT NULL,
  PRIMARY KEY (`usage_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_zones`
--

CREATE TABLE IF NOT EXISTS `gs_user_zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `zone_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `zone_color` varchar(7) COLLATE utf8_bin NOT NULL,
  `zone_visible` varchar(5) COLLATE utf8_bin NOT NULL,
  `zone_name_visible` varchar(5) COLLATE utf8_bin NOT NULL,
  `zone_area` int(11) NOT NULL,
  `zone_vertices` varchar(2048) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
