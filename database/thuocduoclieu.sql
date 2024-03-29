-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2013 at 11:38 AM
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
  `trangthai` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ten` (`ten`),
  FULLTEXT KEY `ten_2` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `ten`, `trangthai`) VALUES
(1, 'HÃ  Ná»™i', 1),
(2, 'Háº£i PhÃ²ng', 1),
(3, 'Ninh BÃ¬nh', 1);

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
  `map` varchar(255) CHARACTER SET cp1251 NOT NULL,
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
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ten_2` (`ten`),
  FULLTEXT KEY `ten` (`ten`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(1, 'Berberin â€“ BM', '1234', '5000', 'viÃªn nang cá»©ng - Há»™p 3 vá»‰ x 10 viÃªn.', 1, 'Berberin clorid&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.. 25mg<br />\r\nBa cháº½&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 100mg<br />\r\nMá»™c hÆ°Æ¡ng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 150mg<br />\r\nT&aacute; dÆ°á»£c vÄ‘&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1 vi&ecirc;n<br />\r\nT&aacute; dÆ°á»£c (tinh bá»™t sáº¯n 20mg, Calci carbonat 190mg, Magnesi stearat 4.0mg)', 'Berberin clorid&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.. 25mg<br />\r\nBa cháº½&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 100mg<br />\r\nMá»™c hÆ°Æ¡ng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 150mg<br />\r\nT&aacute; dÆ°á»£c vÄ‘&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1 vi&ecirc;n', 'Nhiá»…m khuáº©n Ä‘Æ°á»ng ruá»™t nhÆ°: ti&ecirc;u cháº£y, Ä‘au bá»¥ng, Ä‘áº§y bá»¥ng, vi&ecirc;m ruá»™t cáº¥p v&agrave; máº¡n t&iacute;nh, lá»µ trá»±c tr&ugrave;ng.', 'NgÆ°á»i lá»›n: 2 viÃªn/ láº§n x 3 láº§n/ ngÃ y.  Tráº» em: 1-2 viÃªn/ láº§n x 2 láº§n/ ngÃ y.', 'Äá»ƒ nÆ¡i tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh náº¯ng máº·t trá»i', 1, 1, 1, '1323483843.jpg'),
(2, 'Becberin', '1234', '5', '1610mg x 365 viÃªn/ lá»', 1, '<p>DÆ°á»£c t&aacute; vá»«a Ä‘á»§</p>\r\n', '<p>1 2 3 4mg/vi&ecirc;n</p>\r\n', '<p>Äi ngo&agrave;i</p>\r\n', '20v/láº§n', '<p>Tho&aacute;ng m&aacute;t</p>\r\n', 1, 1, 0, 'cf0a93c26b15fbc54d61d8b0c0e2de50_IMG_1938.jpg'),
(3, 'QPLUS SUPER', 'VN-9074-09', '135', 'ViÃªn nang má»m - Lá» 30 viÃªn', 2, 'Má»—i viÃªn nang má»m chá»©a 30mg Coenzyme Q10', 'Pháº§n thÃ´ng tin tham kháº£o â€“ DÃ¹ng thuá»‘c theo chá»‰ Ä‘á»‹nh cá»§a BÃ¡c sÄ©', 'DÃ¹ng Ä‘iá»u trá»‹ há»— trá»£ : bá»‡nh cÆ¡ tim, thiá»ƒu nÄƒng tuáº§n hoÃ n, bá»‡nh thiáº¿u mÃ¡u á»Ÿ tim, tÄƒng huyáº¿t Ã¡p Ä‘á»™ng máº¡ch, chá»©ng loáº¡n nhá»‹p Ä‘i kÃ¨m thiá»ƒu nÄƒng tuáº§n hoÃ n, ngoÃ i ra thuá»‘c cÃ²n Ä‘Æ°á»£c dÃ¹ng Ä‘á»ƒ:\n- chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng miá»…n dá»‹ch\n- phÃ²ng vÃ  Ä‘iá»u trá»‹ xÆ¡ vá»¯a Ä‘á»™ng máº¡ch\n- Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t do thiáº¿u há»¥t coenzym Q10 Ä‘áº·c biá»‡t á»Ÿ ngÆ°á»i cao tuá»•i.\n\nTÃ¡c dá»¥ng phá»¥:\n\nThuá»‘c thÆ°á»ng Ä‘Æ°á»£c dung náº¡p tá»‘t. Hiáº¿m khi xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng cá»§a tÃ¡c dá»¥ng khÃ´ng mong muá»‘n (khoáº£ng 1,4%)nhÆ°: buá»“n nÃ´n, nÃ´n, tiÃªu cháº£y, máº¥t cáº£m giÃ¡c khi Äƒn, Ä‘á» da\nCáº£nh bÃ¡o Ä‘áº·c biá»‡t vÃ  tháº­n trá»ng Ä‘áº·c biá»‡t khi sá»­ dá»¥ng: Trong quÃ¡ trÃ¬nh Ä‘iá»u trá»‹ cÃ³ thá»ƒ xuáº¥t hiá»‡n tÄƒng khÃ´ng Ä‘Ã¡ng ká»ƒ ná»“ng Ä‘á»™ dehydrogenase vÃ  tranaminase trong mÃ¡u.\n\nChÃº Ã½ Ä‘á» phÃ²ng:\n\nPhá»¥ ná»¯ cÃ³ thai vÃ  cho con bÃº: TrÃ¡nh dÃ¹ng cho phá»¥ ná»¯ cÃ³ thai hoáº·c Ä‘ang cho con bÃº vÃ¬ Ä‘á»™ an toÃ n chÆ°a xÃ¡c Ä‘á»‹nh.\náº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c: thuá»‘c khÃ´ng áº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c\ncoenzym Q10 cÃ³ thá»ƒ lÃ m tÄƒng tÃ¡c dá»¥ng cá»§a thuá»‘c lá»£i tiá»ƒu, cÃ¡c thuá»‘c glycosid trá»£ tim vÃ  nitrat.\nThuá»‘c lÃ m tÄƒng tÃ¡c dá»¥ng chá»‘ng oxy hÃ³a cá»§a vitamin E, thuá»‘c cÃ³ thá»ƒ lÃ m kÃ©o dÃ i thá»i gian tÃ¡c dá»¥ng giáº£m huyáº¿t Ã¡p cá»§a enalapril vÃ  nitrendipin. coenzym Q10 cÃ³ tÃ¡c dá»¥ng Ä‘á»“ng váº­n vá»›i L-canrnitin trong quÃ¡ trÃ¬nh chuyá»ƒn hÃ³a vÃ  tuáº§n hoÃ n. Thuá»‘c cÃ³ thá»ƒ lÃ m giáº£m nguy cÆ¡ xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng áº£nh hÆ°á»Ÿng suy giáº£m lÃªn cÆ¡ tim cá»§a cÃ¡c thuá»‘c nhÃ³m giáº£i phÃ³ng adrenolytic bÃªta, kÃ¬m hÃ£m tÃ¡c dá»¥ng chá»‘ng Ä‘Ã´ng cá»§a warpharin. coenzym Q10 cÃ²n lÃ m giáº£m Ä‘á»™c tÃ­nh cá»§a cÃ¡c khÃ¡ng sinh chá»‘ng ung thÆ° thuá»™c nhÃ³n antracyclin.\nSá»­ dá»¥ng quÃ¡ liá»u: chÆ°a cÃ³ dá»¯ liá»‡u vá» viá»‡c Sá»­ dá»¥ng quÃ¡ liá»u coenzym Q10', 'Thuá»‘c cáº§n Ä‘Æ°á»£c uá»‘ng sau khi Äƒn Liá»u dÃ¹ng cho ngÆ°á»i lá»›n vÃ  tráº» em trÃªn 15 tuá»•i: - Ä‘iá»u trá»‹ há»— trá»£ trong bá»‡nh thuá»™c há»‡ tuáº§n hÃ²a: 60-80mg (2-6 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng kháº£ nÄƒng miá»…n dá»‹ch: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Vá»¯a xÆ¡ Ä‘á»™ng máº¡ch: 30-300mg (1-10 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n. Hoáº·c theo chá»‰ Ä‘á»‹nh cá»§a bÃ¡c sÄ©. Coenzym Q10 cÃ³ thá»ƒ dÃ¹ng lÃ¢u dÃ i, hiá»‡u quáº£ lÃ¢m sÃ n thÆ°á»ng Ä‘Æ°á»£c tháº¥y sau chu ká»³ Ä‘iá»u trá»‹ dÃ i ngÃ y. Sau chu ká»³ dÃ¹ng dÃ i ngÃ y, khÃ´ng nÃªn dá»«ng Ä‘á»™t ngá»™t, náº¿u khÃ´ng há»i Ã½ kiáº¿n bÃ¡c sÄ©.', 'Äá»ƒ nÆ¡i khÃ´ thoÃ¡ng, trÃ¡nh Ã¡nh sÃ¡ng', 1, 2, 1, 'qplussupper.jpg'),
(4, 'SlimFit USA', 'xxx', '1', 'Lá» 30 ViÃªn', 1, 'Nutratherm Thermogenic Complex: Micronized Green Tea Leaf extract, Cactus extract, Clary Sage extract\r\nCortfem: Beta-sisosterol, Phophatidylserine, Theanine\r\nAquaplex Water Removal Complex: Dandelion leaf and root, Uva Ursi extract, French maritime pine extract\r\nXtend Absorption Complex: Cellulose ethers\r\nVitamin D (as Cholcalciferol)\r\nVitamin B-6 (as Pyridonxine Hydrochloride) Folic Acid\r\nVitamin B-12 (as Cyanocobalamin)\r\nCalcium (as Calcium Hydroxide/Carbonate)\r\nGelatin, magiÃª stearate.', 'xxx', '- Tan má»¡ tá»« bÃªn trong nhanh chÃ³ng.\r\n- TÄƒng cÆ°á»ng nÄƒng lÆ°á»£ng cÆ¡ thá»ƒ.\r\n- NgÄƒn cháº·n chuyá»ƒn hoÃ¡ cháº¥t thá»«a thÃ nh má»¡ tÃ­ch tá»¥.\r\n- Loáº¡i tháº£i Ä‘á»™c tá»‘ trong cÆ¡ thá»ƒ\r\n- Chá»‘ng lÃ£o hoÃ¡ giÃºp da tÆ°Æ¡i tráº».', '- Uá»‘ng 1 viÃªn/ngÃ y trÆ°á»›c khi Äƒn sÃ¡ng vá»›i nÆ°á»›c lá»c. - Xin Äƒn uá»‘ng Ä‘Ãºng bá»¯a, Ä‘á»«ng bá» bá»¯a Äƒn nÃ o. - Sau khi Ä‘Ã£ Ä‘Æ°á»£c sá»‘ cÃ¢n náº·ng nhÆ° mÃ¬nh mong muá»‘n, nÃªn uá»‘ng 1 tuáº§n 3 viÃªn Ä‘á»ƒ giá»¯ nguyÃªn sá»‘ cÃ¢n.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'slim-fit-2.jpg'),
(5, 'Sá»¯a Ong ChÃºa Royal Jelly Costar ', 'xxx', '1', '1610mg x 365 viÃªn/ lá»', 1, 'Sá»¯a Ong ChÃºa Ãšc Vitamin nhÃ³m A, B, C, D vÃ  E; gá»“m 18 amino acids, Protein vÃ  acid bÃ©o vÃ o 10-HDA giÃºp tÃ¡i táº¡o lÃ n da mang Ä‘áº¿n cho báº¡n 1 lÃ n da má»‹n mÃ ng vÃ  khoáº» máº¡nh.\r\n', 'xxx', 'GiÃºp da chá»‘ng lÃ£o hÃ³a, nÃ¡m, sáº¡m do tÃ¡c Ä‘á»™ng cá»§a mÃ´i trÆ°á»ng vÃ  nháº¥t lÃ  do thay Ä‘á»•i ná»™i tiáº¿t tá»‘ á»Ÿ phá»¥ ná»¯ (trong thá»i ká»³ mÃ£n kinh), vÃ¬ Sá»¯a Ong ChÃºa lÃ m thay Ä‘á»•i táº­n gá»‘c cá»§a nguyÃªn nhÃ¢n gÃ¢y nÃ¡m da, sáº¡m da, giÃºp da dáº§n dáº§n trá»Ÿ nÃªn tráº¯ng há»“ng, cÄƒng má»‹n.\r\n- GiÃºp an tháº§n, ngá»§ ngon, ngá»§ yÃªn giáº¥c, phÃ²ng chá»‘ng máº¥t ngá»§.\r\n- GiÃºp trá»‹ bá»‡nh cao mÃ¡u, cao huyáº¿t Ã¡p, má»¡ trong mÃ¡u, tiá»ƒu Ä‘Æ°á»ng, viÃªm gan A,B,C,D vÃ  cÃ¡c bá»‡nh vá» gan.', '- Uá»‘ng 1 viÃªn 1 ngÃ y vÃ o buá»•i sÃ¡ng. - KhÃ´ng dÃ¹ng cho tráº» em tá»« 8 Ä‘áº¿n 12 tuá»•i, nhá»¯ng ngÆ°á»i bá»‹ hen suyá»…n vÃ  bá»‹ dá»‹ á»©ng vá»›i pháº¥n hoa.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(6, 'QPLUS SUPER 1', '1234', '1', '1610mg x 365 viÃªn/ lá»', 1, '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(8, 'Safaria', 'VN-16636-13', '0', 'ViÃªn Ä‘áº·t Ã¢m Ä‘áº¡o', 1, 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', '`- SAFARIA chá»‰ Ä‘á»‹nh Ä‘iá»u trá»‹ nhiá»…m khuáº©n há»—n há»£p táº¡i Ã¢m Ä‘áº¡o, ViÃªm Ã¢m Ä‘áº¡o kÃ¨m theo huyáº¿t tráº¯ng, ngá»©a do nhiá»…m khuáº©n vÃ  náº¥m, ViÃªm Ã¢m Ä‘áº¡o do Trichomonas.\n- SAFARIA Ä‘Æ°á»£c chá»‰ Ä‘á»‹nh Ä‘á»ƒ Ä‘iá»u trá»‹ cÃ¡c bá»‡nh náº¥m á»Ÿ Ã¢m há»™, Ã¢m Ä‘áº¡o, cÅ©ng nhÆ° bá»‡nh náº¥m Candida.', 'NgÆ°á»i lá»›n: \n- Vá»›i viÃªm Ã¢m Ä‘áº¡o cáº¥p tÃ­nh: má»—i láº§n 1 viÃªn, ngÃ y 1-2 láº§n (sÃ¡ng vÃ  tá»‘i). Sau Ä‘Ã³ duy trÃ¬ 1 viÃªn vÃ o buá»•i tá»‘i trong vÃ²ng 6-8 ngÃ y. \n- ViÃªm Ã¢m Ä‘áº¡o máº¡n tÃ­nh: 1 viÃªn vÃ o buá»•i tá»‘i trong 14 ngÃ y. \n- PhÃ²ng nhiá»…m náº¥m Ã¢m Ä‘áº¡o: 1 viÃªn vÃ o buá»•i tá»‘i trong 7-10 ngÃ y. \nLÆ°u Ã½ khi sá»­ dá»¥ng: \n-TrÆ°á»›c khi Ä‘áº·t, Ä‘á»ƒ viÃªn thuá»‘c vÃ o ngÄƒn Ä‘Ã¡ tá»§ láº¡nh khoáº£ng 5-10 phÃºt, rá»­a sáº¡ch Ã¢m Ä‘áº¡o, Ä‘áº·t sÃ¢u vÃ o Ã¢m Ä‘áº¡o má»—i tá»‘i trÆ°á»›c khi Ä‘i ngá»§. \n-Äá»ƒ cÃ³ Ä‘Æ°á»£c káº¿t quáº£ Ä‘iá»u trá»‹ tá»‘t nháº¥t, dÃ¹ng ngÃ³n tay Ä‘áº©y viÃªn thuá»‘c vÃ o cÃ ng sÃ¢u trong Ã¢m Ä‘áº¡o cÃ ng tá»‘t. ', 'Báº£o quáº£n nÆ¡i khÃ´ mÃ¡t, trÃ¡nh Ã¡nh sÃ¡ng, nhiá»‡t Ä‘á»™ báº£o quáº£n tá»« 15-25oC. \nGiá»¯ thuá»‘c xa táº§m vá»›i tráº» em. ', 1, 1, 1, 'ss');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `drugstores`
--

INSERT INTO `drugstores` (`id`, `ten`, `daidien`, `giayphep`, `ngaycap`, `dienthoai`, `diachi`, `cities_id`, `map`, `gioithieu`, `trangthai`) VALUES
(1, 'ANH THÆ¯', 'Trá»‹nh Má»¹ VÃ¢n', '2376', '2000-12-01', NULL, '7A,Â Nguyá»…n VÄƒn LÆ°á»£ng,Â PhÆ°á»ng 10', 1, '21.033332,105.849999', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(2, 'ANH TUáº¤N', 'Äáº·ng Há»“ng LÃ¢m', '257', '2000-11-01', NULL, '197Â chá»£ Cao Äáº¡t,Â PhÆ°á»ng 1', 1, '21.033332,105.850000', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(3, 'ÃNH TUYáº¾T', 'Äang cáº­p nháº­t', 'Äang cáº­p nháº­t', '2000-12-01', NULL, '52 Kim Long, Nguyên Hoàng', 1, '21.033332,105.850001', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(4, 'Ã‚u ChÃ¢u', 'VÃµ VÄƒn Triá»‡u', 'Äang cáº­p nháº­t', '2002-02-03', NULL, '240/2Â CÃ´ Giang,Â PhÆ°á»ng 2Â ', 2, '21.033332,105.850002', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(5, 'NHÃ€ THUá»C NHáº¬T ANH', 'LÆ°Æ¡ng Trá»ng HoÃ n', '19/05', '2005-01-11', NULL, 'Sá»‘ 5 ngÃµ 575 Kim MÃ£', 1, '21.033332,105.850003', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\r\n', 1),
(6, 'NHÃ€ THUá»C PHÃšC NHÃ‚N ÃÆ¯á»œNG', 'LÃª Thá»‹ Kim Ngá»c', '06/06', '2013-01-01', 'ererrewewr', '266 Nguyá»…n VÄƒn Cá»«', 1, '21.033332,105.850004', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(7, 'NHÃ€ THUá»C PHÆ¯Æ NG LÃŠ', 'Nguyá»…n Thá»‹ Sinh', '254/06', '2013-01-01', NULL, '8 Äinh Liá»‡t', 1, '21.033332,105.850005', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(8, 'NHÃ€ THUá»C PHÆ¯Æ NG LINH', 'Nguyá»…n Duy Khang', '36/04', '2000-01-01', NULL, '174 TÃ¢y SÆ¡n', 1, '21.033332,105.850006', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\n\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\n', 1),
(9, 'NHÃ€ THUá»C QUá»C TUáº¤N', 'Nguyá»…n QuÃ´c Tuáº¥n', '109/04', '2013-01-01', '000000', '1E2 PhÆ°Æ¡ng Mai', 1, '21.033332,105.850007', '<p>Nh&agrave; thuá»‘c cung cáº¥p táº¥t cáº£ c&aacute;c thuá»‘c,&nbsp;Ä‘áº·c biá»‡t l&agrave; thuá»‘c v&agrave; c&aacute;c biá»‡t dÆ°á»£c ti&ecirc;n tiáº¿n, hiá»‡n&nbsp;Ä‘áº¡i d&ugrave;ng Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch vá»›i cháº¥t lÆ°á»£ng tá»‘t nháº¥t v&agrave; Ä‘&uacute;ng gi&aacute; quy Ä‘á»‹nh. NgÆ°á»i bá»‡nh mua thuá»‘c Ä‘Æ°á»£c c&aacute;c b&aacute;c sÄ©, dÆ°á»£c sÄ© tÆ° váº¥n&nbsp;táº­n t&igrave;nh, chu Ä‘&aacute;o v&agrave; dá»… hiá»ƒu. Táº¡i Nh&agrave; thuá»‘c, ngÆ°á»i bá»‡nh c&oacute; thá»ƒ t&igrave;m Ä‘Æ°á»£c nhá»¯ng loáº¡i thuá»‘c qu&yacute; hiáº¿m nháº¥t Ä‘á»ƒ Ä‘iá»u trá»‹ bá»‡nh tim máº¡ch m&agrave; c&oacute; thá»ƒ c&aacute;c Nh&agrave; thuá»‘c kh&aacute;c kh&ocirc;ng c&oacute;.</p>\r\n\r\n<p>Náº¿u kh&ocirc;ng dung náº¡p thuá»‘c, ngÆ°á»i bá»‡nh sáº½ Ä‘Æ°á»£c xem x&eacute;t nhá»¯ng loáº¡i thuá»‘c m&igrave;nh Ä‘ang sá»­ dá»¥ng v&agrave; náº¿u thuá»‘c Ä‘&oacute; kh&ocirc;ng há»£p vá»›i ngÆ°á»i bá»‡nh, Nh&agrave; thuá»‘c sáº½ nháº­p láº¡i nhá»¯ng m&agrave; thuá»‘c ngÆ°á»i bá»‡nh Ä‘&atilde; mua táº¡i Nh&agrave; thuá»‘c, tr&aacute;nh l&atilde;ng ph&iacute; cho ngÆ°á»i bá»‡nh.</p>\r\n', 1);

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
(2, 'ThÃ´ng tin liÃªn há»‡', 'ThÃ´ng tin Ä‘ang cáº­p nháº­t...', 1),
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
(1, 6, 2, 4),
(2, 8, 2, 5),
(3, 1, 2, 5),
(4, 5, 2, 4),
(5, 4, 2, 2),
(6, 3, 2, 4),
(7, 6, 1, 5),
(8, 1, 1, 4),
(9, 8, 1, 3);

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
(1, 9, 2, 5),
(2, 8, 2, 4),
(3, 5, 2, 4);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rate_equips`
--

INSERT INTO `rate_equips` (`id`, `equips_id`, `members_id`, `mark`) VALUES
(1, 9, 2, 4),
(2, 1, 2, 4),
(3, 9, 1, 5),
(4, 3, 1, 4);

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
(3, 6, 2, 'Cháº¥t lÆ°á»£ng sáº£n pháº©m tá»‘t', '2013-10-09 12:44:21'),
(6, 6, 2, 'QuÃ¡ hay', '2013-10-13 20:54:58');

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
(2, 8, 2, 'Hi hi', '2013-10-13 20:58:12');

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
