-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 19, 2013 at 04:19 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thuocduoclieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `ten`, `trangthai`) VALUES
(1, 'HÃ  Ná»™i', 1),
(2, 'Háº£i PhÃ²ng', 1),
(3, 'Ninh BÃ¬nh', 1),
(4, 'TP Há»“  ChÃ­ Minh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
CREATE TABLE IF NOT EXISTS `clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daidien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `departments_id` int(11) NOT NULL,
  `linhvuc` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='phòng khám' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `ten`, `daidien`, `departments_id`, `linhvuc`, `diachi`, `cities_id`, `dienthoai`, `gioithieu`, `trangthai`, `map`) VALUES
(1, 'NHA KHOA CHIáº¾N THáº®NG', 'Nguyá»…n Tuáº¥n Anh', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '39 ÄÆ°á»ng Chiáº¿n Tháº¯ng,HÃ  TÃ¢y', 1, '985545409', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.849999'),
(2, 'Nha Khoa Minh Anh', 'Phan Thá»‹ Thu Háº£i', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '60 HoÃ ng Diá»‡u', 1, '(04).7345595', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850000'),
(3, 'Nha Khoa Tuáº¥n VÃ¢n', 'Pháº¡m Quá»‘c VÃ¢n', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '19 phá»‘ HÃ ng CÃ³t, PhÆ°á»ng HÃ ng MÃ£', 1, '(04).9273919', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850001'),
(4, 'PhÃ²ng Chuáº©n trá»‹ Y há»c Cá»• truyá»n KhÆ°Æ¡ng SÆ¡n', 'Pháº¡m ÄÃ¬nh Vinh', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', 'P15 - A11 Táº­p thá»ƒ Thanh XuÃ¢n Báº¯c', 2, '(04).5536308', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850002'),
(5, 'PhÃ²ng KhÃ¡m Chuáº©n ÄoÃ¡n XÃ©t Nghiá»‡m Y Khoa Ãšc ChÃ¢u', 'Äang cáº­p nháº­t', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '38 Máº¡c ÄÄ©nh Chi, PhÆ°á»ng Äa Kao', 3, '(08).8272265', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850003'),
(6, 'PhÃ²ng KhÃ¡m RÄƒng HÃ m Máº·t', 'Chu Äá»©c ToÃ n', 3, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '99 ThÃ¡i Thá»‹nh', 4, '(04).5621954', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850004'),
(7, 'PhÃ²ng KhÃ¡m Äa Khoa 125 ThÃ¡i Thá»‹nh', 'Äang cáº­p nháº­t', 4, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '125 ThÃ¡i Thá»‹nh', 1, '(04).8535522', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850005'),
(8, 'PhÃ²ng KhÃ¡m Äa Khoa Äá»©c Minh', 'LÃª Äá»©c PhÃºc', 1, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '32 PhÃ¹ng HÆ°ng', 1, '(04).9289836', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850006'),
(9, 'PhÃ²ng KhÃ¡m Äa Khoa ThiÃªn An', 'VÅ© Kháº¯c Khoan', 3, 'Kh&aacute;m v&agrave; Äiá»u trá»‹ Ná»™i tá»•ng há»£p<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ngoáº¡i- Cháº¥n thÆ°Æ¡ng:<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Nhi khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Sáº£n phá»¥ khoa<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Tai - MÅ©i - Há»ng<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Máº¯t&nbsp;<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ RÄƒng - H&agrave;m - Máº·t<br />\nKh&aacute;m v&agrave; Ä‘iá»u trá»‹ Ä&ocirc;ng y<br />\nThá»±c hiá»‡n c&aacute;c thá»§ thuáº­t<br />\nHáº¥p sáº¥y tiá»‡t tr&ugrave;ng &nbsp;&nbsp;', '140 Nguyá»…n TrÃ£i', 6, '(04).8589049', '<strong>Ph&ograve;ng kh&aacute;m&nbsp;</strong><strong>Ä‘</strong><strong>a khoa&nbsp;</strong>ch&iacute;nh thá»©c Ä‘i v&agrave;o hoáº¡t Ä‘á»™ng nÄƒm 2013. Vá»›i sá»± táº­p trung Ä‘áº§u tÆ° v&agrave;o trang thiáº¿t bá»‹ tá»‘t nháº¥t, hiá»‡n Ä‘áº¡i nháº¥t ngang táº§m khu vá»±c khu vá»±c v&agrave; tháº¿ giá»›i, v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ©, Ä‘á»™i ngÅ© cá»‘ váº¥n chuy&ecirc;n m&ocirc;n gi&agrave;u kinh nghiá»‡m, Ä‘&atilde; v&agrave; Ä‘ang l&agrave;m viá»‡c táº¡i c&aacute;c cÆ¡ sá»Ÿ &yacute; táº¿ h&agrave;ng Ä‘áº§u táº¡i Viá»‡t Nam, ph&ograve;ng kh&aacute;m Ä‘á»‹nh hÆ°á»›ng trá»Ÿ th&agrave;nh má»™t Ä‘á»‹a chá»‰ quen thuá»™c v&agrave; tin cáº­y cá»§a má»i gia Ä‘&igrave;nh, c&aacute; nh&acirc;n.&nbsp;<br />\nTrang thiáº¿t bá»‹ y táº¿ hiá»‡n Ä‘áº¡i v&agrave; Ä‘á»™i ngÅ© y b&aacute;c sÄ© gi&agrave;u kinh nghiá»‡m l&agrave; Ä‘iá»ƒm máº¡nh cá»§a&nbsp;ph&ograve;ng kh&aacute;m.<br />\nNhÆ°ng tr&ecirc;n háº¿t, sá»±&nbsp;<em>Táº¬N T&Acirc;M v&agrave; CHIA Sáºº&nbsp;</em>cá»§a má»i nh&acirc;n vi&ecirc;n ph&ograve;ng kh&aacute;m vá»›i má»i bá»‡nh nh&acirc;n v&agrave; gia Ä‘&igrave;nh há» má»›i ch&iacute;nh l&agrave; phÆ°Æ¡ng ch&acirc;m hoáº¡t Ä‘á»™ng cá»§a ch&uacute;ng t&ocirc;i.', 1, '21.033332,105.850007');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `ten`, `phone`, `email`, `content`, `trangthai`) VALUES
(2, 'Tráº§n Ngá»c Tháº¯ng', '0974324940', 'tranngocthang89@gmail.com', 'Xin chÃ o, báº¡n tÃªn gÃ¬?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`),
  FULLTEXT KEY `ten_3` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chuyên khoa ' AUTO_INCREMENT=35 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `ten`, `trangthai`) VALUES
(1, 'Máº¯t', 1),
(3, 'RÄƒng hÃ m máº·t', 1),
(4, 'Nhi', 1),
(5, 'Äa khoa', 1),
(6, 'Sáº£n phá»¥ khoa', 1),
(7, 'Giáº£i pháº©u tháº©m má»¹', 1),
(8, 'Tai mÅ©i há»ng', 1),
(9, 'Da liá»…u', 1),
(10, 'X-Quang - SiÃªu Ã¢m', 1),
(11, 'Ngoáº¡i', 1),
(12, 'KÃ­nh thuá»‘c', 1),
(13, 'CÆ¡ sá»Ÿ Ä‘iá»u trá»‹ cáº¯t cÆ¡n & giáº£i Ä‘á»™c', 1),
(30, 'Lao', 1),
(31, 'XÃ©t nghiá»‡m', 1),
(32, 'Ung bÆ°á»›u', 1),
(33, 'Niá»‡u', 1),
(34, 'CÆ¡ sá»Ÿ dá»‹ch vá»¥ y táº¿', 1);

-- --------------------------------------------------------

--
-- Table structure for table `distributes`
--

DROP TABLE IF EXISTS `distributes`;
CREATE TABLE IF NOT EXISTS `distributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nhà phân phối' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `distributes`
--

INSERT INTO `distributes` (`id`, `ten`, `gioithieu`, `trangthai`) VALUES
(1, 'CÃ´ng ty TNHH Thá»±c pháº©m chá»©c nÄƒng LOHHA - VIá»†T NAM', 'CÃ´ng ty TNHH Thá»±c pháº©m chá»©c nÄƒng LOHHA - VIá»†T NAM', 1),
(2, 'CÃ´ng ty TNHH Viá»…n Báº±ng - VIá»†T NAM', 'CÃ´ng ty TNHH Viá»…n Báº±ng - VIá»†T NAM', 1),
(3, 'CÃ´ng ty Cá»• Pháº§n DÆ°á»£c Pháº©m Vinh Gia - VIá»†T NAM', 'CÃ´ng ty Cá»• Pháº§n DÆ°á»£c Pháº©m Vinh Gia - VIá»†T NAM', 1),
(4, 'CÃ´ng ty TNHH DÆ°á»£c pháº©m Viá»‡t Anh - VIá»†T NAM', 'CÃ´ng ty TNHH DÆ°á»£c pháº©m Viá»‡t Anh - VIá»†T NAM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
CREATE TABLE IF NOT EXISTS `drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giakekhai` decimal(10,0) NOT NULL,
  `dangbaoche` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `types_id` int(11) NOT NULL,
  `thanhphan` text COLLATE utf8_unicode_ci NOT NULL,
  `hamluong` text COLLATE utf8_unicode_ci NOT NULL,
  `chidinh` text COLLATE utf8_unicode_ci NOT NULL,
  `lieudung` text COLLATE utf8_unicode_ci NOT NULL,
  `baoquan` text COLLATE utf8_unicode_ci NOT NULL,
  `manus_id` int(11) NOT NULL,
  `distributes_id` int(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ten_2` (`ten`),
  FULLTEXT KEY `ten` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=471 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(465, 'Becberin', '1234', '5', '1610mg x 365 viÃªn/ lá»', 1, '<p>DÆ°á»£c t&aacute; vá»«a Ä‘á»§</p>\r\n', '<p>1 2 3 4mg/vi&ecirc;n</p>\r\n', '<p>Äi ngo&agrave;i</p>\r\n', '20v/láº§n', '<p>Tho&aacute;ng m&aacute;t</p>\r\n', 1, 1, 0, 'cf0a93c26b15fbc54d61d8b0c0e2de50_IMG_1938.jpg'),
(466, 'QPLUS SUPER', 'VN-9074-09', '135', 'ViÃªn nang má»m - Lá» 30 viÃªn', 2, 'Má»—i viÃªn nang má»m chá»©a 30mg Coenzyme Q10', 'Pháº§n thÃ´ng tin tham kháº£o â€“ DÃ¹ng thuá»‘c theo chá»‰ Ä‘á»‹nh cá»§a BÃ¡c sÄ©', 'DÃ¹ng Ä‘iá»u trá»‹ há»— trá»£ : bá»‡nh cÆ¡ tim, thiá»ƒu nÄƒng tuáº§n hoÃ n, bá»‡nh thiáº¿u mÃ¡u á»Ÿ tim, tÄƒng huyáº¿t Ã¡p Ä‘á»™ng máº¡ch, chá»©ng loáº¡n nhá»‹p Ä‘i kÃ¨m thiá»ƒu nÄƒng tuáº§n hoÃ n, ngoÃ i ra thuá»‘c cÃ²n Ä‘Æ°á»£c dÃ¹ng Ä‘á»ƒ:\n- chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng miá»…n dá»‹ch\n- phÃ²ng vÃ  Ä‘iá»u trá»‹ xÆ¡ vá»¯a Ä‘á»™ng máº¡ch\n- Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t do thiáº¿u há»¥t coenzym Q10 Ä‘áº·c biá»‡t á»Ÿ ngÆ°á»i cao tuá»•i.\n\nTÃ¡c dá»¥ng phá»¥:\n\nThuá»‘c thÆ°á»ng Ä‘Æ°á»£c dung náº¡p tá»‘t. Hiáº¿m khi xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng cá»§a tÃ¡c dá»¥ng khÃ´ng mong muá»‘n (khoáº£ng 1,4%)nhÆ°: buá»“n nÃ´n, nÃ´n, tiÃªu cháº£y, máº¥t cáº£m giÃ¡c khi Äƒn, Ä‘á» da\nCáº£nh bÃ¡o Ä‘áº·c biá»‡t vÃ  tháº­n trá»ng Ä‘áº·c biá»‡t khi sá»­ dá»¥ng: Trong quÃ¡ trÃ¬nh Ä‘iá»u trá»‹ cÃ³ thá»ƒ xuáº¥t hiá»‡n tÄƒng khÃ´ng Ä‘Ã¡ng ká»ƒ ná»“ng Ä‘á»™ dehydrogenase vÃ  tranaminase trong mÃ¡u.\n\nChÃº Ã½ Ä‘á» phÃ²ng:\n\nPhá»¥ ná»¯ cÃ³ thai vÃ  cho con bÃº: TrÃ¡nh dÃ¹ng cho phá»¥ ná»¯ cÃ³ thai hoáº·c Ä‘ang cho con bÃº vÃ¬ Ä‘á»™ an toÃ n chÆ°a xÃ¡c Ä‘á»‹nh.\náº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c: thuá»‘c khÃ´ng áº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c\ncoenzym Q10 cÃ³ thá»ƒ lÃ m tÄƒng tÃ¡c dá»¥ng cá»§a thuá»‘c lá»£i tiá»ƒu, cÃ¡c thuá»‘c glycosid trá»£ tim vÃ  nitrat.\nThuá»‘c lÃ m tÄƒng tÃ¡c dá»¥ng chá»‘ng oxy hÃ³a cá»§a vitamin E, thuá»‘c cÃ³ thá»ƒ lÃ m kÃ©o dÃ i thá»i gian tÃ¡c dá»¥ng giáº£m huyáº¿t Ã¡p cá»§a enalapril vÃ  nitrendipin. coenzym Q10 cÃ³ tÃ¡c dá»¥ng Ä‘á»“ng váº­n vá»›i L-canrnitin trong quÃ¡ trÃ¬nh chuyá»ƒn hÃ³a vÃ  tuáº§n hoÃ n. Thuá»‘c cÃ³ thá»ƒ lÃ m giáº£m nguy cÆ¡ xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng áº£nh hÆ°á»Ÿng suy giáº£m lÃªn cÆ¡ tim cá»§a cÃ¡c thuá»‘c nhÃ³m giáº£i phÃ³ng adrenolytic bÃªta, kÃ¬m hÃ£m tÃ¡c dá»¥ng chá»‘ng Ä‘Ã´ng cá»§a warpharin. coenzym Q10 cÃ²n lÃ m giáº£m Ä‘á»™c tÃ­nh cá»§a cÃ¡c khÃ¡ng sinh chá»‘ng ung thÆ° thuá»™c nhÃ³n antracyclin.\nSá»­ dá»¥ng quÃ¡ liá»u: chÆ°a cÃ³ dá»¯ liá»‡u vá» viá»‡c Sá»­ dá»¥ng quÃ¡ liá»u coenzym Q10', 'Thuá»‘c cáº§n Ä‘Æ°á»£c uá»‘ng sau khi Äƒn Liá»u dÃ¹ng cho ngÆ°á»i lá»›n vÃ  tráº» em trÃªn 15 tuá»•i: - Ä‘iá»u trá»‹ há»— trá»£ trong bá»‡nh thuá»™c há»‡ tuáº§n hÃ²a: 60-80mg (2-6 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng kháº£ nÄƒng miá»…n dá»‹ch: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Vá»¯a xÆ¡ Ä‘á»™ng máº¡ch: 30-300mg (1-10 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n. Hoáº·c theo chá»‰ Ä‘á»‹nh cá»§a bÃ¡c sÄ©. Coenzym Q10 cÃ³ thá»ƒ dÃ¹ng lÃ¢u dÃ i, hiá»‡u quáº£ lÃ¢m sÃ n thÆ°á»ng Ä‘Æ°á»£c tháº¥y sau chu ká»³ Ä‘iá»u trá»‹ dÃ i ngÃ y. Sau chu ká»³ dÃ¹ng dÃ i ngÃ y, khÃ´ng nÃªn dá»«ng Ä‘á»™t ngá»™t, náº¿u khÃ´ng há»i Ã½ kiáº¿n bÃ¡c sÄ©.', 'Äá»ƒ nÆ¡i khÃ´ thoÃ¡ng, trÃ¡nh Ã¡nh sÃ¡ng', 1, 2, 1, 'qplussupper.jpg'),
(467, 'SlimFit USA', 'xxx', '1', 'Lá» 30 ViÃªn', 1, 'Nutratherm Thermogenic Complex: Micronized Green Tea Leaf extract, Cactus extract, Clary Sage extract\r\nCortfem: Beta-sisosterol, Phophatidylserine, Theanine\r\nAquaplex Water Removal Complex: Dandelion leaf and root, Uva Ursi extract, French maritime pine extract\r\nXtend Absorption Complex: Cellulose ethers\r\nVitamin D (as Cholcalciferol)\r\nVitamin B-6 (as Pyridonxine Hydrochloride) Folic Acid\r\nVitamin B-12 (as Cyanocobalamin)\r\nCalcium (as Calcium Hydroxide/Carbonate)\r\nGelatin, magiÃª stearate.', 'xxx', '- Tan má»¡ tá»« bÃªn trong nhanh chÃ³ng.\r\n- TÄƒng cÆ°á»ng nÄƒng lÆ°á»£ng cÆ¡ thá»ƒ.\r\n- NgÄƒn cháº·n chuyá»ƒn hoÃ¡ cháº¥t thá»«a thÃ nh má»¡ tÃ­ch tá»¥.\r\n- Loáº¡i tháº£i Ä‘á»™c tá»‘ trong cÆ¡ thá»ƒ\r\n- Chá»‘ng lÃ£o hoÃ¡ giÃºp da tÆ°Æ¡i tráº».', '- Uá»‘ng 1 viÃªn/ngÃ y trÆ°á»›c khi Äƒn sÃ¡ng vá»›i nÆ°á»›c lá»c. - Xin Äƒn uá»‘ng Ä‘Ãºng bá»¯a, Ä‘á»«ng bá» bá»¯a Äƒn nÃ o. - Sau khi Ä‘Ã£ Ä‘Æ°á»£c sá»‘ cÃ¢n náº·ng nhÆ° mÃ¬nh mong muá»‘n, nÃªn uá»‘ng 1 tuáº§n 3 viÃªn Ä‘á»ƒ giá»¯ nguyÃªn sá»‘ cÃ¢n.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'slim-fit-2.jpg'),
(468, 'Sá»¯a Ong ChÃºa Royal Jelly Costar ', 'xxx', '1', '1610mg x 365 viÃªn/ lá»', 1, 'Sá»¯a Ong ChÃºa Ãšc Vitamin nhÃ³m A, B, C, D vÃ  E; gá»“m 18 amino acids, Protein vÃ  acid bÃ©o vÃ o 10-HDA giÃºp tÃ¡i táº¡o lÃ n da mang Ä‘áº¿n cho báº¡n 1 lÃ n da má»‹n mÃ ng vÃ  khoáº» máº¡nh.\r\n', 'xxx', 'GiÃºp da chá»‘ng lÃ£o hÃ³a, nÃ¡m, sáº¡m do tÃ¡c Ä‘á»™ng cá»§a mÃ´i trÆ°á»ng vÃ  nháº¥t lÃ  do thay Ä‘á»•i ná»™i tiáº¿t tá»‘ á»Ÿ phá»¥ ná»¯ (trong thá»i ká»³ mÃ£n kinh), vÃ¬ Sá»¯a Ong ChÃºa lÃ m thay Ä‘á»•i táº­n gá»‘c cá»§a nguyÃªn nhÃ¢n gÃ¢y nÃ¡m da, sáº¡m da, giÃºp da dáº§n dáº§n trá»Ÿ nÃªn tráº¯ng há»“ng, cÄƒng má»‹n.\r\n- GiÃºp an tháº§n, ngá»§ ngon, ngá»§ yÃªn giáº¥c, phÃ²ng chá»‘ng máº¥t ngá»§.\r\n- GiÃºp trá»‹ bá»‡nh cao mÃ¡u, cao huyáº¿t Ã¡p, má»¡ trong mÃ¡u, tiá»ƒu Ä‘Æ°á»ng, viÃªm gan A,B,C,D vÃ  cÃ¡c bá»‡nh vá» gan.', '- Uá»‘ng 1 viÃªn 1 ngÃ y vÃ o buá»•i sÃ¡ng. - KhÃ´ng dÃ¹ng cho tráº» em tá»« 8 Ä‘áº¿n 12 tuá»•i, nhá»¯ng ngÆ°á»i bá»‹ hen suyá»…n vÃ  bá»‹ dá»‹ á»©ng vá»›i pháº¥n hoa.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(469, 'QPLUS SUPER 1', '1234', '1', '1610mg x 365 viÃªn/ lá»', 1, '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(470, 'Safaria', 'VN-16636-13', '120000', 'ViÃªn', 1, 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', '`- SAFARIA chá»‰ Ä‘á»‹nh Ä‘iá»u trá»‹ nhiá»…m khuáº©n há»—n há»£p táº¡i &acirc;m Ä‘áº¡o, Vi&ecirc;m &acirc;m Ä‘áº¡o k&egrave;m theo huyáº¿t tráº¯ng, ngá»©a do nhiá»…m khuáº©n v&agrave; náº¥m, Vi&ecirc;m &acirc;m Ä‘áº¡o do Trichomonas. - SAFARIA Ä‘Æ°á»£c chá»‰ Ä‘á»‹nh Ä‘á»ƒ Ä‘iá»u trá»‹ c&aacute;c bá»‡nh náº¥m á»Ÿ &acirc;m há»™, &acirc;m Ä‘áº¡o, cÅ©ng nhÆ° bá»‡nh náº¥m Candida.', 'NgÆ°á»i lá»›n: - Vá»›i viÃªm Ã¢m Ä‘áº¡o cáº¥p tÃ­nh: má»—i láº§n 1 viÃªn, ngÃ y 1-2 láº§n (sÃ¡ng vÃ  tá»‘i). Sau Ä‘Ã³ duy trÃ¬ 1 viÃªn vÃ o buá»•i tá»‘i trong vÃ²ng 6-8 ngÃ y. - ViÃªm Ã¢m Ä‘áº¡o máº¡n tÃ­nh: 1 viÃªn vÃ o buá»•i tá»‘i trong 14 ngÃ y. - PhÃ²ng nhiá»…m náº¥m Ã¢m Ä‘áº¡o: 1 viÃªn vÃ o buá»•i tá»‘i trong 7-10 ngÃ y. LÆ°u Ã½ khi sá»­ dá»¥ng: -TrÆ°á»›c khi Ä‘áº·t, Ä‘á»ƒ viÃªn thuá»‘c vÃ o ngÄƒn Ä‘Ã¡ tá»§ láº¡nh khoáº£ng 5-10 phÃºt, rá»­a sáº¡ch Ã¢m Ä‘áº¡o, Ä‘áº·t sÃ¢u vÃ o Ã¢m Ä‘áº¡o má»—i tá»‘i trÆ°á»›c khi Ä‘i ngá»§. -Äá»ƒ cÃ³ Ä‘Æ°á»£c káº¿t quáº£ Ä‘iá»u trá»‹ tá»‘t nháº¥t, dÃ¹ng ngÃ³n tay Ä‘áº©y viÃªn thuá»‘c vÃ o cÃ ng sÃ¢u trong Ã¢m Ä‘áº¡o cÃ ng tá»‘t.', 'Báº£o quáº£n nÆ¡i kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng, nhiá»‡t Ä‘á»™ báº£o quáº£n tá»« 15-25oC. Giá»¯ thuá»‘c xa táº§m vá»›i tráº» em.', 1, 1, 1, 'ss'),
(9, 'Ciloxan Drop 0.3% 5ml', '0455', '73', 'Lá» 5 ml', 1, 'Ciprofloxacin 0,3%', 'Ciprofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '1'),
(10, 'Ciprofloxacin 0,3%', '0454', '3', 'Lá»', 1, 'Ciprofloxacin 0,3%', 'Ciprofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '2'),
(11, 'Philproeye', '0453', '55', 'Lá»', 1, 'Ciprofloxacin 0,3%', 'Ciprofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '3'),
(12, 'Samchundangcipmax eye drops', '0452', '55', 'Lá»', 1, 'Ciprofloxacin 0,3%', 'Ciprofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '4'),
(13, 'Ciplox', '0451', '36', 'Tube', 1, 'Ciprofloxacin 0,3%', 'Ciprofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '5'),
(14, 'Zymar 3mg/ ml x 5ml', '0450', '73', 'Lá» 5ml', 1, 'Gatifloxacin 0,3%', 'Gatifloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '6'),
(15, 'Gentinex', '0449', '11', 'Lá» 5 ml', 1, 'Gentamycin 0,3%', 'Gentamycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '7'),
(16, 'Gentamycin', '0448', '3', 'Tub', 1, 'Gentamycin 0,3%', 'Gentamycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '8'),
(17, 'Gentamicin 5g', '0447', '4', 'Tube', 1, 'Gentamycin sulfat 0,3%', 'Gentamycin sulfat 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '9'),
(18, 'Cravit Ophthalmic Solution 5mg/ ml', '0446', '87', 'Lá» 5ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '10'),
(19, 'Eylevox ophthalmic Drops', '0445', '45', 'Lá» 5 ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '11'),
(20, 'Lectacin', '0444', '57', 'Lá» 5 ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '12'),
(21, 'Levoeye ', '0443', '57', 'Lá» 5 ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '13'),
(22, 'Medflocin', '0442', '57', 'Lá» 5ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '14'),
(23, 'Philevomels eye drops', '0441', '45', 'Lá» 5 ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '15'),
(24, 'Levotop 0.5%', '0440', '44', 'Lá» 5 ml', 1, 'Levofloxacine 0,5%', 'Levofloxacine 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '16'),
(25, 'Euronamicin', '0439', '42', 'Lá» 5 ml', 1, 'Lomefloxacin 0,3%', 'Lomefloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '17'),
(26, 'Vigamox Drop 0.5% 5ml', '0438', '96', 'Lá» 5ml', 1, 'Moxifloxacin HCL 0,5%', 'Moxifloxacin HCL 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '18'),
(27, 'Apdrops 5ml', '0437', '53', 'Lá» 5ml', 1, 'Moxifloxacin HCL 0,5%', 'Moxifloxacin HCL 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '19'),
(28, 'Isotic Moxicin', '0436', '22', 'Lá»', 1, 'Moxifloxacin 0,5%', 'Moxifloxacin 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '20'),
(29, 'Oflovid ophthalmic solution 3mg/ ml x 5ml', '0435', '59', 'Lá» 5ml', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '21'),
(30, 'Beefloxacin', '0434', '40', 'Lá» 5 ml', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '22'),
(31, 'Biotra', '0433', '40', 'Lá» 5 ml', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '23'),
(32, 'Ofus', '0432', '29', 'Lá»', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '24'),
(33, 'Quinovid', '0431', '40', 'Lá» 5 ml', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '25'),
(34, 'Ofley Drops', '0430', '12', 'Lá» 5 ml', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '26'),
(35, 'Ofloxacin 0,3%', '0429', '4', 'Lá»', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '27'),
(36, 'Oflovid ophthalmic ointment 0,3% x 3,5g', '0428', '75', 'Tub 3,5g', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '28'),
(37, 'Quinovid', '0427', '53', 'Tub 3,5g', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '29'),
(38, 'Ofleye', '0426', '16', 'Tube 5g', 1, 'Ofloxacin 0,3%', 'Ofloxacin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '30'),
(39, 'Tetracyclin', '0425', '2', 'Tub', 1, 'Tetracyclin 1%', 'Tetracyclin 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '31'),
(40, 'Brulamycin', '0424', '37', 'Lá» 5ml', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '32'),
(41, 'Tobrin', '0423', '37', 'Lá» 5 ml', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '33'),
(42, 'Eyracin ophthalmic solution', '0422', '30', 'Lá»', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '34'),
(43, 'Tobcimax', '0421', '30', 'Lá»', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '35'),
(44, 'Todencine 5ml', '0420', '8', 'Lá»', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '36'),
(45, 'Tobralyr 5ml', '0419', '23', 'Lá» 5 ml', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '37'),
(46, 'Tobrex Oint 3.5g', '0418', '52', 'Tub 3,5g', 1, 'Tobramycin 0,3%', 'Tobramycin 0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '38'),
(47, 'Flumetholon Eye drop 0,02% x 5ml', '0417', '26', 'Lá» 5ml', 1, 'Fluorometholon 0,02%', 'Fluorometholon 0,02%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 1, 1, 1, '39'),
(48, 'Flumetholon Eye drop 0,1% x 5ml', '0416', '29', 'Lá» 5ml', 1, 'Fluorometholon 0,1%', 'Fluorometholon 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '40'),
(49, 'FML Liquifilm 0,1% 5ml ', '0415', '29', 'Lá» 5 ml', 1, 'Fluorometholon 0,1%', 'Fluorometholon 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '41'),
(50, 'Flarex Drop 5ml', '0414', '38', 'Lá» 5 ml', 1, 'Fluorometholon 0,1%', 'Fluorometholon 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '42'),
(51, 'Hydrocortison', '0413', '10', 'Tub 5g', 1, 'Hydocortison acetat 50mg', 'Hydocortison acetat 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '43'),
(52, 'Lotemax', '0412', '230', 'Lá» 5ml', 1, 'Loteprednol etabonate 0,5%', 'Loteprednol etabonate 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '44'),
(53, 'Pred Forte 5ml', '0411', '30', 'Lá» 5ml', 1, 'Prednisolon 1%', 'Prednisolon 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '45'),
(54, 'Mediclophencid H', '0410', '11', 'Tube 5g', 1, 'Cloramphenicol 40mg + Hydrocortisonacetat 30 mg', 'Cloramphenicol 40mg + Hydrocortisonacetat 30 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '46'),
(55, 'Frakidex', '0409', '37', 'Lá» 5 ml', 1, 'Framycetin 31500 IU +Dexamethason 5 mg', 'Framycetin 31500 IU +Dexamethason 5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '47'),
(56, 'Isotic Moxisone', '0408', '24', 'Lá» 5 ml', 1, 'Moxifloxacin HCl 0,5%+ Dexamethason phosphat 0,1%', 'Moxifloxacin HCl 0,5%+ Dexamethason phosphat 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '48'),
(57, 'Vigadexa Sol 5ml', '0407', '110', 'Lá» 5ml', 1, 'Moxifloxacin HCl 0,5%+ Dexamethason phosphat 0,1%', 'Moxifloxacin HCl 0,5%+ Dexamethason phosphat 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '49'),
(58, 'Oziadecordex-N', '0406', '40', 'Lá» 5 ml', 1, 'Neomycin sulfat 3,5 mg/ml + Dexamethason 1 mg/ml', 'Neomycin sulfat 3,5 mg/ml + Dexamethason 1 mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '50'),
(59, 'Maxitrol Oint Tube 3.5g', '0405', '52', 'Tub 3,5g', 1, 'Neomycin sulfat 3500UI/g +PolymycinB sulfat 6000UI/g +Dexamethason 0,1%', 'Neomycin sulfat 3500UI/g +PolymycinB sulfat 6000UI/g +Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '51'),
(60, 'Eyrus ophthalmic Drops', '0404', '53', 'Lá» 10 ml', 1, 'Neomycin sulfat 3500UI/ml + PolymycinB sulfat 6000 UI/ml + Dexamethason 0,1%', 'Neomycin sulfat 3500UI/ml + PolymycinB sulfat 6000 UI/ml + Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '52'),
(61, 'Maxitrol Drop 5ml', '0403', '42', 'Lá» 5 ml', 1, 'Neomycin sulfat 3500UI/ml + PolymycinB sulfat 6000 UI/ml + Dexamethason 0,1%', 'Neomycin sulfat 3500UI/ml + PolymycinB sulfat 6000 UI/ml + Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '53'),
(62, 'Poly-Pred Liquifilm 5ml', '0402', '39', 'Lá» 5ml', 1, 'Neomycin sulfat 3500UI/ml +PolymycinB sulfat 6000UI/ml +Prednisolon acetat', 'Neomycin sulfat 3500UI/ml +PolymycinB sulfat 6000UI/ml +Prednisolon acetat', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '54'),
(63, 'Dex-Tobrin', '0401', '47', 'Lá» 5 ml', 1, 'Tobramycin 0,3% + Dexamethason 0,1%', 'Tobramycin 0,3% + Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '55'),
(64, 'Tobradex Drop 5ml', '0400', '48', 'Lá» 5ml', 1, 'Tobramycin 0,3% +Dexamethason 0,1%', 'Tobramycin 0,3% +Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '56'),
(65, 'Tobradex Oint 0.3% 3.5g', '0399', '53', 'Tub 3,5g', 1, 'Tobramycin 0,3% +Dexamethason 0,1%', 'Tobramycin 0,3% +Dexamethason 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '57'),
(66, 'Natacyn Drop 5% 15ml', '0398', '956', 'Lá» 15 ml', 1, 'Natamycin 5%', 'Natamycin 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '58'),
(67, 'Aumnata', '0397', '101', 'Lá» 5ml', 1, 'Natamycin 5%', 'Natamycin 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '59'),
(68, 'Virupos', '0396', '132', 'Tub', 1, 'Aciclovir 3%', 'Aciclovir 3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '60'),
(69, 'Mediclovir', '0395', '52', 'Tub', 1, 'Aciclovir 3%', 'Aciclovir 3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '61'),
(70, 'Betoptic S Drop 0.25% 5ml', '0394', '91', 'Lá» 5 ml', 1, 'Betaxolon 0,25%', 'Betaxolon 0,25%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '62'),
(71, 'Ganfort 3ml', '0393', '268', 'Lá» 3 ml', 1, 'Bimatoprost 0,3mg/ml + Timolol 5 mg/ml', 'Bimatoprost 0,3mg/ml + Timolol 5 mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '63'),
(72, 'Lumigan 0,3mg/ ml x 3ml', '0392', '264', 'Lá» 3 ml', 1, 'Bimatoprost 0,03%', 'Bimatoprost 0,03%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '64'),
(73, 'Alphagan P 0,15% x 5ml', '0391', '108', 'Lá» 5ml', 1, 'Brimonidine tartrate 0,15%', 'Brimonidine tartrate 0,15%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '65'),
(74, 'Brimonidine Tartrate Drop 0.2% 5ml', '0390', '82', 'Lá» 5 ml', 1, 'Brimonidine tartrate 0,2%', 'Brimonidine tartrate 0,2%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '66'),
(75, 'Combigan 5ml', '0389', '192', 'Lá» 5 ml', 1, 'Brimonidine 0,2%+ Timolol 0,5%', 'Brimonidine 0,2%+ Timolol 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '67'),
(76, 'Azopt Drop 1% 5ml', '0388', '122', 'Lá» 5 ml', 1, 'Brinzolamide 1%', 'Brinzolamide 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '68'),
(77, 'Lacoma', '0387', '136', 'Lá» 2,5ml', 1, 'Latanoprost 0,005%', 'Latanoprost 0,005%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '69'),
(78, 'Duotrav (Bak Free) 2.5ml', '0386', '336', 'Lá» 2,5ml', 1, 'Travoprost 40mcg/ml, Timolol 5mg/ml', 'Travoprost 40mcg/ml, Timolol 5mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '70'),
(79, 'Occumol 0.25%', '0385', '33', 'Lá» 5ml', 1, 'Timolol 5mg/ml + travoprost 40mcg/ml', 'Timolol 5mg/ml + travoprost 40mcg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '71'),
(80, 'Timolol Maleate Drop 0.5% 5ml', '0384', '45', 'Lá» 5ml', 1, 'Timolol maleate 0,25%', 'Timolol maleate 0,25%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '72'),
(81, 'Occumol 0.5%', '0383', '39', 'Lá» 5ml', 1, 'Timolol maleate 0,5%', 'Timolol maleate 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '73'),
(82, 'Travatan Drop 2.5Ml (Bak Free)', '0382', '246', 'Lá» 2,5ml', 1, 'Travoprost 0,04mg/ml', 'Travoprost 0,04mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '74'),
(83, 'Isopto Carpine Drop 2% 15ml', '0381', '58', 'Lá» 15 ml', 1, 'Pilocarpine hydrochlorid 2%', 'Pilocarpine hydrochlorid 2%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '75'),
(84, 'Eyaren ophthalmic Drops', '0380', '31', 'Lá» 10 ml', 1, 'Kali iodid 3 mg +Natri iodid 3 mg', 'Kali iodid 3 mg +Natri iodid 3 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '76'),
(85, 'Posod eye drop', '0379', '31', 'Lá» 10 ml', 1, 'Kali iodid 3 mg +Natri iodid 3 mg', 'Kali iodid 3 mg +Natri iodid 3 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '77'),
(86, 'Kary Uni Ophthalmic Suspension 0,005% x 5ml', '0378', '23', 'Lá» 5 ml', 1, 'Pirenoxin 0,005%', 'Pirenoxin 0,005%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '78'),
(87, 'Liposic tub 10g', '0377', '59', 'Tub 10 g', 1, 'Carbomer 2 mg, triglycerides 100 mg', 'Carbomer 2 mg, triglycerides 100 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '79'),
(88, 'Optive 15ml', '0376', '81', 'Lá» 15 ml', 1, 'Carboxy methylcellulose natri 0,5% + Glycerin 0,9%', 'Carboxy methylcellulose natri 0,5% + Glycerin 0,9%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '80'),
(89, 'Refresh Liquigel 15ml', '0375', '84', 'Lá» 15 ml', 1, 'Carboxy methylcellulose sodium 1%', 'Carboxy methylcellulose sodium 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '81'),
(90, 'Refresh Tears 15ml', '0374', '62', 'Lá» 15 ml', 1, 'Carboxymethylcellulose Sodium 0,5%', 'Carboxymethylcellulose Sodium 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '82'),
(91, 'Refresh Plus 5mg/ ml x 0,4ml', '0373', '2', 'á»ng 0,4 ml (há»™p 30 á»‘ng)', 1, 'Carboxy methylcellulose sodium 0,5%', 'Carboxy methylcellulose sodium 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '83'),
(92, 'Poly Tears Drop 15ml', '0372', '33', 'Lá»', 1, 'Dextran 70, Hydroxypropyl Methylcelulose, 0,1%/0,3%', 'Dextran 70, Hydroxypropyl Methylcelulose, 0,1%/0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '84'),
(93, 'Dextose', '0371', '32', 'Lá» 15ml', 1, 'Dextran 70, Hydroxypropyl Methylcelulose, 0,1%/0,3%', 'Dextran 70, Hydroxypropyl Methylcelulose, 0,1%/0,3%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '85'),
(94, 'Blueye eye drop', '0370', '32', 'Lá» 15ml', 1, 'Dextran 70: 1 mg, Hypromellose: 3 mg', 'Dextran 70: 1 mg, Hypromellose: 3 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '86'),
(95, 'Poly Tears Drop 10ml', '0369', '29', 'Lá» 10 ml', 1, 'Hydroxypropyl methylcellulose 3mg/ml', 'Hydroxypropyl methylcellulose 3mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '87'),
(96, 'GenTeal Eye drop 3mg/ ml x 10ml', '0368', '70', 'Lá»', 1, 'Hydroxypropylmethyl - cellulose 3mg/ ml', 'Hydroxypropylmethyl - cellulose 3mg/ ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '88'),
(97, 'GenTeal gel 30mg/ 22mg x 10g', '0367', '105', 'Tuýp', 1, 'Hypromellose, Carbomer 30mg/ 22mg', 'Hypromellose, Carbomer 30mg/ 22mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '89'),
(98, 'Systane Drop 15ml', '0366', '79', 'Lá» 15ml', 1, 'Polyethylen glycol 0,4% + Propylen glycol 0,3 %', 'Polyethylen glycol 0,4% + Propylen glycol 0,3 %', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '90'),
(99, 'Systane Ultra Drop 5ml', '0365', '64', 'Lá» 5 ml', 1, 'Polyethylen glycol 0,4% + Propylen glycol 0,3 %', 'Polyethylen glycol 0,4% + Propylen glycol 0,3 %', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '91'),
(100, 'Oculotect Fluid Eye drop 50mg/ ml x 10ml', '0364', '40', 'Lá»', 1, 'Povidone K25 (Poly-vidone) 50mg/ ml', 'Povidone K25 (Poly-vidone) 50mg/ ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '92'),
(101, 'Taufon 4%', '0363', '14', 'Tép', 1, 'Taurin 40mg/ml', 'Taurin 40mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '93'),
(102, 'Clivent', '0362', '53', 'Lá»', 1, 'Cromoglycate natri 2%', 'Cromoglycate natri 2%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '94'),
(103, 'Zaditen ophtha 0,25mg/ ml', '0361', '115', 'Lá» 5 ml', 1, 'Ketotifen hydrogen fumarat 0.025%', 'Ketotifen hydrogen fumarat 0.025%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '95'),
(104, 'Ketolerg eye', '0360', '49', 'Lá» 5 ml', 1, 'Ketotifen hydrogen fumarat 0.025%', 'Ketotifen hydrogen fumarat 0.025%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '96'),
(105, 'Opcon A', '0359', '44', 'Lá» 15 ml', 1, 'Naphazolin HCL 0,2675 mg + Pheniramine maleate 3,15 mg', 'Naphazolin HCL 0,2675 mg + Pheniramine maleate 3,15 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '97'),
(106, 'Pataday Drop 0.2% 2.5ml', '0358', '137', 'Lá» 2,5ml', 1, 'Olopatadine hydrochlorid 0,2%', 'Olopatadine hydrochlorid 0,2%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '98'),
(107, 'Alegysal Eye drop 0,1% x 5ml', '0357', '77', 'Lá» 5ml', 1, 'Pemirolast kali 0,1%', 'Pemirolast kali 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '99'),
(108, 'Voltaren Ophtha 5ml', '0356', '101', 'Lá» 5ml', 1, 'Diclofenac sodium 0,1%', 'Diclofenac sodium 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '100'),
(109, 'Cl-nac', '0355', '40', 'Lá» 5 ml', 1, 'Diclofenac sodium 0,1%', 'Diclofenac sodium 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '101'),
(110, 'Indocollyre', '0354', '70', 'Lá» 5ml', 1, 'Indomethacin 0,1%', 'Indomethacin 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '102'),
(111, 'Acular 5ml', '0353', '71', 'Lá» 5ml', 1, 'Ketorolac tromethamin 0,5%', 'Ketorolac tromethamin 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '103'),
(112, 'Nevanac 0,1% 5ml ', '0352', '160', 'Lá»', 1, 'Nepafenac, 1mg/ml', 'Nepafenac, 1mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '104'),
(113, 'Minndrop', '0351', '53', 'Lá» 15 ml', 1, 'Allatoin 30 mg + pyridoxine 1,5 mg + Tocopherol 1,5 mg + Aminoethyl sulfonic 30 mg + Natri chondroitin 15 mg', 'Allatoin 30 mg + pyridoxine 1,5 mg + Tocopherol 1,5 mg + Aminoethyl sulfonic 30 mg + Natri chondroitin 15 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '105'),
(114, 'Sancoba', '0350', '47', 'Lá»', 1, 'Cyanocobalamin 0,02%', 'Cyanocobalamin 0,02%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '106'),
(115, 'Corneregel', '0349', '54', 'Tub', 1, 'Dexpanthenol 50 mg, carbomere', 'Dexpanthenol 50 mg, carbomere', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '107'),
(116, 'Correctol Drop 0.1% 10ml', '0348', '28', 'Lá» 10 ml', 1, 'Dinatri Inosine monophosphat 2H2O, Chlorhexidin 0,1%', 'Dinatri Inosine monophosphat 2H2O, Chlorhexidin 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '108'),
(117, 'Bausch & Lomb Moisture eyes drops', '0347', '44', 'Lá» 15 ml', 1, 'Glycerin 0,3%; propylen glycol 0,1%', 'Glycerin 0,3%; propylen glycol 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '109'),
(118, 'Bausch & Lomb Computer eyes drops', '0346', '44', 'Lá» 15 ml', 1, 'Glycerin 10 mg', 'Glycerin 10 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '110'),
(119, 'Sanlein Eye drop 0,1% x 5ml', '0345', '66', 'Lá» 5 ml', 1, 'Natri hyaluronate 0,1%', 'Natri hyaluronate 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '111'),
(120, 'Hylene', '0344', '35', 'Lá» 5 ml', 1, 'Natri hyaluronate 0,1%', 'Natri hyaluronate 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '112'),
(121, 'TearBalance', '0343', '65', 'Lá» 5 ml', 1, 'Natri hyaluronate 0,1%', 'Natri hyaluronate 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '113'),
(122, 'Unihy', '0342', '41', 'Lá» 5 ml', 1, 'Natri hyaluronate 0,1%', 'Natri hyaluronate 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '114'),
(123, 'Hameron eye', '0341', '35', 'Lá» 5 ml', 1, 'Natri hyaluronate 0,1%', 'Natri hyaluronate 0,1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '115'),
(124, 'Vismed Eye drop 0.18% x 0.3ml', '0340', '10', 'á»ng 0,3 ml', 1, 'Natri hyaluronate 0,18%', 'Natri hyaluronate 0,18%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '116'),
(125, 'Tearican eye drops', '0339', '53', 'Lá» 10 ml', 1, 'Polyvinyl Alcohol 140 mg', 'Polyvinyl Alcohol 140 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '117'),
(126, 'Cyclogyl Drop 1% 15ml', '0338', '81', 'Lá» 15 ml', 1, 'Cyclopentolat 1%', 'Cyclopentolat 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '118'),
(127, 'Mydriacyl Drop 1% 15ml', '0337', '45', 'Lá» 15 ml', 1, 'Tropicamide 1%', 'Tropicamide 1%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '119'),
(128, 'Mydrin-P Eye drop 10ml', '0336', '44', 'Lá» 10 ml', 1, 'Tropicamide 0,5% + Phenylephrin 0,5%', 'Tropicamide 0,5% + Phenylephrin 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '120'),
(129, 'Acetazolamid', '0335', '700', 'Viên', 1, 'Acetazolamid 0,25 g', 'Acetazolamid 0,25 g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '121'),
(130, 'Acetazolamid', '0334', '840', 'Viên', 1, 'Acetazolamid 0,25 g', 'Acetazolamid 0,25 g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '122'),
(131, 'Kaleorid', '0333', '1', 'Viên', 1, 'Kaliclorid 600mg', 'Kaliclorid 600mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '123'),
(132, 'Cordarone 150mg/3ml Inj.', '0332', '32', 'á»ng', 1, 'Amiodaron 150mg/3ml', 'Amiodaron 150mg/3ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '124'),
(133, 'Amlor Cap 5mg 30''s', '0331', '8', 'Viên', 1, 'Amlodipin 5mg', 'Amlodipin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '125'),
(134, 'Amlor Tab 5mg 30''s', '0330', '8', 'Viên', 1, 'Amlodipin 5mg', 'Amlodipin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '126'),
(135, 'Amidile-g', '0329', '800', 'Viên', 1, 'Amlodipin 5mg', 'Amlodipin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '127'),
(136, 'Amlodipin 5mg', '0328', '300', 'Viên', 1, 'Amlodipin 5mg', 'Amlodipin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '128'),
(137, 'Captopril', '0327', '450', 'Viên', 1, 'Captopril 25mg', 'Captopril 25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '129'),
(138, 'Hurmat 25 mg', '0326', '830', 'Viên', 1, 'Captopril 25mg', 'Captopril 25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '130'),
(139, 'Cerebrolysin', '0325', '63', 'á»ng 5 ml', 1, 'Cerebrolysin 215,2mg/ml', 'Cerebrolysin 215,2mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '131'),
(140, 'Cerebrolysin', '0324', '106', 'á»ng 10 ml', 1, 'Cerebrolysin 215,2mg/ml', 'Cerebrolysin 215,2mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '132'),
(141, 'Dopamin 200mg 5ml', '0323', '23', 'á»ng', 1, 'Dopamin 200mg/ 5ml', 'Dopamin 200mg/ 5ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '133'),
(142, 'Hecavas 5', '0322', '550', 'viên', 1, 'Enalapril maleate 5mg', 'Enalapril maleate 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '134'),
(143, 'Enahexal tab. 5mg', '0321', '1', 'Viên', 1, 'Enalapril maleate 5mg', 'Enalapril maleate 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '135'),
(144, 'Vinzix', '0320', '4', 'á»ng', 1, 'Furosemide 20mg', 'Furosemide 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '136'),
(145, 'Diurefar 40', '0319', '190', 'Viên', 1, 'Furosemide 40mg', 'Furosemide 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '137'),
(146, 'Lacipil Tab 4mg 28''s', '0318', '7', 'Viên', 2, 'Lacidipine 4mg', 'Lacidipine 4mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '138'),
(147, 'Dopegyt 250mg', '0317', '2', 'Viên', 2, 'Methyldopa 250mg', 'Methyldopa 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '139'),
(148, 'Adalat Cap 10mg', '0316', '2', 'Viên', 2, 'Nifedipin 10mg', 'Nifedipin 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '140'),
(149, 'Zidimet 10', '0315', '1', 'Viên', 2, 'Nifedipin 10mg', 'Nifedipin 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '141'),
(150, 'Nifephabaco', '0314', '200', 'viên', 2, 'Nifedipin 10mg', 'Nifedipin 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '142'),
(151, 'Coversyl Tab 5mg', '0313', '5', 'Viên', 2, 'Perindopril Arginine 5mg', 'Perindopril Arginine 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '143'),
(152, 'Amoxycillin 250mg', '0312', '400', 'Viên', 2, 'Amoxicilin 250mg', 'Amoxicilin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '144'),
(153, 'Amoxicilin 250mg', '0311', '410', 'Viên', 2, 'Amoxicilin 250mg', 'Amoxicilin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '145'),
(154, 'Amoxycillin 500mg', '0310', '640', 'Viên', 2, 'Amoxicilin 500mg', 'Amoxicilin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '146'),
(155, 'Amoxicilin 500mg', '0309', '640', 'Viên', 2, 'Amoxicilin 500mg', 'Amoxicilin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '147'),
(156, 'Augmentin BD Tab 625mg 14''s', '0308', '12', 'Viên', 2, 'Amoxicilin 500 mg + acid clavulanic 125 mg', 'Amoxicilin 500 mg + acid clavulanic 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '148'),
(157, 'Curam tab. 625mg', '0307', '9', 'Viên', 2, 'Amoxicillin 500mg, Clavulanate K 125mg', 'Amoxicillin 500mg, Clavulanate K 125mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '149'),
(158, 'Ko-act 625', '0306', '6', 'Viên', 2, 'Amoxicilin 500 mg+ acid clavulanic 125 mg', 'Amoxicilin 500 mg+ acid clavulanic 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '150'),
(159, 'Midagentin 500/125', '0305', '3', 'Viên', 2, 'Amoxicilin 500 mg+ acid clavulanic 125 mg', 'Amoxicilin 500 mg+ acid clavulanic 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '151'),
(160, 'Augmentin 500/62.5 Sac 500mg', '0304', '17', 'Gói', 2, 'Amoxicilin 500mg+ acid clavulanic 62,5mg', 'Amoxicilin 500mg+ acid clavulanic 62,5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '152'),
(161, 'Midantin 500/62,5', '0303', '4', 'Gói', 2, 'Amoxicilin 500mg+ acid clavulanic 62,5mg', 'Amoxicilin 500mg+ acid clavulanic 62,5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '153'),
(162, 'Augmentin 250/31.25 Sac 250mg', '0302', '11', 'Gói', 2, 'Amoxicilin 250 mg + acid clavulanic 31,25mg', 'Amoxicilin 250 mg + acid clavulanic 31,25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '154'),
(163, 'Midagentin 250/31,25', '0301', '3', 'Gói', 2, 'Amoxicilin 250 mg + acid clavulanic 31,25mg', 'Amoxicilin 250 mg + acid clavulanic 31,25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '155'),
(164, 'Augmentin BD Tab 1g', '0300', '21', 'Viên', 2, 'Amoxicilin 875 mg+ acid clavulanic 125 mg', 'Amoxicilin 875 mg+ acid clavulanic 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '156'),
(165, 'Ko-act  1000', '0299', '8', 'Viên', 2, 'Amoxicilin 875 mg + Sulbactam 125 mg', 'Amoxicilin 875 mg + Sulbactam 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '157'),
(166, 'Midantin 1g', '0298', '6', 'Viên', 2, 'Amoxicilin 875 mg+ acid clavulanic 125 mg', 'Amoxicilin 875 mg+ acid clavulanic 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '158'),
(167, 'Rezotum', '0297', '11', 'Viên', 2, 'Amoxicilin 500 mg + Sulbactam 250 mg', 'Amoxicilin 500 mg + Sulbactam 250 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '159'),
(168, 'Trifamox IBL 500mg', '0296', '12', 'viên', 2, 'Amoxicillin 250mg + Sulbactam 250mg', 'Amoxicillin 250mg + Sulbactam 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '160'),
(169, 'Trifamox IBL Duo 1000mg', '0295', '17', 'viên', 2, 'Amoxicillin 875mg + Sulbactam 125mg', 'Amoxicillin 875mg + Sulbactam 125mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '161'),
(170, 'Agitro 250', '0294', '3', 'Viên', 2, 'Azithromycin 250mg', 'Azithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '162'),
(171, 'Azoget 250mg', '0293', '5', 'Viên', 2, 'Azithromycin 250mg', 'Azithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '163'),
(172, 'Binozyt cap. 250mg', '0292', '20', 'Viên', 2, 'Azithromycin 250mg', 'Azithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '164'),
(173, 'Cephalexin 500mg', '0291', '900', 'Viên', 2, 'Cefalexin 500mg', 'Cefalexin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '165'),
(174, 'Cefalexin 500mg', '0290', '890', 'viên', 2, 'Cefalexin 500mg', 'Cefalexin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '166'),
(175, 'Cefimbrand 100mg', '0289', '1', 'Viên', 2, 'Cefixim 100mg', 'Cefixim 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '167'),
(176, 'Grancef cap. 100mg B/30', '0288', '5', 'Viên', 2, 'Cefixim 100mg', 'Cefixim 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '168'),
(177, 'Cefimark 200', '0287', '9', 'Viên', 2, 'Cefixim 200mg', 'Cefixim 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '169'),
(178, 'Cefixime  200', '0286', '2', 'Viên', 2, 'Cefixim 200mg', 'Cefixim 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '170'),
(179, 'Effixent', '0285', '17', 'Viên', 2, 'Cefixim 200mg', 'Cefixim 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '171'),
(180, 'Cefpodoxim 100mg ', '0284', '3', 'viên', 2, 'Cefpodoxime 100mg', 'Cefpodoxime 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '172'),
(181, 'Edocom B 100', '0283', '14', 'Viên', 2, 'Cefpodoxime 100mg', 'Cefpodoxime 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '173'),
(182, 'Orelox 100 mg', '0282', '14', 'Viên', 2, 'Cefpodoxime 100mg', 'Cefpodoxime 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '174'),
(183, 'Sepy-0-200', '0281', '9', 'viên', 2, 'Cefpodoxime 200mg', 'Cefpodoxime 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '175'),
(184, 'Zexif 200', '0280', '17', 'Viên', 2, 'Cefpodoxime 200mg', 'Cefpodoxime 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '176'),
(185, 'Cefodomid 200', '0279', '5', 'Viên', 2, 'Cefpodoxime 200mg', 'Cefpodoxime 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '177'),
(186, 'Zinnat Sus 125mg 50ml', '0278', '127', 'Chai', 2, 'Cefuroxim 125ml/5ml', 'Cefuroxim 125ml/5ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '178'),
(187, 'Ceftume 125', '0277', '26', 'Lá»', 2, 'Cefuroxim 125ml/5ml', 'Cefuroxim 125ml/5ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '179'),
(188, 'Zinnat Sac 125mg', '0276', '16', 'Gói', 2, 'Cefuroxime 125mg', 'Cefuroxime 125mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '180'),
(189, 'Cefuroxime 125mg', '0275', '2', 'Gói', 2, 'Cefuroxime 125mg', 'Cefuroxime 125mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '181'),
(190, 'Cefuromid 125mg', '0274', '4', 'Gói', 2, 'Cefuroxime 125mg', 'Cefuroxime 125mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '182'),
(191, 'Zinnat Tab 250', '0273', '14', 'Viên', 2, 'Cefuroxime 250mg', 'Cefuroxime 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '183'),
(192, 'Furoxetil', '0272', '9', 'Viên', 2, 'Cefuroxime 250mg', 'Cefuroxime 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '184'),
(193, 'Xorimax tab. 250mg', '0271', '8', 'Viên', 2, 'Cefuroxim 250mg', 'Cefuroxim 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '185'),
(194, 'G-Xtil -250', '0270', '6', 'Viên', 2, 'Cefuroxime 250mg', 'Cefuroxime 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '186'),
(195, 'Zaniat 250mg', '0269', '2', 'Viên', 2, 'Cefuroxime 250mg', 'Cefuroxime 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '187'),
(196, 'Cefuromid 250mg', '0268', '4', 'Viên', 2, 'Cefuroxime 250mg', 'Cefuroxime 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '188'),
(197, 'Cefuroxime 250mg', '0267', '2', 'Viên', 2, 'Cefuroxim 250mg', 'Cefuroxim 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '189'),
(198, 'Zinnat Tab 500mg', '0266', '26', 'Viên', 2, 'Cefuroxime 500mg', 'Cefuroxime 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '190'),
(199, 'Xorimax tab. 500mg', '0265', '14', 'Viên', 2, 'Cefuroxim 500mg', 'Cefuroxim 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '191'),
(200, 'Cefuroxime 500mg', '0264', '3', 'Viên', 2, 'Cefuroxim 500mg', 'Cefuroxim 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '192');
INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(201, 'Cefuroxim 500mg', '0263', '3', 'Viên', 2, 'Cefuroxime 500mg', 'Cefuroxime 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '193'),
(202, 'Ciprofloxacin 500mg', '0262', '690', 'Viên', 2, 'Ciprofloxacin 500mg', 'Ciprofloxacin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '194'),
(203, 'Claromycin 250', '0261', '2', 'Viên', 2, 'Clarithromycin 250mg', 'Clarithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '195'),
(204, 'Orokin 250mg', '0260', '5', 'Viên', 2, 'Clarithromycin 250mg', 'Clarithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '196'),
(205, 'Caricin 250mg', '0259', '5', 'Viên', 2, 'Clarithromycin 250mg', 'Clarithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '197'),
(206, 'Klacid Tab 250mg 10''s', '0258', '19', 'Viên', 2, 'Clarithromycin 250mg', 'Clarithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '198'),
(207, 'Remeclar 250', '0257', '16', 'Viên', 2, 'Clarithromycin 250mg', 'Clarithromycin 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '199'),
(208, 'Clarividi 500', '0256', '3', 'Viên', 2, 'Clarithromycin 500mg', 'Clarithromycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '200'),
(209, 'Klacid Forte Tab 500mg ', '0255', '38', 'Viên', 2, 'Clarithromycin 500mg', 'Clarithromycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '201'),
(210, 'Orokin  500', '0254', '9', 'Viên', 2, 'Clarithromycin 500mg', 'Clarithromycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '202'),
(211, 'Caricin 500mg', '0253', '9', 'Viên', 2, 'Clarithromycin 500mg', 'Clarithromycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '203'),
(212, 'Claromycin 500', '0252', '4', 'viên', 2, 'Clarithromycin 500mg', 'Clarithromycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '204'),
(213, 'Doxycyclin 100mg', '0251', '350', 'Viên', 2, 'Doxycyclin 100mg', 'Doxycyclin 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '205'),
(214, 'Ofus', '0250', '2', 'Viên', 2, 'Ofloxacin 200mg', 'Ofloxacin 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '206'),
(215, 'Menazin 200 mg', '0249', '2', 'Viên', 2, 'Ofloxacin 200mg', 'Ofloxacin 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '207'),
(216, 'OflloDHG', '0248', '780', 'Viên', 2, 'Ofloxacin 200mg', 'Ofloxacin 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '208'),
(217, 'Ofloxacin 200mg', '0247', '650', 'Viên', 2, 'Ofloxacin 200mg', 'Ofloxacin 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '209'),
(218, 'Spiramycin 1,5MUI', '0246', '1', 'Viên', 2, 'Spiramycin 1,5 MUI', 'Spiramycin 1,5 MUI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '210'),
(219, 'Rovamycine 1,5M UI', '0245', '4', 'Viên', 2, 'Spiramycin 1,5 MUI', 'Spiramycin 1,5 MUI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '211'),
(220, 'Spiramycin 3 M.I.U', '0244', '4', 'viên', 2, 'Spiramycin 3 MUI', 'Spiramycin 3 MUI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '212'),
(221, 'Rovamycine 3M UI', '0243', '9', 'Viên', 2, 'Spiramycin 3 MUI', 'Spiramycin 3 MUI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '213'),
(222, 'Trimazon 480mg', '0242', '260', 'Viên', 2, 'Sulfamethoxazol 400 mg + Trimethoprim 80 mg', 'Sulfamethoxazol 400 mg + Trimethoprim 80 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '214'),
(223, 'Union Amikacin 500mg/2ml', '0241', '20', 'Lá»', 2, 'Amikacin 500mg/2ml', 'Amikacin 500mg/2ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '215'),
(224, 'Midagentin 1,2g', '0240', '29', 'Lá»', 2, 'Amoxicilin 1 g+ acid clavulanic 200 mg', 'Amoxicilin 1 g+ acid clavulanic 200 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '216'),
(225, 'Cefazolin 1g', '0239', '12', 'Lá»', 2, 'Cefazolin 1g', 'Cefazolin 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '217'),
(226, 'Sitacef 1g', '0238', '55', 'Lá» tiÃªm', 2, 'Ceftazidim 1g', 'Ceftazidim 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '218'),
(227, 'Ceftazidime 1g', '0237', '30', 'Lá»', 2, 'Ceftazidime 1g', 'Ceftazidime 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '219'),
(228, 'Fortum Inj.1g', '0236', '80', 'Lá»', 2, 'Ceftazidime 1g', 'Ceftazidime 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '220'),
(229, 'Cefonen', '0235', '26', 'Lá»', 2, 'Ceftriaxon 1g', 'Ceftriaxon 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '221'),
(230, 'Ceftriaxone 1g', '0234', '15', 'Lá»', 2, 'Ceftriaxon 1g', 'Ceftriaxon 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '222'),
(231, 'Cefurovid 0,75g', '0233', '17', 'Lá»', 2, 'Cefuroxime 750mg', 'Cefuroxime 750mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '223'),
(232, 'Zinacef Inj.750mg', '0232', '47', 'Lá»', 2, 'Cefuroxime 750mg', 'Cefuroxime 750mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '224'),
(233, 'Gentamycin 40mg', '0231', '1', 'á»ng 1 ml', 2, 'Gentamicin 40mg', 'Gentamicin 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '225'),
(234, 'Gentamycin 80mg', '0230', '1', 'á»ng', 2, 'Gentamicin 80mg', 'Gentamicin 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '226'),
(235, 'Gentamicin 80 ', '0229', '1', 'á»‘ng', 2, 'Gentamicin 80mg', 'Gentamicin 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '227'),
(236, 'Peflacine Inj', '0228', '21', 'á»ng', 2, 'Pefloxacin 400mg', 'Pefloxacin 400mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '228'),
(237, 'Vinpecine 400mg/5ml', '0227', '14', 'á»ng', 2, 'Pefloxacin 400mg', 'Pefloxacin 400mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '229'),
(238, 'Korea United Vancomycin', '0226', '77', 'Lá»', 2, 'Vancomycin 500mg', 'Vancomycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '230'),
(239, 'Oscamicin 500mg', '0225', '74', 'Lá» tiÃªm', 2, 'Vancomycin 500mg', 'Vancomycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '231'),
(240, 'Vagonxin 0,5g', '0224', '58', 'Lá»', 2, 'Vancomycin 500mg', 'Vancomycin 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '232'),
(241, 'Korea United Vancomycin', '0223', '157', 'Lá»', 2, 'Vancomycin 1g', 'Vancomycin 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '233'),
(242, 'Vagonxin 1g', '0222', '107', 'Lá»', 2, 'Vancomycin 1g', 'Vancomycin 1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '234'),
(243, 'Alphachymotrypsin', '0221', '410', 'Viên', 2, 'Alphachymotrypsine 21 microkatal', 'Alphachymotrypsine 21 microkatal', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '235'),
(244, 'Alphatrypa ', '0220', '600', 'viên', 2, 'Alphachymotrypsine 21 microkatal', 'Alphachymotrypsine 21 microkatal', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '236'),
(245, 'Alphachymotrypsin 4200UI', '0219', '1', 'Viên', 2, 'Alphachymotrypsine 4200UI', 'Alphachymotrypsine 4200UI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '237'),
(246, 'Bromtab', '0218', '3', 'Viên', 2, 'Bromelain 20.000 Units (50 mg); Crystallized trypsin 2.500 Units (1mg)', 'Bromelain 20.000 Units (50 mg); Crystallized trypsin 2.500 Units (1mg)', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '238'),
(247, 'Pedonase', '0217', '2', 'Viên', 2, 'Bromelain 40 mg; Trypsin káº¿t tinh 1mg', 'Bromelain 40 mg; Trypsin káº¿t tinh 1mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '239'),
(248, 'Probilase Tablet', '0216', '2', 'Viên', 2, 'Bromelain 40 mg; Trypsin káº¿t tinh 1mg', 'Bromelain 40 mg; Trypsin káº¿t tinh 1mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '240'),
(249, 'Anti-Max', '0215', '2', 'viên', 2, 'Lysozym 90mg', 'Lysozym 90mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '241'),
(250, 'Peptudase', '0214', '2', 'viên', 2, 'Lysozym 90mg', 'Lysozym 90mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '242'),
(251, 'Kialverin ', '0213', '2', 'Viên', 2, 'Lysozym 90mg', 'Lysozym 90mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '243'),
(252, 'Dexamethason', '0212', '1', 'á»ng', 2, 'Dexamethason 4mg/ml', 'Dexamethason 4mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '244'),
(253, 'Dexamethason  4mg/ml', '0211', '1', 'á»‘ng', 2, 'Dexamethason 4mg/ml', 'Dexamethason 4mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '245'),
(254, 'Hydrocortison Lidocain 125mg/5ml', '0210', '30', 'Lá»', 2, 'Hydrocortison 125 mg + Lidocain 25mg', 'Hydrocortison 125 mg + Lidocain 25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '246'),
(255, 'Medexa Tab. 4mg', '0209', '1', 'Viên', 2, 'Methylprednisolon 4mg', 'Methylprednisolon 4mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '247'),
(256, 'Medrol Tab 4mg 30''s', '0208', '1', 'viên', 2, 'Methylprednisolon 4mg', 'Methylprednisolon 4mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '248'),
(257, 'Methylprednisolon 4mg', '0207', '570', 'Viên', 2, 'Methylprednisolon 4mg', 'Methylprednisolon 4mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '249'),
(258, 'Medexa Tab. 16mg', '0206', '3', 'Viên', 2, 'Methylprednisolon 16mg', 'Methylprednisolon 16mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '250'),
(259, 'Medrol Tab 16mg 30''s', '0205', '4', 'viên', 2, 'Methylprednisolon 16mg', 'Methylprednisolon 16mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '251'),
(260, 'Mepred-16', '0204', '1', 'Viên', 2, 'Methylprednisolon 16mg', 'Methylprednisolon 16mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '252'),
(261, 'Solu-Medrol Inj 40mg', '0203', '35', 'Lá»', 2, 'Methylprednisolone 40mg', 'Methylprednisolone 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '253'),
(262, 'Hormedi 40', '0202', '32', 'Lá»', 2, 'Methylprednisolone 40mg', 'Methylprednisolone 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '254'),
(263, 'Depo Medrol Inj 40mg/ml 1ml', '0201', '37', 'Lá»', 2, 'Methylprednisolone 40mg', 'Methylprednisolone 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '255'),
(264, 'Prednisolon', '0200', '220', 'Viên', 2, 'Prednisolon 5mg', 'Prednisolon 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '256'),
(265, 'Prednisolon 5mg', '0199', '420', 'viên', 2, 'Prednisolon 5mg', 'Prednisolon 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '257'),
(266, 'Celcoxx 100mg', '0198', '3', 'Viên', 2, 'Celecoxib 100mg', 'Celecoxib 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '258'),
(267, 'B-Nagen', '0197', '2', 'Viên', 2, 'Celecoxib 100mg', 'Celecoxib 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '259'),
(268, 'Cenmopen 200mg', '0196', '1', 'Viên', 2, 'Celecoxib 200mg', 'Celecoxib 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '260'),
(269, 'Agcel', '0195', '3', 'Viên', 2, 'Celecoxib 200mg', 'Celecoxib 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '261'),
(270, 'Vifaren 50mg', '0194', '150', 'Viên', 2, 'Diclofenac 50mg', 'Diclofenac 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '262'),
(271, 'Voltaren FCT Tabs 50mg', '0193', '3', 'Viên', 2, 'Diclofenac 50mg', 'Diclofenac 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '263'),
(272, 'Dicloberl 50 Tab 50mg 100''s', '0192', '570', 'viên', 2, 'Diclofenac 50mg', 'Diclofenac 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '264'),
(273, 'Adxan', '0191', '340', 'Viên', 2, 'Paracetamol 325mg + Ibuprofen 200mg', 'Paracetamol 325mg + Ibuprofen 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '265'),
(274, 'Amfadol Plus', '0190', '930', 'viên', 2, 'Paracetamol 325mg + Ibuprofen 200mg', 'Paracetamol 325mg + Ibuprofen 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '266'),
(275, 'Inmelox-7.5', '0189', '1', 'Viên', 2, 'Meloxicam 7,5mg', 'Meloxicam 7,5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '267'),
(276, 'Melogesic 7,5', '0188', '280', 'Viên', 2, 'Meloxicam 7,5mg', 'Meloxicam 7,5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '268'),
(277, 'Efferalgan 80mg Sachets', '0187', '2', 'Gói', 2, 'Paracetamol 80mg', 'Paracetamol 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '269'),
(278, 'Efferalgan 150mg Sachets', '0186', '2', 'Gói', 2, 'Paracetamol 150mg', 'Paracetamol 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '270'),
(279, 'Cenpadol 150mg', '0185', '830', 'Gói', 2, 'Paracetamol 150mg', 'Paracetamol 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 2, 2, 1, '271'),
(280, 'Hapacol 150', '0184', '1', 'Gói', 2, 'Paracetamol 150mg', 'Paracetamol 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '272'),
(281, 'Efferalgan 250mg Sachets', '0183', '3', 'Gói', 2, 'Paracetamol 250mg', 'Paracetamol 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '273'),
(282, 'Cenpadol 250mg', '0182', '960', 'Gói', 2, 'Paracetamol 250mg', 'Paracetamol 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '274'),
(283, 'Efferalgan 300mg Suppo', '0181', '3', 'ViÃªn Ä‘áº¡n', 2, 'Paracetamol 300mg', 'Paracetamol 300mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '275'),
(284, 'Efferalgan 150mg Suppo', '0180', '2', 'ViÃªn Ä‘áº¡n', 2, 'Paracetamol 150mg', 'Paracetamol 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '276'),
(285, 'Efferalgan 80mg Suppo', '0179', '2', 'ViÃªn Ä‘áº¡n', 2, 'Paracetamol 80mg', 'Paracetamol 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '277'),
(286, 'Paracetamol 500mg', '0178', '120', 'Viên nén', 2, 'Paracetamol 500mg', 'Paracetamol 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '278'),
(287, 'Tylenol 8 Hour', '0177', '1', 'Viên nén', 2, 'Paracetamol 650mg', 'Paracetamol 650mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '279'),
(288, 'Panadol viÃªn sá»§i. 500mg', '0176', '1', 'ViÃªn sá»§i', 2, 'Paracetamol 500mg', 'Paracetamol 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '280'),
(289, 'Efferalgan 500mg', '0175', '2', 'Viên', 2, 'Paracetamol 500mg', 'Paracetamol 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '281'),
(290, 'Acefalgan 500mg (sá»§i)', '0174', '1', 'ViÃªn sá»§i', 2, 'Paracetamol 500mg', 'Paracetamol 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '282'),
(291, 'Efferalgan 500mg Codeine', '0173', '3', 'ViÃªn sá»§i', 2, 'Paracetamol 500mg + Codeinephosphate 30mg', 'Paracetamol 500mg + Codeinephosphate 30mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '283'),
(292, 'Acefalgan Codein (sá»§i)', '0172', '2', 'ViÃªn sá»§i', 2, 'Paracetamol 500mg + Codeinephosphate 30mg', 'Paracetamol 500mg + Codeinephosphate 30mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '284'),
(293, 'Feldene Inj 20mg', '0171', '20', 'á»ng', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '285'),
(294, 'Polipirox', '0170', '16', 'á»ng', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '286'),
(295, 'Fedinel', '0169', '12', 'á»ng', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '287'),
(296, 'Brexin Tab 20mg 20''s', '0168', '8', 'Viên', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '288'),
(297, 'Feldene Dispensible Tab 20mg 15''s', '0167', '8', 'Viên', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '289'),
(298, 'Piroxicam', '0166', '340', 'Viên', 2, 'Piroxicam 20mg', 'Piroxicam 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '290'),
(299, 'Ultracet', '0165', '8', 'Viên', 2, 'Tramadol HCL 37,5 mg + Paracetamol 325 mg', 'Tramadol HCL 37,5 mg + Paracetamol 325 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '291'),
(300, 'Circuton', '0164', '3', 'Viên', 2, 'Cataegi fructus 50mg, melisae folium 10mg, ginkgo biloba 5mg, dáº§u tá»i 150 mg', 'Cataegi fructus 50mg, melisae folium 10mg, ginkgo biloba 5mg, dáº§u tá»i 150 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '292'),
(301, 'Hi-low ', '0163', '3', 'viên', 2, 'Crataegus extra 50 mg; Ginkgobiloba 5mg; Melissa leaf extract 10 mg; garlic oil 150 mg', 'Crataegus extra 50 mg; Ginkgobiloba 5mg; Melissa leaf extract 10 mg; garlic oil 150 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '293'),
(302, 'Alfocerin', '0162', '10', 'viên', 2, 'Cholin Alfoscerat 400mg', 'Cholin Alfoscerat 400mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '294'),
(303, 'Qcolin capsules', '0161', '10', 'Viên', 2, 'Citicolin 100mg', 'Citicolin 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '295'),
(304, 'Senoxyd-Q10', '0160', '4', 'Viên', 2, 'Coenzym Q10 10 mg; Vitamin E 10 IU; Vitamin A1000 IU; Selenium 30 mcg; Vitamin C 40 mg .', 'Coenzym Q10 10 mg; Vitamin E 10 IU; Vitamin A1000 IU; Selenium 30 mcg; Vitamin C 40 mg .', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '296'),
(305, 'Glaze', '0159', '5', 'Viên', 2, 'Coenzyme Q10 30mg', 'Coenzyme Q10 30mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '297'),
(306, 'Tanakan Tab 40mg', '0158', '4', 'Viên', 2, 'Gingko biloba 40mg', 'Gingko biloba 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '298'),
(307, 'Giloba', '0157', '3', 'Viên', 2, 'Gingko biloba 40mg', 'Gingko biloba 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '299'),
(308, 'Takankgoba', '0156', '330', 'Viên', 2, 'Gingko biloba 40mg', 'Gingko biloba 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '300'),
(309, 'Ginkophil', '0155', '2', 'Viên', 2, 'Ginkgo biloba 40mg', 'Ginkgo biloba 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '301'),
(310, 'Ginkan capsule', '0154', '1', 'viên', 2, 'Ginkgo biloba 40mg', 'Ginkgo biloba 40mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '302'),
(311, 'Gilovit', '0153', '2', 'viên', 2, 'Ginkgo biloba 40 mg + Vitamin A 1000 IU + Vitamin E 30 IU + Vitamin C 60 mg + Thiamin nitrat 1,5 mg + Pyridoxin hydroclorid 1,5 mg', 'Ginkgo biloba 40 mg + Vitamin A 1000 IU + Vitamin E 30 IU + Vitamin C 60 mg + Thiamin nitrat 1,5 mg + Pyridoxin hydroclorid 1,5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '303'),
(312, 'Kovitonic', '0152', '3', 'Viên', 2, 'Cao báº¡ch quáº£ 40 mg; Cao nhÃ¢n sÃ¢m 40 mg; Vitamin B1 25mg; Vitamin B2 5 mg; Vitamin B6 25 mg; Vitamin PP 10 mg', 'Cao báº¡ch quáº£ 40 mg; Cao nhÃ¢n sÃ¢m 40 mg; Vitamin B1 25mg; Vitamin B2 5 mg; Vitamin B6 25 mg; Vitamin PP 10 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '304'),
(313, 'Hi-low Plus', '0151', '3', 'Viên', 2, 'Cao báº¡ch quáº£ 40 mg; dáº§u tá»i 10 mg; pyridoxin HCL 25 mg; Riboflavin 5 mg; nicotinamid 10 mg; thiamin nitrat 25 mg', 'Cao báº¡ch quáº£ 40 mg; dáº§u tá»i 10 mg; pyridoxin HCL 25 mg; Riboflavin 5 mg; nicotinamid 10 mg; thiamin nitrat 25 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '305'),
(314, 'Gikontale Tablet', '0150', '3', 'Viên', 2, 'Gingko biloba 80mg', 'Gingko biloba 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '306'),
(315, 'Etexporiway', '0149', '3', 'Viên', 2, 'Ginkgo biloba 80mg', 'Ginkgo biloba 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '307'),
(316, 'Grabos', '0148', '3', 'Viên', 2, 'Ginkgo biloba 80mg', 'Ginkgo biloba 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '308'),
(317, 'Hubako ', '0147', '3', 'Viên', 2, 'Ginkgo biloba 80mg', 'Ginkgo biloba 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '309'),
(318, 'Superkan F', '0146', '2', 'Viên', 2, 'Ginkgo biloba 80mg', 'Ginkgo biloba 80mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '310'),
(319, 'Kovi - K', '0145', '2', 'Viên', 2, 'Cao báº¡ch quáº£ 80 mg, Vitamin B1 25mg, Vitamin B2 5mg, Vitamin B6 25mg, Vitamin PP 10mg.', 'Cao báº¡ch quáº£ 80 mg, Vitamin B1 25mg, Vitamin B2 5mg, Vitamin B6 25mg, Vitamin PP 10mg.', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '311'),
(320, 'Onsbeta', '0144', '5', 'Viên', 2, 'Ginkgo biloba 120mg', 'Ginkgo biloba 120mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '312'),
(321, 'Gintana 120', '0143', '4', 'Viên', 2, 'Ginkgo biloba 120mg', 'Ginkgo biloba 120mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '313'),
(322, 'Koipy', '0142', '4', 'Viên', 2, 'Ginkgo biloba 120mg', 'Ginkgo biloba 120mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '314'),
(323, 'Ipentol', '0141', '5', 'Viên', 2, 'Pentoxifylline 400mg', 'Pentoxifylline 400mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '315'),
(324, 'Vinphacetam 400mg', '0140', '310', 'Viên', 2, 'Piracetam 400mg', 'Piracetam 400mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '316'),
(325, 'Nootropyl Tab 800mg', '0139', '3', 'Viên', 2, 'Piracetam 800mg', 'Piracetam 800mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '317'),
(326, 'Cerefort', '0138', '113', 'Lá»', 2, 'Piracetam 200mg/ml', 'Piracetam 200mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '318'),
(327, 'Cavinton', '0137', '2', 'Viên', 2, 'Vinpocetin 5mg', 'Vinpocetin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '319'),
(328, 'Vinphaton', '0136', '480', 'Viên', 2, 'Vinpocetin 5mg', 'Vinpocetin 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '320'),
(329, 'Botox inj. 100IU', '0135', '5', 'Lá»', 2, 'Botulinum toxin 100IU', 'Botulinum toxin 100IU', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '321'),
(330, 'Dysport Inj 500U', '0134', '6', 'Lá»', 2, 'Phá»©c há»£p Ä‘á»™c tá»‘ Clostridium botulinum type A-ngÆ°ng káº¿t tá»‘ há»“ng cáº§u 500 Ä‘Æ¡n vá»‹ Ipsen', 'Phá»©c há»£p Ä‘á»™c tá»‘ Clostridium botulinum type A-ngÆ°ng káº¿t tá»‘ há»“ng cáº§u 500 Ä‘Æ¡n vá»‹ Ipsen', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '322'),
(331, 'Adrenalin 1mg/1ml', '0133', '3', 'á»ng', 2, 'Adrenalin 1mg/ml', 'Adrenalin 1mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '323'),
(332, 'Labixten 20mg', '0132', '10', 'viên', 2, 'Bilastine 20mg', 'Bilastine 20mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '324'),
(333, 'Dimedrol', '0131', '690', 'á»ng', 2, 'Diphenhydramin 10mg/1ml', 'Diphenhydramin 10mg/1ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '325'),
(334, 'Ceteco Cenfast 60', '0130', '1', 'viên', 2, 'Fexofenadin Hcl 60mg', 'Fexofenadin Hcl 60mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '326'),
(335, 'Telfast BD 60mg', '0129', '3', 'Viên', 2, 'Fexofenadin Hcl 60mg', 'Fexofenadin Hcl 60mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '327'),
(336, 'Loravidi 10mg', '0128', '320', 'Viên', 2, 'Loratadin 10mg', 'Loratadin 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '328'),
(337, 'Lorafast', '0127', '1', 'viên', 2, 'Loratadin 10mg', 'Loratadin 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '329'),
(338, 'Amphotret', '0126', '204', 'Lá»', 2, 'Amphotericin B 50mg', 'Amphotericin B 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '330'),
(339, 'Mycosyt', '0125', '435', 'Chai', 2, 'Fluconazol 200 mg', 'Fluconazol 200 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '331'),
(340, 'Pharmaniaga Fluconazole 150mg', '0124', '13', 'Viên', 2, 'Fluconazol 150mg', 'Fluconazol 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '332'),
(341, 'Sporal', '0123', '20', 'Viên', 2, 'Itraconazole 100mg', 'Itraconazole 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '333'),
(342, 'Sporacid Cap. 100mg', '0122', '15', 'Viên', 2, 'Itraconazole 100mg', 'Itraconazole 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '334'),
(343, 'Scotrasix 100mg', '0121', '16', 'viên', 2, 'Itraconazole 100mg', 'Itraconazole 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '335'),
(344, 'Scotrasix 100mg', '0120', '16', 'viên', 2, 'Itraconazole 100mg', 'Itraconazole 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '336'),
(345, 'Maalox', '0119', '730', 'Viên', 2, 'Aluminium hydroxyde 400mg + Magnesium hydroxyde 400 mg', 'Aluminium hydroxyde 400mg + Magnesium hydroxyde 400 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '337'),
(346, 'Dulcolax Tab. 5mg B/20', '0118', '4', 'Viên', 2, 'Bisacodyl 5mg', 'Bisacodyl 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '338'),
(347, 'Omeprazol TVP', '0117', '360', 'Viên', 2, 'Omeprazol 20 mg', 'Omeprazol 20 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '339'),
(348, 'Omeprem 20', '0116', '3', 'Viên', 2, 'Omeprazol 20 mg', 'Omeprazol 20 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '340'),
(349, 'Zantac Tab 150mg', '0115', '5', 'Viên', 2, 'Ranitidine 150mg', 'Ranitidine 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '341'),
(350, 'Ranitidin 150mg', '0114', '380', 'Viên', 2, 'Ranitidine 150mg', 'Ranitidine 150mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '342'),
(351, 'Lagelon', '0113', '900', 'Viên', 2, 'Silymarin 70mg', 'Silymarin 70mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '343'),
(352, 'Legalon 70 Protect Madaus', '0112', '4', 'Viên', 2, 'Silymarin 70mg', 'Silymarin 70mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '344'),
(353, 'Aciclovir 200', '0111', '1', 'Viên', 2, 'Aciclovir 200mg', 'Aciclovir 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '345'),
(354, 'Acyclovir Denk 200', '0110', '5', 'Viên', 2, 'Aciclovir 200mg', 'Aciclovir 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '346'),
(355, 'Mediplex', '0109', '8', 'Viên', 2, 'Aciclovir 800mg', 'Aciclovir 800mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '347'),
(356, 'Acyacy 800', '0108', '8', 'Viên', 2, 'Aciclovir 800mg', 'Aciclovir 800mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '348'),
(357, 'Aciclovir 800', '0107', '4', 'Viên', 2, 'Aciclovir 800mg', 'Aciclovir 800mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '349'),
(358, 'Cymevene Inj. 500mg', '0106', '775', 'Lá» tiÃªm', 2, 'Ganciclovir 500mg', 'Ganciclovir 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '350'),
(359, 'Adrenoxyl 10mg', '0105', '1', 'Viên', 2, 'Carbazochrome dihydrate 10mg', 'Carbazochrome dihydrate 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '351'),
(360, 'DHLLD injection', '0104', '78', 'Lá»', 2, 'Hyaluronidase 1500UI', 'Hyaluronidase 1500UI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '352'),
(361, 'Huhylase 1500UI', '0103', '74', 'Lá»', 2, 'Hyaluronidase 1500UI', 'Hyaluronidase 1500UI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '353'),
(362, 'Hylase ''Dessau''\n150 UI', '0102', '73', 'Lá»', 3, 'Hyaluronidase 150UI', 'Hyaluronidase 150UI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '354'),
(363, 'Examin', '0101', '6', 'á»ng', 3, 'Tranexamic acid 250mg/5ml', 'Tranexamic acid 250mg/5ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '355'),
(364, 'Zentonamic  250mg/5ml', '0100', '7', 'á»ng', 3, 'Tranexamic acid 250mg/5ml', 'Tranexamic acid 250mg/5ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '356'),
(365, 'Medsamic 250 mg Caps', '0099', '1', 'Viên', 3, 'Tranexamic acid 250mg', 'Tranexamic acid 250mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '357'),
(366, 'Actilyse Inj. 50mg ', '0098', '10', 'Lá»', 3, 'Alteplase (Tissue plasminogen activator) 50mg', 'Alteplase (Tissue plasminogen activator) 50mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '358'),
(367, 'Uman Albumin', '0097', '824', 'Chai 50 ml', 3, 'Albumin 20%', 'Albumin 20%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '359'),
(368, 'Tetraspan 6% Sol. 500ml', '0096', '144', 'Chai', 3, 'Tinh bá»™t este hÃ³a (Hydroxy ethyl starch) 6% 130.000/0,42/6:1', 'Tinh bá»™t este hÃ³a (Hydroxy ethyl starch) 6% 130.000/0,42/6:1', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '360'),
(369, 'Yubinol', '0095', '2', 'Viên', 3, 'Acid ascorbic 75 mg; Ergocalciferol 400 IU; Retinol palmital 5000 IU; Thiamin nitrat 2mg; Nicotinamid 20 mg;Riboflavin 3mg', 'Acid ascorbic 75 mg; Ergocalciferol 400 IU; Retinol palmital 5000 IU; Thiamin nitrat 2mg; Nicotinamid 20 mg;Riboflavin 3mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 4, 3, 1, '361'),
(370, 'Queenmin', '0094', '3', 'Viên', 3, 'Acid ascorbic 60,5 mg; Cholecalciferol 299,5IU; Retinol palmital 3333,3 IU; Thiamin nitrat 1,8mg; Nicotinamid 16,8mg; Riboflavin 1,5mg', 'Acid ascorbic 60,5 mg; Cholecalciferol 299,5IU; Retinol palmital 3333,3 IU; Thiamin nitrat 1,8mg; Nicotinamid 16,8mg; Riboflavin 1,5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '362'),
(371, 'Alfa care', '0093', '5', 'Viên', 3, 'Alpha Lipoic acid 100mg', 'Alpha Lipoic acid 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '363'),
(372, 'Ubiheal', '0092', '4', 'Viên', 3, 'Alpha Lipoic acid 100mg', 'Alpha Lipoic acid 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '364'),
(373, 'Eyebi', '0091', '3', 'Viên', 3, 'Anthocyanosidic extract of vaccinium myrtillus 50 mg + Vitamin E 50 mg', 'Anthocyanosidic extract of vaccinium myrtillus 50 mg + Vitamin E 50 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '365'),
(374, 'Eyesun (SXNQ cá»§a Daewoo pharm. Co., Ltd)', '0090', '8', 'Viên', 3, 'Cao vaccinium myrtillus 170mg', 'Cao vaccinium myrtillus 170mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '366'),
(375, 'PM Eye Tonic', '0089', '9', 'Viên', 3, 'Chiáº¿t xuáº¥t Vaccinium Myrtillus (Bilberry) 20 mg; Fish Oil - Natural (Tuna) 250 mg; Fish Oil - Natural 250 mg; Thiamin Hydrochloride 20 mg; Retinyl Palmitate 2500 IU; Riboflavin 5 mg', 'Chiáº¿t xuáº¥t Vaccinium Myrtillus (Bilberry) 20 mg; Fish Oil - Natural (Tuna) 250 mg; Fish Oil - Natural 250 mg; Thiamin Hydrochloride 20 mg; Retinyl Palmitate 2500 IU; Riboflavin 5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '367'),
(376, 'Beliver', '0088', '4', 'Viên', 3, 'Cardus Marianus extract 200 mg (tÆ°Æ¡ng Ä‘Æ°Æ¡ng Silybin 60 mg); Vitamin B1 8 mg; Vitamin B2 8 mg; Vitamin B6 8 mg; Vitamin PP 24 mg; Vitamin B5 16 mg', 'Cardus Marianus extract 200 mg (tÆ°Æ¡ng Ä‘Æ°Æ¡ng Silybin 60 mg); Vitamin B1 8 mg; Vitamin B2 8 mg; Vitamin B6 8 mg; Vitamin PP 24 mg; Vitamin B5 16 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '368'),
(377, 'Neucarmin', '0087', '3', 'Viên', 3, 'Casein hydrolysate 500mg', 'Casein hydrolysate 500mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '369'),
(378, 'Chromwel', '0086', '4', 'Viên', 3, 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '370'),
(379, 'Cosele', '0085', '3', 'Viên', 3, 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '371'),
(380, 'Nature Ssirom', '0084', '3', 'Viên', 3, 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '372'),
(381, 'Selturon', '0083', '3', 'Viên', 3, 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'CrÃ´m trong náº¥m men khÃ´ 25 mg; Selen trong náº¥m men khÃ´ 25 mg; (tÆ°Æ¡ng Ä‘Æ°Æ¡ng 50mcg Selen, 50mcg Crom) ascorbic acid 50 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '373'),
(382, 'Salomega', '0082', '4', 'Viên', 3, 'Dáº§u cÃ¡ há»“i tinh luyá»‡n:EPA 45mg, DHA 45mg', 'Dáº§u cÃ¡ há»“i tinh luyá»‡n:EPA 45mg, DHA 45mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '374'),
(383, 'Brainrish', '0081', '3', 'Viên', 3, 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '375'),
(384, 'Nature Brainforce', '0080', '2', 'Viên', 3, 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '376'),
(385, 'Powerbraincap', '0079', '3', 'Viên', 3, 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Dáº§u cÃ¡ tinh cháº¿ (DHA 27 %, EPA 5 %) 233,765mg , Vitamin E 1,75 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '377'),
(386, 'Solvit', '0078', '4', 'Viên', 3, 'Evening Primrose oil, Omega 3 Fish oil (tÆ°Æ¡ng Ä‘Æ°Æ¡ng EPA 90mg, DHA 60mg)', 'Evening Primrose oil, Omega 3 Fish oil (tÆ°Æ¡ng Ä‘Æ°Æ¡ng EPA 90mg, DHA 60mg)', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '378'),
(387, 'Na Neurocard Plus', '0077', '5', 'viên', 3, 'Dáº§u cÃ¡ tá»± nhiÃªn 500 mg + Bacopa monnieri 50 mg + Acid Folic 100 mcg + Magnesium oxide 124,3 mg + Calcium carbonate 125 mg', 'Dáº§u cÃ¡ tá»± nhiÃªn 500 mg + Bacopa monnieri 50 mg + Acid Folic 100 mcg + Magnesium oxide 124,3 mg + Calcium carbonate 125 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '379'),
(388, 'Aloecod', '0076', '5', 'Viên', 3, 'Dáº§u gan cÃ¡ tuyáº¿t 1000mg, Aloe vera 5mg', 'Dáº§u gan cÃ¡ tuyáº¿t 1000mg, Aloe vera 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '380'),
(389, 'Medica Macran', '0075', '3', 'Viên', 3, 'DL-methionine 9,2 mg; L-leucine 9,15 mg; L-valine 5 mg; L-isoleucine 5mg; L-threonine 5mg; L-tryptophan 5mg; L-phenylalanine 5mg; Lysine HCL 25 mg; retinol palmitate 1000 IU; Ergocalciferol 100 IU; Tocopherol acetate 5mg; Thiamine nitrate 2,5 mg; Nicotinamide 10 mg; Ca pantothenate 2,5 mg; Folic acid 100 mcg.', 'DL-methionine 9,2 mg; L-leucine 9,15 mg; L-valine 5 mg; L-isoleucine 5mg; L-threonine 5mg; L-tryptophan 5mg; L-phenylalanine 5mg; Lysine HCL 25 mg; retinol palmitate 1000 IU; Ergocalciferol 100 IU; Tocopherol acetate 5mg; Thiamine nitrate 2,5 mg; Nicotinamide 10 mg; Ca pantothenate 2,5 mg; Folic acid 100 mcg.', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '381'),
(390, 'BTV - Lecuxim', '0074', '3', 'Viên', 3, 'L-ornithine L-aspartate 200mg', 'L-ornithine L-aspartate 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '382'),
(391, 'Daganine -F', '0073', '2', 'Viên', 3, 'L-ornithine L-aspartate 200mg', 'L-ornithine L-aspartate 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '383'),
(392, 'Boram Liverhel', '0072', '3', 'Viên', 3, 'L-ornithin L-aspartat  80mg+ \nDá»‹ch chiáº¿t tá»i 50mg+\nTocopherol Acetate 1000 mcg', 'L-ornithin L-aspartat  80mg+ \nDá»‹ch chiáº¿t tá»i 50mg+\nTocopherol Acetate 1000 mcg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '384'),
(393, 'Luxanthin E', '0071', '2', 'Viên', 3, 'Lutein 2,5mg + Zeaxanthin 0,5mg + Vitamin A 1000 IU + Vitamin E 100IU', 'Lutein 2,5mg + Zeaxanthin 0,5mg + Vitamin A 1000 IU + Vitamin E 100IU', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '385'),
(394, 'Ocuvite Lutein', '0070', '2', 'viên', 11, 'Lutein 3mg, zeaxanthin 0,25mg, vitamin C 30 mg, vitamin E 4,4mg, Zn 2,5 mg, selenium 10mcg, protein 0,02g, carbohydrat 0,19 g, cháº¥t bÃ©o 0,06g, nÄƒng lÆ°á»£ng 1,4 kcal', 'Lutein 3mg, zeaxanthin 0,25mg, vitamin C 30 mg, vitamin E 4,4mg, Zn 2,5 mg, selenium 10mcg, protein 0,02g, carbohydrat 0,19 g, cháº¥t bÃ©o 0,06g, nÄƒng lÆ°á»£ng 1,4 kcal', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '386'),
(395, 'Golvaska', '0069', '2', 'Viên', 11, 'Mecobalamin 500mcg', 'Mecobalamin 500mcg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '387'),
(396, 'Mebaloget Tablet 500mcg', '0068', '2', 'Viên', 11, 'Mecobalamin 500mcg', 'Mecobalamin 500mcg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '388'),
(397, 'Mebaal 500', '0067', '2', 'Viên', 11, 'Mecobalamin 500mcg', 'Mecobalamin 500mcg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '389'),
(398, 'Maecran', '0066', '5', 'Viên', 11, 'Vitamin E 200IU, Vitamin C 250mg, Beta caroten 3,0mg, Káº½m oxid 9,337mg, Äá»“ng Oxid 1,252mg, Selenium 15mcg , Mangan sulfat 4,613mg.', 'Vitamin E 200IU, Vitamin C 250mg, Beta caroten 3,0mg, Káº½m oxid 9,337mg, Äá»“ng Oxid 1,252mg, Selenium 15mcg , Mangan sulfat 4,613mg.', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '390'),
(399, 'Newroin', '0065', '3', 'Viên', 11, 'Natri chondroitin sulfat 150mg, Thiamin nitrat 5mg, Pyridoxin HCL 5MG, Calci pantothenat 5mg, Nicotinamid 20mg, Cyanocobalamin 30mg, Riboflavin 3mg.', 'Natri chondroitin sulfat 150mg, Thiamin nitrat 5mg, Pyridoxin HCL 5MG, Calci pantothenat 5mg, Nicotinamid 20mg, Cyanocobalamin 30mg, Riboflavin 3mg.', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '391'),
(400, 'Gelataminâ€“S', '0064', '3', 'Viên', 11, 'Natri chondroitin sulfat 90 mg; Fursultiamin 50 mg; Pyridoxin HCL 25 mg; Riboflavin 6 mg; Nicotinamid 50 mg; Calci pantothenat 15 mg', 'Natri chondroitin sulfat 90 mg; Fursultiamin 50 mg; Pyridoxin HCL 25 mg; Riboflavin 6 mg; Nicotinamid 50 mg; Calci pantothenat 15 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '392'),
(401, 'Timiroitin', '0063', '3', 'Viên', 11, 'Natri chondroitin sulfat 90 mg; Fursultiamin 50 mg; Pyridoxin HCL 25 mg; Riboflavin 6 mg; Nicotinamid 50 mg; Calci pantothenat 15 mg', 'Natri chondroitin sulfat 90 mg; Fursultiamin 50 mg; Pyridoxin HCL 25 mg; Riboflavin 6 mg; Nicotinamid 50 mg; Calci pantothenat 15 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '393'),
(402, 'Tobicom', '0062', '1', 'viên', 11, 'Natrichondroitin sulfat 100 mg + Retinol palmitate 2500 UI + Cholinhydrotatrat 25 mg + Riboflavin 5mg + Thiamin hydrochlorid 30 mg', 'Natrichondroitin sulfat 100 mg + Retinol palmitate 2500 UI + Cholinhydrotatrat 25 mg + Riboflavin 5mg + Thiamin hydrochlorid 30 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '394'),
(403, 'Vicacom', '0061', '1', 'Viên', 11, 'Natrichondroitin sulfat 100 mg + Retinol palmitate 2500 UI + Cholinhydrotatrat 25 mg + Riboflavin 5mg + Thiamin hydrochlorid 30 mg', 'Natrichondroitin sulfat 100 mg + Retinol palmitate 2500 UI + Cholinhydrotatrat 25 mg + Riboflavin 5mg + Thiamin hydrochlorid 30 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '395'),
(404, 'Orgatec', '0060', '3', 'Viên', 11, 'Men bia khÃ´ chá»©a Selenium tÆ°Æ¡ng á»©ng 40mcg Selen, Beta - Caroten 3mg, Vitamin E 200 IU, Vitamin C 250mg,  káº½m oxyd tÆ°Æ¡ng á»©ng 7,5 mg káº½m', 'Men bia khÃ´ chá»©a Selenium tÆ°Æ¡ng á»©ng 40mcg Selen, Beta - Caroten 3mg, Vitamin E 200 IU, Vitamin C 250mg,  káº½m oxyd tÆ°Æ¡ng á»©ng 7,5 mg káº½m', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '396'),
(405, 'Oxxguard', '0059', '3', 'Viên', 11, 'Beta Carotene, Káº½m Sulphat, Selen Dioxid, Mangan, Äá»“ng', 'Beta Carotene, Káº½m Sulphat, Selen Dioxid, Mangan, Äá»“ng', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '397'),
(406, 'Seromin', '0058', '3', 'Viên', 11, 'Selen trong náº¥m men khÃ´ 92,6 mg + Vitamin A 5000 IU + Vitamin E 400 IU + Vitamin C 500 mg', 'Selen trong náº¥m men khÃ´ 92,6 mg + Vitamin A 5000 IU + Vitamin E 400 IU + Vitamin C 500 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '398'),
(407, 'Selazn', '0057', '3', 'Viên', 11, 'Selen trong náº¥m men khÃ´ 92,60mg; natural - caroten suspension 50mg, Dl -a- tocopherol 400 IU; Ascorbic acid 500 mg', 'Selen trong náº¥m men khÃ´ 92,60mg; natural - caroten suspension 50mg, Dl -a- tocopherol 400 IU; Ascorbic acid 500 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '399'),
(408, 'Royalpanacea Syrup', '0056', '84', 'Chai', 11, 'Sá»¯a ong chÃºa 50 mg; Lysine hydroclorid 120 mg; Vitamin A 1000 IU; Ferrous fumarate 25 mg; Zinc 0xide 10 mg; dibasic calcium phosphate 120 mg; Dá»‹ch chiáº¿t lÃ´ há»™i 3 mg', 'Sá»¯a ong chÃºa 50 mg; Lysine hydroclorid 120 mg; Vitamin A 1000 IU; Ferrous fumarate 25 mg; Zinc 0xide 10 mg; dibasic calcium phosphate 120 mg; Dá»‹ch chiáº¿t lÃ´ há»™i 3 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '400'),
(409, 'Royalpanacea', '0055', '4', 'Viên', 11, 'Sá»¯a ong chÃºa 50 mg; tinh cháº¥t lÃ´ há»™i 3 mg; Vitamin A 2000 IU; Ferrous fumarate 25 mg; Magnesium oxide 40 mg; Zinc 0xide 10 mg; dibasic calcium phosphate 120 mg.', 'Sá»¯a ong chÃºa 50 mg; tinh cháº¥t lÃ´ há»™i 3 mg; Vitamin A 2000 IU; Ferrous fumarate 25 mg; Magnesium oxide 40 mg; Zinc 0xide 10 mg; dibasic calcium phosphate 120 mg.', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '401'),
(410, 'Arcalion 200mg', '0054', '2', 'viên', 11, 'Sulbutiamine 200mg', 'Sulbutiamine 200mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '402');
INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(411, 'Multivitamol 1+', '0053', '157', 'Chai 100 ml', 11, 'Iron (Fe2) lactate 10 mg, Vitamin A 180 IU, Vitamin D3 12,5 µg, Vitamin B1 4 mg, Vitamin B2 5 mg, Vitamin B6 5 mg, Vitamin C 300 mg, Vitamin E 30 mg, Nicotine aminde 50 mg, Panthenol 25 mg, Vitamin B12 2,5 mg', 'Iron (Fe2) lactate 10 mg, Vitamin A 180 IU, Vitamin D3 12,5 µg, Vitamin B1 4 mg, Vitamin B2 5 mg, Vitamin B6 5 mg, Vitamin C 300 mg, Vitamin E 30 mg, Nicotine aminde 50 mg, Panthenol 25 mg, Vitamin B12 2,5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '403'),
(412, 'Vitakid', '0052', '12', 'á»ng nhá»±a 10 ml', 11, 'L-lysin hydroclorid 200 mg, Vitamin B1 2,66 mg, Vitamin B2 3 mg, Vitamin B6 4 mg, Vitamin D3 400 IU, Vitamin E 10 mg,Vitamin PP 20 mg,Vitamin B5 10 mg, Calci 80 mg,Phosphor 123,4 mg', 'L-lysin hydroclorid 200 mg, Vitamin B1 2,66 mg, Vitamin B2 3 mg, Vitamin B6 4 mg, Vitamin D3 400 IU, Vitamin E 10 mg,Vitamin PP 20 mg,Vitamin B5 10 mg, Calci 80 mg,Phosphor 123,4 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '404'),
(413, 'Kid F', '0051', '95', 'Chai', 11, 'Vitamin A (dáº¡ng Palmitat) 1000 IU, Vitamin B1 1 mg, Vitamin B2 1 mg, Vitamin B6 0,5mg, Vitamin D3 100 IU, Vitamin B3 10 mg, Vitamin B5 3 mg, L-lysin hydrochlorid 5 mg', 'Vitamin A (dáº¡ng Palmitat) 1000 IU, Vitamin B1 1 mg, Vitamin B2 1 mg, Vitamin B6 0,5mg, Vitamin D3 100 IU, Vitamin B3 10 mg, Vitamin B5 3 mg, L-lysin hydrochlorid 5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '405'),
(414, 'Indoviton', '0050', '64', 'Chai', 11, 'Vitamin A 5000 IU; Vitamin D3 400 IU; Vitamin B1 3 mg; Vitamin B2 2 mg; Vitamin B6 1 mg; Vitamin B12 5 mcg; niacinamid 20 mg; L-lysine HCl 200 mg; Calcium pantothenate 5 mg', 'Vitamin A 5000 IU; Vitamin D3 400 IU; Vitamin B1 3 mg; Vitamin B2 2 mg; Vitamin B6 1 mg; Vitamin B12 5 mcg; niacinamid 20 mg; L-lysine HCl 200 mg; Calcium pantothenate 5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '406'),
(415, 'Lavixton', '0049', '64', 'Chai', 11, 'Vitamin A 5000 IU; Vitamin D3 400 IU; Vitamin B1 3 mg; Vitamin B2 2 mg; Vitamin B6 1 mg; Vitamin B12 5 mcg; niacinamid 20 mg; L-lysine HCl 200 mg; Calcium pantothenate 5 mg', 'Vitamin A 5000 IU; Vitamin D3 400 IU; Vitamin B1 3 mg; Vitamin B2 2 mg; Vitamin B6 1 mg; Vitamin B12 5 mcg; niacinamid 20 mg; L-lysine HCl 200 mg; Calcium pantothenate 5 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '407'),
(416, 'Ubinutro', '0048', '74', 'Lá» 90 ml', 11, 'Vitamin B1 20 mg; Vitamin B2 20mg; Vitamin B6 20 mg; Vitamin PP 18 mg;        Káº½m (káº½m sunfat) 30 mg;Lysin HCL 900 mg', 'Vitamin B1 20 mg; Vitamin B2 20mg; Vitamin B6 20 mg; Vitamin PP 18 mg;        Káº½m (káº½m sunfat) 30 mg;Lysin HCL 900 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '408'),
(417, 'Esamvit Liquid', '0047', '64', 'Chai 60 ml', 11, 'L-lysin hydroclorid 200 mg; Vitamin B1 2,66 mg; Vitamin B2 3 mg; Vitamin B6 4 mg; Vitamin D3 400 IU; Vitamin E 10 mg; Vitamin PP 20 mg; Vitamin B5 10 mg; Calci 80 mg; Phosphor 123,4 mg ', 'L-lysin hydroclorid 200 mg; Vitamin B1 2,66 mg; Vitamin B2 3 mg; Vitamin B6 4 mg; Vitamin D3 400 IU; Vitamin E 10 mg; Vitamin PP 20 mg; Vitamin B5 10 mg; Calci 80 mg; Phosphor 123,4 mg ', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '409'),
(418, 'Vitamin B1', '0046', '25', 'Viên', 11, 'Vitamin B1 10mg', 'Vitamin B1 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '410'),
(419, 'Vitamin B1 10mg', '0045', '51', 'viên', 11, 'Vitamin B1  10mg', 'Vitamin B1  10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '411'),
(420, 'Vitamin B2 2mg', '0044', '23', 'Viên', 11, 'Vitamin B2   2mg', 'Vitamin B2   2mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '412'),
(421, 'Vitamin B6 25mg', '0043', '97', 'Viên', 11, 'Vitamin B6  25mg', 'Vitamin B6  25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '413'),
(422, 'Vitamin C 0,10g', '0042', '67', 'Viên', 11, 'Vitamin C 0,1g', 'Vitamin C 0,1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '414'),
(423, 'Vitamin C 100mg', '0041', '82', 'viên', 11, 'Vitamin C 0,1g', 'Vitamin C 0,1g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '415'),
(424, 'Vitamin PP', '0040', '440', 'Viên', 11, 'Vitamin PP 0,05g', 'Vitamin PP 0,05g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '416'),
(425, 'Zento B', '0039', '300', 'Viên', 11, 'Vitamin 3B (B1 125mg + B6 125mg + B12 125 mcg)', 'Vitamin 3B (B1 125mg + B6 125mg + B12 125 mcg)', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '417'),
(426, 'Medtrivit B', '0038', '510', 'viên', 11, 'Vitamin 3B ( B1 125mg + B6 125mg + B12 125 mcg)', 'Vitamin 3B ( B1 125mg + B6 125mg + B12 125 mcg)', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '418'),
(427, 'Vitamin B1 25mg', '0037', '610', 'á»ng', 11, 'Vitamin B1 25mg', 'Vitamin B1 25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '419'),
(428, 'Vitamin B12 500mcg', '0036', '610', 'á»ng', 11, 'Vitamin B12 500mcg', 'Vitamin B12 500mcg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '420'),
(429, 'Vitamin C (Cá»• bá»“ng nÃ¢u)', '0035', '1', 'á»ng', 11, 'Vitamin C 0,5g', 'Vitamin C 0,5g', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '421'),
(430, 'Vitamin K', '0034', '3', 'á»ng', 11, 'Vitamin K 5mg', 'Vitamin K 5mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '422'),
(431, 'Restasis 0,05% x 0,4ml', '0033', '19', 'á»ng 0,4ml (há»™p 30 á»‘ng)', 11, 'Cyclosporin 0,05%', 'Cyclosporin 0,05%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '423'),
(432, '5-Fluorouracil ''Ebewe'' 250mg 5ml', '0032', '44', 'á»ng', 11, 'Fluorouracil (5-FU) 50mg/ml', 'Fluorouracil (5-FU) 50mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '424'),
(433, 'Avastin inj. 100mg/4 ml', '0031', '8', 'Lá»', 11, 'Bevacizumab 100mg/4ml', 'Bevacizumab 100mg/4ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '425'),
(434, 'Cycloferon 150mg', '0030', '14', 'Viên', 11, 'Acridone acetic 150mg + N-methylglucamin 146mg', 'Acridone acetic 150mg + N-methylglucamin 146mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '426'),
(435, 'Sandimmun inf. 50mg/ ml', '0029', '67', 'á»ng', 11, 'Ciclosporin 50mg/ml', 'Ciclosporin 50mg/ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '427'),
(436, 'Sandimmun Neoral Soft Cap. 100mg', '0028', '72', 'Viên', 11, 'Ciclosporin 100mg', 'Ciclosporin 100mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '428'),
(437, 'Sandimmun Neoral Soft Cap. 25mg', '0027', '18', 'Viên', 11, 'Ciclosporin 25mg', 'Ciclosporin 25mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '429'),
(438, 'Glucose 30%-5ml', '0026', '1', 'á»ng 5 ml', 11, 'Glucose 30%', 'Glucose 30%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '430'),
(439, 'Glucose 5% EP 100ml', '0025', '10', 'Chai 100 ml', 11, 'Glucose 5%', 'Glucose 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '431'),
(440, 'Glucose 5% - 500ml', '0024', '11', 'Chai 500 ml', 11, 'Glucose 5%', 'Glucose 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '432'),
(441, 'Dextrose', '0023', '10', 'Chai 500 ml', 11, 'Glucose 5%', 'Glucose 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '433'),
(442, 'Oresol 20,5g', '0022', '2', 'GÃ³i bá»™t', 11, 'Glucose:20g, natri clorid:3,5g, natri citrat:2,9g, kaliclorid:1,5g (Oresol)', 'Glucose:20g, natri clorid:3,5g, natri citrat:2,9g, kaliclorid:1,5g (Oresol)', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '434'),
(443, 'Kaliclorid 10%', '0021', '3', 'á»ng', 11, 'Kaliclorid 10%', 'Kaliclorid 10%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '435'),
(444, 'Osmofundin 20% EP 250ml', '0020', '20', 'Chai 250 ml', 11, 'Mannitol + sorbitol', 'Mannitol + sorbitol', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '436'),
(445, 'Sodium clorid', '0019', '10', 'Chai', 11, 'NaCl 0,9%/ 500 ml', 'NaCl 0,9%/ 500 ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '437'),
(446, 'NÆ°á»›c cáº¥t pha tiÃªm', '0018', '920', 'á»ng tiÃªm', 11, 'NÆ°á»›c cáº¥t pha tiÃªm', 'NÆ°á»›c cáº¥t pha tiÃªm', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '438'),
(447, 'Sterilised Water Inj  5ml ( NÆ°á»›c tiá»‡t trÃ¹ng pha tiÃªm)', '0017', '1', 'á»ng nhá»±a', 11, 'NÆ°á»›c cáº¥t pha tiÃªm', 'NÆ°á»›c cáº¥t pha tiÃªm', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '439'),
(448, 'Ringer Lactat EP 500ml', '0016', '10', 'Chai 500mg', 11, 'Ringer lactat', 'Ringer lactat', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '440'),
(449, 'Lactat ringer', '0015', '10', 'Chai 500mg', 11, 'Ringer lactat', 'Ringer lactat', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '441'),
(450, 'Ringer lactat + G5% EP 500ml', '0014', '13', 'Chai 500mg', 11, 'Ringer lactat + Glucose 5%', 'Ringer lactat + Glucose 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '442'),
(451, 'Diaphyllin 4,8% 5ml', '0013', '11', 'á»ng', 11, 'Aminophylline 4,8%', 'Aminophylline 4,8%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '443'),
(452, 'Salbutamol 4mg', '0012', '100', 'Viên', 11, 'Salbutamol 4mg', 'Salbutamol 4mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '444'),
(453, 'Serbutam 100mcg', '0011', '76', 'BÃ¬nh xá»‹t', 11, 'Salbutamol sulfate 100mcg/liá»u', 'Salbutamol sulfate 100mcg/liá»u', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '445'),
(454, 'Pharcoter', '0010', '400', 'Viên', 11, 'Terpin hydrat 100 mg + Codein 10 mg', 'Terpin hydrat 100 mg + Codein 10 mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '446'),
(455, 'Calci clorid 10%', '0009', '1', 'á»ng', 11, 'Calciclorid 10%', 'Calciclorid 10%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '447'),
(456, 'SAT', '0008', '21', 'á»ng', 11, 'Huyáº¿t thanh khÃ¡ng Ä‘á»™c tá»‘ uá»‘n vÃ¡n 1500 UI', 'Huyáº¿t thanh khÃ¡ng Ä‘á»™c tá»‘ uá»‘n vÃ¡n 1500 UI', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '448'),
(457, 'Vinphacol', '0007', '13', 'á»ng', 11, 'Tolazolin Hydroclorid 10mg/1ml', 'Tolazolin Hydroclorid 10mg/1ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '449'),
(458, 'Alcaine Drop 0.5% 15 ml', '0006', '38', 'Lá» 15ml', 11, 'Proparacain hydrochlorid 0,5%', 'Proparacain hydrochlorid 0,5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '450'),
(459, 'Xylocaine Jelly Oin 2% 30g', '0005', '59', 'Tube 30g', 11, 'Lidocain 2%', 'Lidocain 2%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '451'),
(460, 'Vincomid', '0004', '3', 'á»ng', 11, 'Metoclopramid 10mg/2ml', 'Metoclopramid 10mg/2ml', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '452'),
(461, 'Primperan 10mg', '0003', '2', 'Viên', 11, 'Metoclopramid 10mg', 'Metoclopramid 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '453'),
(462, 'Pimeran', '0002', '180', 'Viên', 11, 'Metoclopramid 10mg', 'Metoclopramid 10mg', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '454'),
(463, 'Povidine 5%', '0001', '6', 'Lá» 20 ml', 11, 'Povidine iod 5%', 'Povidine iod 5%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '455'),
(464, 'Povidine 10%', '0000', '20', 'Chai  100 ml', 11, 'Povidone iodine 10%', 'Povidone iodine 10%', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', 'Khô, thoáng mát', 3, 4, 1, '456');

-- --------------------------------------------------------

--
-- Table structure for table `drugstores`
--

DROP TABLE IF EXISTS `drugstores`;
CREATE TABLE IF NOT EXISTS `drugstores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `daidien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giayphep` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngaycap` date NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `map` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `drugstores`
--

INSERT INTO `drugstores` (`id`, `ten`, `daidien`, `giayphep`, `ngaycap`, `dienthoai`, `diachi`, `cities_id`, `map`, `gioithieu`, `trangthai`) VALUES
(1, 'NT DS VÅ© Thá»‹ Ngá»c', '51 VÄƒn Miáº¿u', '0000', '2013-01-01', '3.747.4232', '51 VÄƒn Miáº¿u', 1, '21.033332,105.849999', 'Äang  cáº­p nháº­t', 1),
(2, 'NT Äáº·ng Thá»‹ Ngá»c', '33B VÄƒn Miáº¿u', '0000', '2013-01-01', '3.843.4518', '33B VÄƒn Miáº¿u', 1, '21.033332,105.850000', 'Äang  cáº­p nháº­t', 1),
(3, 'Cty CP DP Máº¡nh DÆ°Æ¡ng', '37B VÄƒn Miáº¿u', '0000', '2013-01-01', '3.747.4857', '37B VÄƒn Miáº¿u', 1, '21.033332,105.850001', 'Äang  cáº­p nháº­t', 1),
(4, 'Cty CP DP Viá»‡t Long', '37D VÄƒn Miáº¿u', '0000', '2013-01-01', '3.747.3164', '37D VÄƒn Miáº¿u', 1, '21.033332,105.850002', 'Äang  cáº­p nháº­t', 1),
(5, 'Cty VÄƒn Miáº¿u', '37E VÄƒn Miáº¿u', '0000', '2013-01-01', '3.823.1366', '37E VÄƒn Miáº¿u', 1, '21.033332,105.850003', 'Äang  cáº­p nháº­t', 1),
(6, 'Cty TNHH DP Trang - PhÆ°Æ¡ng', '47 VÄƒn Miáº¿u', '0000', '2013-01-01', '3.747.1550', '47 VÄƒn Miáº¿u', 1, '21.033332,105.850004', 'Äang  cáº­p nháº­t', 1),
(7, 'NT Nguyá»…n Cháº¥n ÄÃ´ng', '55A Quá»‘c Tá»­ GiÃ¡m', '0000', '2013-01-01', '3.823.1682', '55A Quá»‘c Tá»­ GiÃ¡m', 1, '21.033332,105.850005', 'Äang  cáº­p nháº­t', 1),
(8, 'NT Äinh Thá»‹ Há»“ng Oanh', '45 Quá»‘c Tá»­ GiÃ¡m', '0000', '2013-01-01', '3.823.5602', '45 Quá»‘c Tá»­ GiÃ¡m', 1, '21.033332,105.850006', 'Äang  cáº­p nháº­t', 1),
(9, 'NT BÃ¹i VÄƒn Thanh', '63A Quá»‘c Tá»­ GiÃ¡m', '0000', '2013-01-01', '3.747.4246', '63A Quá»‘c Tá»­ GiÃ¡m', 1, '21.033332,105.850007', 'Äang  cáº­p nháº­t', 1),
(10, 'NT Nguyá»…n ChÃ­ TÃ¢n', '115 E2 PhÆ°Æ¡ng Mai', '0000', '2013-01-01', '3.852.7281', '115 E2 PhÆ°Æ¡ng Mai', 1, '21.033332,105.850008', 'Äang  cáº­p nháº­t', 1),
(11, 'NT Äá»— KÃ­nh TÃ¹ng', '5E8 PhÆ°Æ¡ng Mai', '0000', '2013-01-01', '3.852.6442', '5E8 PhÆ°Æ¡ng Mai', 1, '21.033332,105.850009', 'Äang  cáº­p nháº­t', 1),
(12, 'NT NghÄ©a HÆ°ng', '340 TÃ¢y SÆ¡n (Sá»‘ 1 VÄ©nh Há»“)', '0000', '2013-01-01', '3.563.1068', '340 TÃ¢y SÆ¡n (Sá»‘ 1 VÄ©nh Há»“)', 1, '21.033332,105.850010', 'Äang  cáº­p nháº­t', 1),
(13, 'NT Tráº§n Thá»‹ BÃ­ch Háº±ng', '1K Khâm Thiên', '0000', '2013-01-01', '3.511.7914', '1K Khâm Thiên', 1, '21.033332,105.850011', 'Äang  cáº­p nháº­t', 1),
(14, 'NT Nguyá»…n Thanh Táº¡o', '63 Quá»‘c Tá»­ GiÃ¡m', '0000', '2013-01-01', '3.733.1271', '63 Quá»‘c Tá»­ GiÃ¡m', 1, '21.033332,105.850012', 'Äang  cáº­p nháº­t', 1),
(15, 'NT Nguyá»…n Äá»©c Luáº­n', '510 ÄÆ°á»ng LÃ¡ng', '0000', '2013-01-01', '3.856.0606', '510 ÄÆ°á»ng LÃ¡ng', 1, '21.033332,105.850013', 'Äang  cáº­p nháº­t', 1),
(16, 'NT Nam Anh', '3 Tráº§n HÆ°ng Äáº¡o', '0000', '2013-01-01', '3.821.0579', '3 Tráº§n HÆ°ng Äáº¡o', 1, '21.033332,105.850014', 'Äang  cáº­p nháº­t', 1),
(17, 'NT Háº£i HÃ ', '3 Tráº§n HÆ°ng Äáº¡o', '0000', '2013-01-01', '3.972.1889', '3 Tráº§n HÆ°ng Äáº¡o', 1, '21.033332,105.850015', 'Äang  cáº­p nháº­t', 1),
(18, 'NT Long Tâm', '199 Giáº£i PhÃ³ng', '0000', '2013-01-01', '3 628 8662', '199 Giáº£i PhÃ³ng', 1, '21.033332,105.850016', 'Äang  cáº­p nháº­t', 1),
(19, 'NT Nguyá»…n Thá»‹ XuÃ¢n', '203 Giáº£i PhÃ³ng', '0000', '2013-01-01', '3.628.3332', '203 Giáº£i PhÃ³ng', 1, '21.033332,105.850017', 'Äang  cáº­p nháº­t', 1),
(20, 'NT Nguyá»…n LiÃªm', '201 Giáº£i PhÃ³ng', '0000', '2013-01-01', '3.869 1638', '201 Giáº£i PhÃ³ng', 1, '21.033332,105.850018', 'Äang  cáº­p nháº­t', 1),
(21, 'NT Äá»— CÃ´ng TiÃªu', '193 Giáº£i PhÃ³ng', '0000', '2013-01-01', '3.628 0596', '193 Giáº£i PhÃ³ng', 1, '21.033332,105.850019', 'Äang  cáº­p nháº­t', 1),
(22, 'Cty Viá»‡t CÆ°á»ng', '229 Giáº£i PhÃ³ng', '0000', '2013-01-01', '3.869 5868', '229 Giáº£i PhÃ³ng', 1, '21.033332,105.850020', 'Äang  cáº­p nháº­t', 1),
(23, 'NT Minh Chính 2', '25 LÃª VÄƒn HÆ°u', '0000', '2013-01-01', '3.944 7353', '25 LÃª VÄƒn HÆ°u', 1, '21.033332,105.850021', 'Äang  cáº­p nháº­t', 1),
(24, 'NT Cty TBYT', '44 LÃª Äáº¡i HÃ nh', '0000', '2013-01-01', '3.923 2764', '44 LÃª Äáº¡i HÃ nh', 1, '21.033332,105.850022', 'Äang  cáº­p nháº­t', 1),
(25, 'Cty Viá»‡t CÆ°á»ng', '115 Phá»‘ Huáº¿', '0000', '2013-01-01', '3.821 1016', '115 Phá»‘ Huáº¿', 1, '21.033332,105.850023', 'Äang  cáº­p nháº­t', 1),
(26, 'NT Tráº§n BÃ¡ Giu', '110 LÃª Trá»ng Táº¥n', '0000', '2013-01-01', '3.565.0067', '110 LÃª Trá»ng Táº¥n', 1, '21.033332,105.850024', 'Äang  cáº­p nháº­t', 1),
(27, 'NT Lê Quang Thân', '109 Quan Nhân', '0000', '2013-01-01', '3.557.2709', '109 Quan Nhân', 1, '21.033332,105.850025', 'Äang  cáº­p nháº­t', 1),
(28, 'NT Minh Tiáº¿n', 'Nguyá»…n QuÃ½ Äá»©c', '0000', '2013-01-01', '3.854.2870', 'Nguyá»…n QuÃ½ Äá»©c', 1, '21.033332,105.850026', 'Äang  cáº­p nháº­t', 1),
(29, 'Cty Rá»“ng Viá»‡t', 'N5D Trung Hoà - NC', '0000', '2013-01-01', '6.292.4742', 'N5D Trung Hoà - NC', 1, '21.033332,105.850027', 'Äang  cáº­p nháº­t', 1),
(30, 'NT VÃ¢nÂ + TÆ°á»ng', '98 Cáº§u Diá»…n', '0000', '2013-01-01', '3.837.1262', '98 Cáº§u Diá»…n', 1, '21.033332,105.850028', 'Äang  cáº­p nháº­t', 1),
(31, 'NTÂ Mai HÆ°Æ¡ng', '108A12 NghÄ©a TÃ¢n', '0000', '2013-01-01', '3.756.5747', '108A12 NghÄ©a TÃ¢n', 1, '21.033332,105.850029', 'Äang  cáº­p nháº­t', 1),
(32, 'NT Thu Háº±ng', '7 ÄÆ°á»ng BÆ°á»Ÿi', '0000', '2013-01-01', '3.836.4695', '7 ÄÆ°á»ng BÆ°á»Ÿi', 1, '21.033332,105.850030', 'Äang  cáº­p nháº­t', 1),
(33, 'NT VÅ© Thanh ThuÃ½', '327 Kim Mã', '0000', '2013-01-01', '3.846.4521', '327 Kim Mã', 1, '21.033332,105.850031', 'Äang  cáº­p nháº­t', 1),
(34, 'NT Vinaphar', '138B Giáº£ng VÃµ', '0000', '2013-01-01', '3.844.3154', '138B Giáº£ng VÃµ', 1, '21.033332,105.850032', 'Äang  cáº­p nháº­t', 1),
(35, 'NT VÅ© Há»“ng Má»µ', '12 Äá»™i Cáº¥n', '0000', '2013-01-01', '3.823.0191', '12 Äá»™i Cáº¥n', 1, '21.033332,105.850033', 'Äang  cáº­p nháº­t', 1),
(36, 'NT Thu HÆ°Æ¡ng', '91 Giang VÄƒn Minh', '0000', '2013-01-01', '3.722.1441', '91 Giang VÄƒn Minh', 1, '21.033332,105.850034', 'Äang  cáº­p nháº­t', 1),
(37, 'NT Thanh Lan', '369 Äá»™i Cáº¥n', '0000', '2013-01-01', '3.832.6969', '369 Äá»™i Cáº¥n', 1, '21.033332,105.850035', 'Äang  cáº­p nháº­t', 1),
(38, 'NT Minh Tiáº¿n', '390 Äá»™i Cáº¥n', '0000', '2013-01-01', '3.834.6670', '390 Äá»™i Cáº¥n', 1, '21.033332,105.850036', 'Äang  cáº­p nháº­t', 1),
(39, 'NT Äáº·ng Kiá»u Oanh', '102B X2 TT BTL LÄƒng', '0000', '2013-01-01', '3.762.8701', '102B X2 TT BTL LÄƒng', 1, '21.033332,105.850037', 'Äang  cáº­p nháº­t', 1),
(40, 'NT Mai Anh', '57 Cá»•ng viá»‡n Nhi', '0000', '2013-01-01', '6.275.1096', '57 Cá»•ng viá»‡n Nhi', 1, '21.033332,105.850038', 'Äang  cáº­p nháº­t', 1),
(41, 'SiÃªu thá»‹ thuá»‘c Mega', '31 LÃ¡ng Háº¡', '0000', '2013-01-01', '6.255.2255', '31 LÃ¡ng Háº¡', 1, '21.033332,105.850039', 'Äang  cáº­p nháº­t', 1),
(42, 'Quáº§y 29', '168 Ngá»c KhÃ¡nh', '0000', '2013-01-01', '0913.008.002', '168 Ngá»c KhÃ¡nh', 1, '21.033332,105.850040', 'Äang  cáº­p nháº­t', 1),
(43, 'Cty May - Quáº§y 30', '31 LÃ¡ng Háº¡', '0000', '2013-01-01', '6.266.1638', '31 LÃ¡ng Háº¡', 1, '21.033332,105.850041', 'Äang  cáº­p nháº­t', 1),
(44, 'NT ÄoÃ n Cao SÆ¡n', '101 A5 TT Thành Công', '0000', '2013-01-01', '3.831.4509', '101 A5 TT Thành Công', 1, '21.033332,105.850042', 'Äang  cáº­p nháº­t', 1),
(45, 'NT Äá»©c An', '107B A6 Thành Công', '0000', '2013-01-01', '3.773.6639', '107B A6 Thành Công', 1, '21.033332,105.850043', 'Äang  cáº­p nháº­t', 1),
(46, 'NT Há»“ng Nhung', '116 Ngá»c KhÃ¡nh', '0000', '2013-01-01', '3.771.4736', '116 Ngá»c KhÃ¡nh', 1, '21.033332,105.850044', 'Äang  cáº­p nháº­t', 1),
(47, 'NT Trá»ng Táº¥n', '128 Ngá»c KhÃ¡nh', '0000', '2013-01-01', '6.247.0926', '128 Ngá»c KhÃ¡nh', 1, '21.033332,105.850045', 'Äang  cáº­p nháº­t', 1),
(48, 'NT Thanh Háº£i', '85 Nguyá»…n SÆ¡n', '0000', '2013-01-01', '3.872.0561', '85 Nguyá»…n SÆ¡n', 1, '21.033332,105.850046', 'Äang  cáº­p nháº­t', 1),
(49, 'NT ChÆ°Æ¡ng DÆ°Æ¡ng', '243 Nguyá»…n VÄƒn Cá»«', '0000', '2013-01-01', '3.873.0906', '243 Nguyá»…n VÄƒn Cá»«', 1, '21.033332,105.850047', 'Äang  cáº­p nháº­t', 1),
(50, 'Cty Viá»‡t HÆ°ng', 'Sá»‘ 7 TTTM Äá»‹nh CÃ´ng', '0000', '2013-01-01', '6.217.9198', 'Sá»‘ 7 TTTM Äá»‹nh CÃ´ng', 1, '21.033332,105.850048', 'Äang  cáº­p nháº­t', 1),
(51, 'ANH THÆ¯', 'Trá»‹nh Má»¹ VÃ¢n', '2376', '2000-12-01', NULL, '7A,Â Nguyá»…n VÄƒn LÆ°á»£ng,Â PhÆ°á»ng 10', 1, '21.033332,105.849999', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(52, 'ANH TUáº¤N', 'Äáº·ng Há»“ng LÃ¢m', '257', '2000-11-01', NULL, '197Â chá»£ Cao Äáº¡t,Â PhÆ°á»ng 1', 1, '21.033332,105.850000', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(53, 'ÃNH TUYáº¾T', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', '2000-12-01', NULL, '52 Kim Long, Nguyên Hoàng', 1, '21.033332,105.850001', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(54, 'Ã‚u ChÃ¢u', 'VÃµ VÄƒn Triá»‡u', 'Äang cáº­p nháº­t', '2002-02-03', NULL, '240/2Â CÃ´ Giang,Â PhÆ°á»ng 2Â ', 2, '21.033332,105.850002', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(55, 'NHÃ€ THUá»C NHáº¬T ANH', 'LÆ°Æ¡ng Trá»ng HoÃ n', '19/05', '2005-01-11', NULL, 'Sá»‘ 5 ngÃµ 575 Kim MÃ£', 1, '21.033332,105.850003', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\r\n', 1),
(56, 'NHÃ€ THUá»C PHÃšC NHÃ‚N ÃÆ¯á»œNG', 'LÃª Thá»‹ Kim Ngá»c', '06/06', '2013-01-01', 'ererrewewr', '266 Nguyá»…n VÄƒn Cá»«', 1, '21.033332,105.850004', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(57, 'NHÃ€ THUá»C PHÆ¯Æ NG LÃŠ', 'Nguyá»…n Thá»‹ Sinh', '254/06', '2013-01-01', NULL, '8 Äinh Liá»‡t', 1, '21.033332,105.850005', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(58, 'NHÃ€ THUá»C PHÆ¯Æ NG LINH', 'Nguyá»…n Duy Khang', '36/04', '2000-01-01', NULL, '174 TÃ¢y SÆ¡n', 1, '21.033332,105.850006', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(59, 'NHÃ€ THUá»C QUá»C TUáº¤N', 'Nguyá»…n QuÃ´c Tuáº¥n', '109/04', '2013-01-01', '000000', '1E2 PhÆ°Æ¡ng Mai', 1, '21.033332,105.850007', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `equips`
--

DROP TABLE IF EXISTS `equips`;
CREATE TABLE IF NOT EXISTS `equips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chucnang` text COLLATE utf8_unicode_ci NOT NULL,
  `manus_id` int(11) NOT NULL,
  `distributes_id` int(11) NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='trang thiết bị' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `equips`
--

INSERT INTO `equips` (`id`, `ten`, `anh`, `chucnang`, `manus_id`, `distributes_id`, `gioithieu`, `trangthai`) VALUES
(1, 'RossMax MJ701', 's', 'MÃ n hÃ¬nh LCD rá»™ng hiá»ƒn thá»‹ cÃ¹ng má»™t lÃºc chá»‰ sá»‘ huyáº¿t Ã¡p vÃ  nhá»‹p tim\n- DÃ¹ng cho báº¯p tay cÃ³ chu vi tá»« 24 - 36 cm.\n- Khá»ang Ä‘o: Huyáº¿p Ã¡p tá»‘i Ä‘a 40 - 250 mmHg, huyáº¿t Ã¡p tá»‘i thiá»ƒu 40 - 180 mmHg, nhá»‹p tim 40 - 199 láº§n/phÃºt.\n- Bá»™ nhá»› lÆ°u Ä‘Æ°á»£c cho 2 ngÆ°á»i riÃªng biá»‡t (2x60) nÃªn cÃ³ thá»ƒ lÆ°u giá»¯ Ä‘Æ°á»£c tá»›i 120 káº¿t quáº£\n- Cáº£nh bÃ¡o hiá»‡n tÆ°á»£ng rá»‘i loáº¡n nhá»‹p tim (IHB)\n- ThÃ´ng bÃ¡o tÃ¬nh tráº¡ng huyáº¿t Ã¡p táº¡i thá»i Ä‘iá»ƒm Ä‘o.\n- Sá»­ dá»¥ng nguá»“n 4 pin AA\n- Sá»­ dá»¥ng nguá»“n adapter. (mua riÃªng )\n- Rossmax MJ701 Ä‘Ã£ Ä‘Æ°á»£c nhiá»‡t Ä‘á»›i hÃ³a Ä‘iá»u kiá»‡n lÃ m viá»‡c. Nhiá»‡t Ä‘á»™ tá»« 10 Ä‘áº¿n 40 Ä‘á»™ C vÃ  Ä‘á»™ áº©m khÃ´ng khÃ­ 85%. Trá»ng lÆ°á»£ng 552g ká»ƒ cáº£ pin.', 5, 4, 'Äang cáº­p nháº­t', 1),
(2, 'Omron HGM-111', 'small_tkd1358490108.jpg', 'Que thá»­ Ä‘Æ°á»£c mÃ£ hÃ³a tá»± Ä‘á»™ng:\nGiÃºp loáº¡i bá» cÃ¡c lá»—i mÃ£ hÃ³a sai cÃ³ thá»ƒ dáº«n Ä‘áº¿n rá»§i ro sai liá»u lÆ°á»£ng thuá»‘c Ä‘iá»u trá»‹ bá»‡nh.\n- Äo nhanh trong 5 giÃ¢y.\n- Dá»… sá»­ dá»¥ng\nÄo vá»›i mÃ´t máº«u mÃ¡u nhá».\nCÃ³ Ä‘Ã¨n mÃ n hÃ¬nh dá»… Ä‘á»c káº¿t quáº£ Ä‘o.\nCÃ³ tÃ­n hiá»‡u bÃ¡o lá»—i khi sá»­ dá»¥ng que thá»­ quÃ¡ háº¡n, bá»‹ há»ng hoáº·c que Ä‘Ã£ qua sá»­ dá»¥ng.\n- Dá»… theo dÃµi káº¿t quáº£ Ä‘o\nCÃ³ thá»ƒ cÃ i Ä‘áº·t cháº¿ Ä‘á»™ trÆ°á»›c vÃ  sau khi Äƒn.\nBá»™ nhá»› lá»›n lÆ°u Ä‘Æ°á»£c 512 káº¿t quáº£ vá»›i ngÃ y, giá» Ä‘o.\nCÃ³ káº¿t quáº£ trung bÃ¬nh cá»§a 7 ngÃ y, 14 ngÃ y vÃ  30 ngÃ y Ä‘o trÆ°á»›c.\nCÃ³ thá»ƒ táº£i Ä‘Æ°á»£c káº¿t quáº£ sang mÃ¡y tÃ­nh (qua cá»•ngUSB riÃªng cá»§a Omron)\n- An toÃ n.\nCÃ³ náº¯p trÆ°á»£t bá» que thá»­ sau khi Ä‘o.', 5, 4, 'Äang cáº­p nháº­t', 1),
(3, 'MÃ¡y xÃ´ng mÅ©i há»ng NE-C802', 'NE-C802.jpg', 'CÃ´ng nghá»‡ van áº£o giÃºp hiá»‡u quáº£ xÃ´ng cao, an toÃ n, thuáº­n tiá»‡n. \n- KÃ­ch thÆ°á»›c háº¡t khÃ­ nhá», má»‹n ( 3 micron) giÃºp Ä‘i sÃ¢u vÃ o cÃ¡c tiá»ƒu pháº¿ nang.\n- MÃ¡y cháº¡y Ãªm, tiáº¿t kiá»‡m Ä‘iá»‡n nÄƒng, dá»… vá»‡ sinh.\n- Thiáº¿t káº¿ nhá», gá»n, tiá»‡n khi mang Ä‘i du lá»‹ch, cÃ´ng tÃ¡c.\n- Bá»™ xÃ´ng Ä‘i kÃ¨m gá»“m cÃ³ á»‘ng ngáº­m, á»‘ng mÅ©i, máº·t náº¡ ngÆ°á»i lá»›n, máº·t náº¡ tráº» em.', 5, 4, 'Äang cáº­p nháº­t', 1),
(4, 'Xe lÄƒn náº±m BH0002', 'xe-lan-nam-bh0002.png', 'â€¢ CÃ³ ná»‡m bÃ´ vá»‡ sinh\r\nâ€¢ CÃ³ bÃ n Äƒn\r\nâ€¢ CÃ³ tay Ä‘áº©y\r\nâ€¢ CÃ³ thá»ƒ xáº¿p láº¡i', 5, 1, 'Äang cáº­p nháº­t', 1),
(5, 'Bá»“n Massage chÃ¢n táº¡o bá»t khÃ­ cao cáº¥p US-2HDB', 'small_wav1194611486.jpg', '1. Massage spa káº¿t há»£p nhiá»‡t, sá»§i bong bÃ³ng vÃ  kÃ­ch thÃ­ch há»“ng ngoáº¡i.\n \nMÃ¡y sáº½ kÃ­ch hoáº¡t bá»™ lÃ m áº¥m nÆ°á»›c vÃ  bÆ¡m khÃ­ báº¯t Ä‘áº§u hoáº¡t Ä‘á»™ng, táº¡o cÃ¡c sá»§i bong bÃ³ng, cho cáº£m giÃ¡c Ä‘Æ°á»£c massage ráº¥t dá»… chá»‹u. BÃªn cáº¡nh Ä‘Ã³, cÃ¡c Ä‘Ã¨n há»“ng ngoáº¡i giÃºp tÄƒng hiá»‡u quáº£ massage, kÃ­ch thÃ­ch quÃ¡ trÃ¬nh bÃ i tiáº¿t, tháº£i loáº¡i cÃ¡c cháº¥t Ä‘á»™c, cháº¥t dÆ° thá»«a má»™t cÃ¡ch tá»± nhiÃªn, giÃºp ngá»§ ngon vÃ  tÄƒng cÆ°á»ng lÆ°u thÃ´ng mÃ¡u.\n \n2. Massage nhiá»‡t káº¿ há»£p sá»§i bong bÃ³ng.\n \n3. KÃ­ch thÃ­ch há»“ng ngoáº¡i.\n \nMÃ¡y sáº½ chá»‰ khá»Ÿi Ä‘á»™ng Ä‘Ã¨n há»“ng ngoáº¡i. KÃ­ch thÃ­ch há»“ng ngoáº¡i giÃºp tÄƒng cÆ°á»ng lÆ°u thÃ´ng mÃ¡u, dÃ£n cÆ¡, lÃ m áº¥m cÆ¡ thá»ƒ, kÃ­ch thÃ­ch bÃ i tiáº¿t, giÃºpngá»§ ngon.\nMassage chÃ¢n spa Max-641B Ä‘Æ°á»£c thiáº¿t káº¿ kÃ¨m theo bá»™ pháº­n lÃ m áº¥m nÆ°á»›c, vÃ  nÃ³ lÃ m thay Ä‘á»•i nhiá»‡t Ä‘á»™ theo thá»i gian. NgÆ°á»i sá»­ dá»¥ng cÃ³ thá»ƒ lá»±a chá»n nhiá»‡t Ä‘á»™ nÆ°á»›c sao cho cÃ m tháº¥y thoáº£i mÃ¡i nháº¥t', 4, 3, 'Äang cáº­p nháº­t', 1),
(6, 'MÃ¡y hÃºt dá»‹ch 2 bÃ¬nh', 'hutdich2binh.jpg', 'ToÃ n bá»™ há»‡ thá»‘ng Ä‘á»u lÃ m báº±ng loáº¡i nhá»±a ABS, nháº¹, dá»… dÃ ng lau chÃ¹i, vá»‡ sinh\n \nBÃ¬nh dá»‹ch Ä‘Æ°á»£c lÃ m báº±ng nhá»±a cÃ³ kháº£ nÄƒng chá»‹u Ã¡p lá»±c vÃ  nhiá»‡t Ä‘á»™ cao\n \nBÃ¬nh chá»©a dá»‹ch cÃ³ thá»ƒ tÃ­ch lá»›n 1000 cc., lÃ  loáº¡i hai bÃ¬nh Ä‘Æ°á»£c ná»‘i vá»›i nhau (náº¿u bÃ¬nh nÃ y Ä‘áº§y thÃ¬ dá»‹ch sáº½ tá»± Ä‘á»™ng qua bÃ¬nh dá»‹ch kia)\n \n-  CÃ³ bá»™ lá»c Ä‘Æ°á»£c láº¯p giá»¯a bÃ¬nh dá»‹ch vÃ  mÃ¡y chÃ­nh\n \n-  Sá»­ dá»¥ng xylanh  khÃ´ng dáº§u', 4, 3, 'Äang cáº­p nháº­t', 1),
(7, 'MÃ¡y trá»£ thÃ­nh Xingma XM-999E', 'ha-20dx.jpg', '- TÃ­nh nÄƒng vÆ°á»£t trá»™i so vá»›i cÃ¡c sáº£n pháº©m khÃ¡c cÃ¹ng tháº¿ há»‡ ( cÃ´ng nghá»‡ Ká»¹ thuáº­t sá»‘ )\n- Ã‚m thanh trong hÆ¡n ,rÃµ nÃ©t .nhá» bá»™ sá»­ lÃ½ ká»¹ thuáº­t sá»‘ Warp há»— trá»£ nghe radio\n- Sá»­ dá»¥ng cÃ´ng nghá»‡ cao NÃ©n WDRC nÃªn háº¡n cháº¿ tiáº¿ng á»“n vÃ  táº¡p Ã¢m\n- MÃ¡y bá»n,dá»… sá»­ dá»¥ng,giÃ¡ cáº£ trung bÃ¬nh,kinh táº¿,Tiáº¿t kiá»‡m chi phÃ­ khi sá»­ dá»¥ng\n- GiÃ¡ bÃ¬nh dÃ¢n so vá»›i sáº£n pháº©m cÃ¹ng loáº¡i,kinh táº¿ phÃ¹ há»£p cho nhiá»u Ä‘iá»u kiá»‡n kinh táº¿ cá»§a ngÆ°á»i giÃ  thÃ nh thá»‹ vÃ  nÃ´ng thÃ´n\n- Pin sá»­ dá»¥ng Ä‘áº¡i chÃºng,ráº¥t dá»… mua', 4, 3, 'Äang cáº­p nháº­t', 1),
(8, 'GÄƒng tay pháº«u thuáº­t', 'gangtayphauthuat.jpg', 'Cháº¥t liá»‡u : Cao su thiÃªn nhiÃªn 100%\nXuáº¥t sá»© : Malaysia\nTiá»‡t trÃ¹ng tá»«ng gÃ³i\nQuy cÃ¡ch Ä‘Ã³ng goi : 1 tÃºi /1 Ä‘Ã´i', 4, 4, 'Äang cáº­p nháº­t', 1),
(9, 'CÃ¢n sá»©c khá»e Omron', 'small_dol1315963038 (1).jpg', 'Äo cÃ¢n náº·ng', 4, 4, 'Äang cáº­p nháº­t', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hopitals`
--

DROP TABLE IF EXISTS `hopitals`;
CREATE TABLE IF NOT EXISTS `hopitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bệnh viên' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `hopitals`
--

INSERT INTO `hopitals` (`id`, `ten`, `diachi`, `cities_id`, `map`, `trangthai`, `gioithieu`) VALUES
(1, 'Bá»‡nh viá»‡n 19 - 8 Bá»™ CÃ´ng An', 'Mai Dá»‹ch, Cáº§u Giáº¥y', 1, '21.033332,105.849999', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(2, 'Bá»‡nh viá»‡n Báº¯c ThÄƒng Long - Sá»Ÿ Y táº¿ HÃ  Ná»™i', 'Khá»‘i 3A, Thá»‹ tráº¥n ÄÃ´ng Anh', 1, '21.033332,105.850000', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(3, 'Bá»‡nh viá»‡n Báº¡ch Mai', '78 Giáº£i PhÃ³ng, PhÆ°Æ¡ng Mai', 1, '21.033332,105.850001', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(4, 'Bá»‡nh viá»‡n BÃ¡n CÃ´ng ChuyÃªn Khoa Máº¯t HÃ  Ná»™i', '51 Tráº§n NhÃ¢n TÃ´ng', 1, '21.033332,105.850002', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(5, 'Bá»‡nh viá»‡n bÃ¡n cÃ´ng CIRI', '45-47 Hàng Nón', 1, '21.033332,105.850003', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(6, 'Bá»‡nh viá»‡n BÃ¡n CÃ´ng HoÃ¨ Nhai', '17 Hoè Nhai', 1, '21.033332,105.850004', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(7, 'Bá»‡nh viá»‡n BÆ°u Äiá»‡n - Tá»•ng Cty BÆ°u ChÃ­nh Viá»…n ThÃ´ng VN', '1 Yên Bái 2', 1, '21.033332,105.850005', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(8, 'Bá»‡nh viá»‡n CÃ´ng An TP. HÃ  Ná»™i', '67 LÃ½ ThÆ°á»ng Kiá»‡t', 1, '21.033332,105.850006', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(9, 'Bá»‡nh viá»‡n Äa khoa dÃ¢n láº­p Chá»¯ tháº­p Ä‘á» HÃ  Ná»™i', '305 Giáº£i PhÃ³ng, PhÆ°Æ¡ng Liá»‡t', 1, '21.033332,105.850007', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(10, 'Bá»‡nh viá»‡n Äa khoa Äá»©c Giang - Sá»Ÿ Y táº¿ TP. HÃ  Ná»™i', 'Äá»©c Giang, Long BiÃªn', 1, '21.033332,105.850008', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(11, 'Bá»‡nh viá»‡n Äa khoa Kwang Myung - Viá»‡t Nam', '3 LÃ´ G1, ÄÃ´ Thá»‹ Má»›i Nam ThÄƒng Long Ciputra, PhÃº ThÆ°á»£ng', 1, '21.033332,105.850009', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(12, 'Bá»‡nh viá»‡n Ä‘iá»u dÆ°á»¡ng vÃ  phá»¥c há»“i chá»©c nÄƒng ThÄƒng Long', '59 NgÃµ ThÃ´ng Phong, TÃ´n Äá»©c Tháº¯ng', 1, '21.033332,105.850010', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(13, 'Bá»‡nh viá»‡n Äá»‘ng Äa', '192 Nguyá»…n LÆ°Æ¡ng Báº±ng, Quang Trung, Quáº­n Äá»‘ng Äa', 1, '21.033332,105.850011', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n'),
(14, 'Bá»‡nh viá»‡n E', '10 T76 Tá»• 1, Cá»• Nhuáº¿, Tá»« LiÃªm', 1, '21.033332,105.850012', 1, '<p>- Nghi&ecirc;n cá»©u v&agrave; á»©ng dá»¥ng nhá»¯ng tiáº¿n bá»™ Y há»c &eth;áº·c biá»‡t trong lÄ©nh vá»±c c&aacute;c bá»‡nh nhiá»‡t &eth;á»›i &eth;á»ƒ kh&ocirc;ng ngá»«ng n&acirc;ng cao cháº¥t lÆ°á»£ng c&ocirc;ng t&aacute;c chuy&ecirc;n m&ocirc;n.</p>\n\n<p>- Há»£p t&aacute;c nghi&ecirc;n cá»©u khoa há»c vá»›i c&aacute;c tá»• chá»©c v&agrave; c&aacute; nh&acirc;n trong nÆ°á»›c v&agrave; quá»‘c táº¿ vá» c&aacute;c bá»‡nh nhiá»…m tr&ugrave;ng v&agrave; truyá»n nhiá»…m.</p>\n\n<p>- ThÆ°á»ng xuy&ecirc;n thá»±c hiá»‡n nhiá»‡m vá»¥ ph&ograve;ng bá»‡nh v&agrave; ph&ograve;ng chá»‘ng dá»‹ch bá»‡nh nguy hiá»ƒm.</p>\n\n<p>- Duy tr&igrave; viá»‡c thá»±c hiá»‡n tá»‘t c&aacute;c quy cháº¿ Bá»‡nh viá»‡n, kh&ocirc;ng ngá»«ng ph&aacute;t triá»ƒn c&aacute;c phÆ°Æ¡ng tiá»‡n x&eacute;t nghiá»‡m ká»¹ thuáº­t cao trong chuáº©n Ä‘o&aacute;n v&agrave; Ä‘iá»u trá»‹. &Aacute;p dá»¥ng nhá»¯ng th&agrave;nh quáº£ nghi&ecirc;n cá»©u khoa há», háº¡ tá»· lá»‡ tá»­ vong v&agrave; thá»i gian Ä‘iá»u trá»‹ Ä‘á»‘i vá»›i má»™t sá»‘ bá»‡nh nhiá»…m tr&ugrave;ng</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `infors`
--

DROP TABLE IF EXISTS `infors`;
CREATE TABLE IF NOT EXISTS `infors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `infors`
--

INSERT INTO `infors` (`id`, `ten`, `content`, `trangthai`) VALUES
(1, 'ThÃ´ng tin chÃ¢n trang', '<small>Copyright &copy; 2013 Thuá»‘c DÆ°á»£c Liá»‡u. All Rights Reserved. Designed by <a href="https://facebook.com/tranngoc8x" target="_blank">Tráº§n Ngá»c Tháº¯ng</a>.</small>', 1),
(2, 'ThÃ´ng tin liÃªn há»‡', '<p><br />\r\n<span style="font-size:13px; line-height:1.6em">Má»i th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n há»‡</span></p>\r\n\r\n<p>Thuá»‘c dÆ°á»£c liá»‡u&nbsp;<br />\r\nÄá»‹a chá»‰: Sá»‘ 19 - Ng&otilde; 3 - Pháº¡m VÄƒn Äá»“ng - Cáº§u Giáº¥y - H&agrave; Ná»™i<br />\r\nWebsite: thuocduoclieu.com<br />\r\nEmail: tranngocthang89@gmail.com</p>\r\n', 1),
(3, 'Äiá»u khoáº£n sá»­ dá»¥ng', 'Khi truy cáº­p v&agrave;o website thuá»‘c dÆ°á»£c liá»‡u Ä‘á»ƒ tham kháº£o, tÆ° váº¥n hoáº·c mua thuá»‘c, báº¡n Ä‘&atilde; Ä‘á»“ng &yacute; tu&acirc;n thá»§ nhá»¯ng quy Ä‘á»‹nh cá»§a ch&uacute;ng t&ocirc;i. Báº¡n vui l&ograve;ng xem ká»¹ c&aacute;c quy Ä‘á»‹nh dÆ°á»›i Ä‘&acirc;y Ä‘á»ƒ Ä‘áº£m báº£o báº¡n hiá»ƒu r&otilde; c&aacute;c quyá»n lá»£i hoáº·c c&aacute;c quy Ä‘á»‹nh, r&agrave;ng buá»™c. Ch&uacute;ng t&ocirc;i mong báº¡n há»£p t&aacute;c vá»›i ch&uacute;ng t&ocirc;i Ä‘á»ƒ x&acirc;y dá»±ng website thuá»‘c dÆ°á»£c liá»‡u ng&agrave;y c&agrave;ng th&acirc;n thiá»‡n v&agrave; phá»¥c vá»¥ tá»‘t nhá»¯ng y&ecirc;u cáº§u cá»§a ch&iacute;nh báº¡n. Náº¿u c&oacute; báº¥t cá»© c&acirc;u há»i n&agrave;o hoáº·c g&oacute;p &yacute; vá» nhá»¯ng thá»a thuáº­n dÆ°á»›i Ä‘&acirc;y<br />\r\n<strong>T&agrave;i khoáº£n cá»§a báº¡n</strong><br />\r\nÄá»ƒ thuáº­n tiá»‡n trong viá»‡c sá»­ dá»¥ng dá»‹ch vá»¥ thuá»‘c dÆ°á»£c liá»‡u, báº¡n sáº½ Ä‘Æ°á»£c y&ecirc;u cáº§u má»Ÿ t&agrave;i khoáº£n. Báº¡n sáº½ cung cáº¥p cho ch&uacute;ng t&ocirc;i th&ocirc;ng tin vá» Ä‘á»‹a chá»‰ email, máº­t kháº©u v&agrave; há» t&ecirc;n Ä‘á»ƒ c&oacute; ngay 1 t&agrave;i khoáº£n táº¡i Ä‘&acirc;y. Viá»‡c sá»­ dá»¥ng v&agrave; báº£o máº­t th&ocirc;ng tin t&agrave;i khoáº£n l&agrave; tr&aacute;ch nhiá»‡m v&agrave; quyá»n lá»£i cá»§a báº¡n khi sá»­ dá»¥ng BaoTam.vn. Báº¡n pháº£i giá»¯ k&iacute;n máº­t kháº©u v&agrave; t&agrave;i khoáº£n, ho&agrave;n to&agrave;n chá»‹u tr&aacute;ch nhiá»‡m Ä‘á»‘i vá»›i táº¥t cáº£ c&aacute;c hoáº¡t Ä‘á»™ng diá»…n ra th&ocirc;ng qua viá»‡c sá»­ dá»¥ng máº­t kháº©u hoáº·c t&agrave;i khoáº£n cá»§a m&igrave;nh.<br />\r\nKhi c&oacute; nhá»¯ng thay Ä‘á»•i th&ocirc;ng tin cá»§a báº¡n, vui l&ograve;ng cáº­p nháº­t láº¡i th&ocirc;ng tin trong t&agrave;i khoáº£n táº¡i BaoTam.vn. Trong trÆ°á»ng há»£p th&ocirc;ng tin do báº¡n cung cáº¥p kh&ocirc;ng Ä‘áº§y Ä‘á»§ hoáº·c sai dáº«n Ä‘áº¿n viá»‡c kh&ocirc;ng thá»ƒ giao h&agrave;ng cho báº¡n hoáº·c thu tiá»n cá»§a báº¡n, ch&uacute;ng t&ocirc;i c&oacute; quyá»n Ä‘&igrave;nh chá»‰ hoáº·c tá»« chá»‘i phá»¥c vá»¥, giao h&agrave;ng m&agrave; kh&ocirc;ng pháº£i chá»‹u báº¥t cá»© tr&aacute;ch nhiá»‡m n&agrave;o Ä‘á»‘i vá»›i báº¡n<br />\r\n<strong>Quyá»n lá»£i báº£o máº­t th&ocirc;ng tin cá»§a báº¡n</strong><br />\r\nKhi sá»­ dá»¥ng dá»‹ch vá»¥ táº¡i thuá»‘c dÆ°á»£c liá»‡u, báº¡n Ä‘Æ°á»£c Ä‘áº£m báº£o ráº±ng nhá»¯ng th&ocirc;ng tin cung cáº¥p cho ch&uacute;ng t&ocirc;i sáº½ chá»‰ Ä‘Æ°á»£c d&ugrave;ng Ä‘á»ƒ n&acirc;ng cao cháº¥t lÆ°á»£ng dá»‹ch vá»¥ d&agrave;nh cho kh&aacute;ch h&agrave;ng v&agrave; sáº½ kh&ocirc;ng Ä‘Æ°á»£c chuyá»ƒn giao cho b&ecirc;n thá»© ba n&agrave;o kh&aacute;c v&igrave; má»¥c Ä‘&iacute;ch thÆ°Æ¡ng máº¡i. Th&ocirc;ng tin cá»§a báº¡n táº¡i BaoTam.vn sáº½ Ä‘Æ°á»£c ch&uacute;ng t&ocirc;i báº£o máº­t.<br />\r\n<strong>Tr&aacute;ch nhiá»‡m cá»§a báº¡n</strong><br />\r\nBáº¡n Ä‘Æ°á»£c khuyáº¿n kh&iacute;ch Ä‘&oacute;ng g&oacute;p th&ocirc;ng tin v&agrave; &yacute; kiáº¿n Ä‘á»ƒ thuá»‘c dÆ°á»£c liá»‡u c&oacute; th&ecirc;m nhiá»u &yacute; tÆ°á»Ÿng hoáº·c n&acirc;ng cao cháº¥t lÆ°á»£ng dá»‹ch vá»¥. Tuy nhi&ecirc;n, báº¡n kh&ocirc;ng Ä‘Æ°á»£c ph&eacute;p Ä‘Äƒng táº£i tr&ecirc;n website BaoTam.vn nhá»¯ng th&ocirc;ng tin g&acirc;y áº£nh hÆ°á»Ÿng ti&ecirc;u cá»±c Ä‘áº¿n quyá»n lá»£i cá»§a ngÆ°á»i kh&aacute;c, c&aacute;c th&ocirc;ng tin sai sá»± tháº­t, c&oacute; t&iacute;nh xuy&ecirc;n táº¡c, tr&aacute;i thuáº§n phong má»¹ tá»¥c hoáº·c c&aacute;c nháº­n x&eacute;t c&oacute; t&iacute;nh ch&iacute;nh trá»‹, ká»³ thá»‹ t&ocirc;n gi&aacute;o, giá»›i t&iacute;nh, sáº¯c tá»™c&hellip;<br />\r\nBáº¡n tuyá»‡t Ä‘á»‘i kh&ocirc;ng Ä‘Æ°á»£c sá»­ dá»¥ng báº¥t ká»³ c&ocirc;ng cá»¥, phÆ°Æ¡ng ph&aacute;p n&agrave;o Ä‘á»ƒ can thiá»‡p, x&acirc;m nháº­p báº¥t há»£p ph&aacute;p v&agrave;o há»‡ thá»‘ng hay l&agrave;m thay Ä‘á»•i cáº¥u tr&uacute;c dá»¯ liá»‡u táº¡i website thuá»‘c dÆ°á»£c liá»‡u.&nbsp;<br />\r\nNáº¿u c&oacute; báº¥t ká»³ tháº¯c máº¯c n&agrave;o vá» Ä‘Æ¡n h&agrave;ng cá»§a m&igrave;nh, báº¡n vui l&ograve;ng pháº£n há»“i cho thuá»‘c dÆ°á»£c liá»‡u Ä‘á»ƒ Ä‘Æ°á»£c há»— trá»£ ngay. &nbsp;<br />\r\n<br />\r\nNgo&agrave;i ra, ch&uacute;ng t&ocirc;i kh&ocirc;ng cho ph&eacute;p c&aacute;c tá»• chá»©c, c&aacute; nh&acirc;n kh&aacute;c quáº£ng b&aacute; sáº£n pháº©m táº¡i website thuá»‘c dÆ°á»£c liá»‡u hoáº·c sá»­ dá»¥ng c&aacute;c th&ocirc;ng tin tr&ecirc;n website thuá»‘c dÆ°á»£c liá»‡u m&agrave; chÆ°a c&oacute; sá»± Ä‘á»“ng &yacute; báº±ng vÄƒn báº£n tá»« ch&uacute;ng t&ocirc;i. C&aacute;c thá»a thuáº­n v&agrave; quy Ä‘á»‹nh trong má»¥c Äiá»u khoáº£n sá»­ dá»¥ng c&oacute; thá»ƒ thay Ä‘á»•i v&agrave;o báº¥t cá»© l&uacute;c n&agrave;o v&agrave; c&oacute; hiá»‡u lá»±c ngay khi cáº­p nháº­t (trá»« khi c&oacute; quy Ä‘á»‹nh kh&aacute;c)', 1),
(4, 'Giá»›i thiá»‡u', 'Th&ocirc;ng tin Ä‘ang Ä‘Æ°á»£c cáº­p nháº­t....', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manus`
--

DROP TABLE IF EXISTS `manus`;
CREATE TABLE IF NOT EXISTS `manus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nhà xản suất' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `manus`
--

INSERT INTO `manus` (`id`, `ten`, `gioithieu`, `trangthai`) VALUES
(1, 'Ltd Farmaprim - MOLDOVA', 'Ltd Farmaprim - MOLDOVA', 1),
(2, 'Viva Pharmaceutical Inc - CA NA DA', 'Viva Pharmaceutical Inc - CA NA DA', 1),
(3, 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 1),
(4, 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 1),
(5, 'CÃ´ng ty Cá»• pháº§n sáº£n xuáº¥t vÃ  ThÆ°Æ¡ng máº¡i Há»“ng BÃ ng - VIá»†T NAM', 'CÃ´ng ty Cá»• pháº§n sáº£n xuáº¥t vÃ  ThÆ°Æ¡ng máº¡i Há»“ng BÃ ng - VIá»†T NAM', 1),
(6, 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 'CÃ´ng ty TNHH tÆ° váº¥n y dÆ°á»£c quá»‘c táº¿ (IMC) - VIá»†T NAM', 1),
(7, 'Cell Biotech Co., Ltd - HÃ€N QUá»C', 'Cell Biotech Co., Ltd - HÃ€N QUá»C', 1),
(8, 'CÃ´ng ty cá»• pháº§n DÆ°á»£c pháº©m HÃ  TÃ¢y - VIá»†T NAM', 'CÃ´ng ty cá»• pháº§n DÆ°á»£c pháº©m HÃ  TÃ¢y - VIá»†T NAM', 1),
(9, 'CÃ´ng ty cá»• pháº§n Pymepharco - VIá»†T NAM', 'CÃ´ng ty cá»• pháº§n Pymepharco - VIá»†T NAM', 1),
(10, 'Allergan Pharm (Ireland)., Ltd - AI LEN', 'Allergan Pharm (Ireland)., Ltd - AI LEN', 1),
(11, 'CÃ´ng ty cá»• pháº§n DÆ°á»£c Háº­u Giang - VIá»†T NAM', 'CÃ´ng ty cá»• pháº§n DÆ°á»£c Háº­u Giang - VIá»†T NAM', 1),
(12, 'CÃ´ng ty cá»• pháº§n dÆ°á»£c pháº©m TW25 - VIá»†T NAM', 'CÃ´ng ty cá»• pháº§n dÆ°á»£c pháº©m TW25 - VIá»†T NAM', 1),
(13, 'CÃ´ng ty cá»• pháº§n xuáº¥t nháº­p kháº©u Y táº¿ Domesco - VIá»†T ', 'CÃ´ng ty cá»• pháº§n xuáº¥t nháº­p kháº©u Y táº¿ Domesco - VIá»†T ', 1),
(14, 'CÃ´ng ty cá»• pháº§n DÆ°á»£c DANAPHA - VIá»†T NAM', 'CÃ´ng ty cá»• pháº§n DÆ°á»£c DANAPHA - VIá»†T NAM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `infor` text COLLATE utf8_unicode_ci,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `ten`, `infor`, `email`, `trangthai`) VALUES
(1, 'user1', '202cb962ac59075b964b07152d234b70', 'User 1', 'User 1', 'user1@gmail.com', 1),
(2, 'user2', '202cb962ac59075b964b07152d234b70', 'User 2', 'User 2', 'user2@gmail.com', 1),
(3, 'toi_loi_acon', 'afa8fff7d213c2f4bc9baa3b68389c34', 'Tráº§n Ngá»c Tháº¯ng', 'dep trai :)', 'tranngocthang89@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate_clinics`
--

DROP TABLE IF EXISTS `rate_clinics`;
CREATE TABLE IF NOT EXISTS `rate_clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinics_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `mark` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rate_clinics`
--

INSERT INTO `rate_clinics` (`id`, `clinics_id`, `members_id`, `mark`) VALUES
(1, 9, 2, 5),
(2, 8, 2, 5),
(3, 4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rate_drugs`
--

DROP TABLE IF EXISTS `rate_drugs`;
CREATE TABLE IF NOT EXISTS `rate_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugs_id` int(11) NOT NULL,
  `members_id` int(11) DEFAULT '1',
  `mark` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `rate_drugs`
--

INSERT INTO `rate_drugs` (`id`, `drugs_id`, `members_id`, `mark`) VALUES
(1, 465, 2, 4),
(2, 470, 2, 5),
(3, 469, 2, 5),
(4, 467, 2, 4),
(5, 466, 2, 2),
(6, 468, 2, 4),
(7, 466, 1, 5),
(8, 469, 1, 4),
(9, 470, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rate_drugstores`
--

DROP TABLE IF EXISTS `rate_drugstores`;
CREATE TABLE IF NOT EXISTS `rate_drugstores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugstores_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `mark` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rate_drugstores`
--

INSERT INTO `rate_drugstores` (`id`, `drugstores_id`, `members_id`, `mark`) VALUES
(1, 59, 2, 5),
(2, 58, 2, 4),
(3, 55, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rate_equips`
--

DROP TABLE IF EXISTS `rate_equips`;
CREATE TABLE IF NOT EXISTS `rate_equips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equips_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `mark` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rate_equips`
--

INSERT INTO `rate_equips` (`id`, `equips_id`, `members_id`, `mark`) VALUES
(1, 9, 2, 4),
(2, 1, 2, 4),
(3, 9, 1, 5),
(4, 3, 1, 4),
(5, 4, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rate_hopitals`
--

DROP TABLE IF EXISTS `rate_hopitals`;
CREATE TABLE IF NOT EXISTS `rate_hopitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hopitals_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `mark` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rate_hopitals`
--

INSERT INTO `rate_hopitals` (`id`, `hopitals_id`, `members_id`, `mark`) VALUES
(1, 14, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='loại thuốc' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `ten`, `mota`, `trangthai`) VALUES
(1, 'Giáº£m Ä‘au', 'Giáº£m Ä‘au', 1),
(2, 'Thuá»‘c tim máº¡ch', 'Thuá»‘c tim máº¡ch', 1),
(3, 'Thuá»‘c gÃ¢y tÃª, mÃª', 'Thuá»‘c gÃ¢y tÃª, mÃª', 1),
(7, 'HÆ°á»›ng tÃ¢m tháº§n', 'HÆ°á»›ng tÃ¢m tháº§n', 1),
(8, 'Chá»‘ng nhiá»…m khuáº©n, KS trÃ¹ng', 'Chá»‘ng nhiá»…m khuáº©n, KS trÃ¹ng', 1),
(9, 'Äiá»u trá»‹ Ä‘au ná»­a Ä‘áº§u', 'Äiá»u trá»‹ Ä‘au ná»­a Ä‘áº§u', 1),
(10, 'Thuá»‘c chá»‘ng ung thÆ°...', 'Thuá»‘c chá»‘ng ung thÆ°...', 1),
(11, 'Giáº£m Ä‘au, háº¡ sá»‘t, chá»‘ng viÃªm', 'Giáº£m Ä‘au, háº¡ sá»‘t, chá»‘ng viÃªm', 1),
(12, 'Thuá»‘c chá»‘ng dá»‹ á»©ng...', 'Thuá»‘c chá»‘ng dá»‹ á»©ng...', 1),
(13, 'Thuá»‘c cáº¥p cá»©u & giáº£i Ä‘á»™c', 'Thuá»‘c cáº¥p cá»©u & giáº£i Ä‘á»™c', 1),
(14, 'Há»— trá»£ ÄT Ä‘Æ°á»ng tiáº¿t niá»‡u', 'Há»— trá»£ ÄT Ä‘Æ°á»ng tiáº¿t niá»‡u', 1),
(15, 'Thuá»‘c chá»‘ng Parkinson', 'Thuá»‘c chá»‘ng Parkinson', 1),
(16, 'TÃ¡c dá»¥ng Ä‘á»‘i vá»›i mÃ¡u', 'TÃ¡c dá»¥ng Ä‘á»‘i vá»›i mÃ¡u', 1),
(17, 'MÃ¡u, Dung dá»‹ch cao phÃ¢n tá»­', 'MÃ¡u, Dung dá»‹ch cao phÃ¢n tá»­', 1),
(18, 'Thuá»‘c tim máº¡ch', 'Thuá»‘c tim máº¡ch', 1),
(19, 'Äiá»u trá»‹ bá»‡nh da liá»…u', 'Äiá»u trá»‹ bá»‡nh da liá»…u', 1),
(20, 'DÃ¹ng cháº©n Ä‘oÃ¡n', 'DÃ¹ng cháº©n Ä‘oÃ¡n', 1),
(21, 'Thuá»‘c sÃ¡t khuáº©n', 'Thuá»‘c sÃ¡t khuáº©n', 1),
(22, 'Thuá»‘c lá»£i tiá»ƒu', 'Thuá»‘c lá»£i tiá»ƒu', 1),
(23, 'Thuá»‘c Ä‘Æ°á»ng tiÃªu hÃ³a', 'Thuá»‘c Ä‘Æ°á»ng tiÃªu hÃ³a', 1),
(24, 'Hocmon, Ná»™i tiáº¿t tá»‘', 'Hocmon, Ná»™i tiáº¿t tá»‘', 1),
(25, 'Huyáº¿t thanh & Globulin miá»…n dá»‹ch', 'Huyáº¿t thanh & Globulin miá»…n dá»‹ch', 1),
(26, 'GiÃ£n cÆ¡ vÃ  tÄƒng trÆ°Æ¡ng lá»±c cÆ¡', 'GiÃ£n cÆ¡ vÃ  tÄƒng trÆ°Æ¡ng lá»±c cÆ¡', 1),
(27, 'Thuá»‘c máº¯t, tai mÅ©i há»ng', 'Thuá»‘c máº¯t, tai mÅ©i há»ng', 1),
(28, 'Thuá»‘c cÃ³ tÃ¡c dá»¥ng thÃºc Ä‘áº»...', 'Thuá»‘c cÃ³ tÃ¡c dá»¥ng thÃºc Ä‘áº»...', 1),
(29, 'DD tháº©m phÃ¢n phÃºc máº¡c', 'DD tháº©m phÃ¢n phÃºc máº¡c', 1),
(30, 'Thuá»‘c TD trÃªn Ä‘Æ°á»ng hÃ´ háº¥p', 'Thuá»‘c TD trÃªn Ä‘Æ°á»ng hÃ´ háº¥p', 1),
(31, 'DD Ä‘iá»u chá»‰nh nÆ°á»›c Ä‘iá»‡n giáº£i...', 'DD Ä‘iá»u chá»‰nh nÆ°á»›c Ä‘iá»‡n giáº£i...', 1),
(32, 'KhoÃ¡ng cháº¥t vÃ  Vitamin', 'KhoÃ¡ng cháº¥t vÃ  Vitamin', 1),
(33, 'Thuá»‘c cÃ³ nguá»“n gá»‘c Tháº£o dÆ°á»£c...', 'Thuá»‘c cÃ³ nguá»“n gá»‘c Tháº£o dÆ°á»£c...', 1),
(34, 'Thá»±c pháº©m chá»©c nÄƒng', 'Thá»±c pháº©m chá»©c nÄƒng', 1),
(35, 'Dáº§u xoa, cao xoa', 'Dáº§u xoa, cao xoa', 1),
(36, 'Thuá»‘c phá»¥ khoa', 'Thuá»‘c phá»¥ khoa', 1),
(37, 'Thuá»‘c khÃ¡c', 'Thuá»‘c khÃ¡c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ten`, `username`, `password`, `email`, `trangthai`) VALUES
(1, 'Tráº§n Ngá»c', 'toi_loi_acon', 'afa8fff7d213c2f4bc9baa3b68389c34', 'tranngocthang89@gmail.com', 1),
(2, 'Tran Ngoc', 'tranngoc8x', 'afa8fff7d213c2f4bc9baa3b68389c34', 'tranngocthang89@gmail.com', 1),
(3, 'Ngá»c Tháº¯ng', 'tranngocthang89', 'afa8fff7d213c2f4bc9baa3b68389c34', 'tranngocthang89@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ykien_clinics`
--

DROP TABLE IF EXISTS `ykien_clinics`;
CREATE TABLE IF NOT EXISTS `ykien_clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinics_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_clinic_childs`
--

DROP TABLE IF EXISTS `ykien_clinic_childs`;
CREATE TABLE IF NOT EXISTS `ykien_clinic_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ykien_clinics_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_drugs`
--

DROP TABLE IF EXISTS `ykien_drugs`;
CREATE TABLE IF NOT EXISTS `ykien_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugs_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ykien_drugs`
--

INSERT INTO `ykien_drugs` (`id`, `drugs_id`, `members_id`, `content`, `ngayviet`) VALUES
(3, 470, 2, 'Cháº¥t lÆ°á»£ng sáº£n pháº©m tá»‘t', '2013-10-09 12:44:21'),
(6, 470, 2, 'QuÃ¡ hay', '2013-10-13 20:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `ykien_drugstores`
--

DROP TABLE IF EXISTS `ykien_drugstores`;
CREATE TABLE IF NOT EXISTS `ykien_drugstores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugstores_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ykien_drugstores`
--

INSERT INTO `ykien_drugstores` (`id`, `drugstores_id`, `members_id`, `content`, `ngayviet`) VALUES
(2, 58, 2, 'Hi hi', '2013-10-13 20:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `ykien_drugstore_childs`
--

DROP TABLE IF EXISTS `ykien_drugstore_childs`;
CREATE TABLE IF NOT EXISTS `ykien_drugstore_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ykien_drugstores_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_drug_childs`
--

DROP TABLE IF EXISTS `ykien_drug_childs`;
CREATE TABLE IF NOT EXISTS `ykien_drug_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ykien_drugs_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_equips`
--

DROP TABLE IF EXISTS `ykien_equips`;
CREATE TABLE IF NOT EXISTS `ykien_equips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equips_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_equip_childs`
--

DROP TABLE IF EXISTS `ykien_equip_childs`;
CREATE TABLE IF NOT EXISTS `ykien_equip_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ykien_equips_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_hopitals`
--

DROP TABLE IF EXISTS `ykien_hopitals`;
CREATE TABLE IF NOT EXISTS `ykien_hopitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hopitals_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ykien_hopital_childs`
--

DROP TABLE IF EXISTS `ykien_hopital_childs`;
CREATE TABLE IF NOT EXISTS `ykien_hopital_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ykien_hopitals_id` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ngayviet` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
