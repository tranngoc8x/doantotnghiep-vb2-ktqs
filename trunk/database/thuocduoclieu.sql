-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2013 at 11:52 AM
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

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
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `map` varchar(255) CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='phòng khám' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `ten`, `daidien`, `departments_id`, `diachi`, `cities_id`, `dienthoai`, `gioithieu`, `trangthai`, `map`) VALUES
(1, 'PhÃ²ng khÃ¡m Äa khoa', 'Pháº¡m VÄƒn ÄÃ i', 1, 'sá»‘ 41 Nguyá»…n ThÆ°á»£ng Hiá»n ,Hai BÃ  TrÆ°ng', 1, 'Hai BÃ  TrÆ°ng', '<p>Äang cáº­p nháº­t</p>\r\n', 1, '0,0'),
(2, 'PhÃ²ng KhÃ¡m TÆ° nhÃ¢n', 'BÃ¹i Tá»‘ Nga', 1, '138', 1, '(04).9433473', 'Äang cáº­p nháº­t', 1, '0,0'),
(3, 'Nha Khoa Chiáº¿n Tháº¯ng', 'Nguyá»…n Tuáº¥n Anh', 1, '39 ÄÆ°á»ng Chiáº¿n Tháº¯ng', 1, '0985545409', 'Äang cáº­p nháº­t', 1, '0,0'),
(4, 'Nha Khoa Minh Anh', 'Phan Thá»‹ Thu Háº£i', 1, '60 HoÃ ng Diá»‡u', 1, '(04).7345595', 'Äang cáº­p nháº­t...', 1, '0,0'),
(5, 'PhÃ²ng Chuáº©n trá»‹ Y há»c Cá»• truyá»n KhÆ°Æ¡ng SÆ¡n', 'Pháº¡m ÄÃ¬nh Vinh', 15, 'P15 - A11 Táº­p thá»ƒ Thanh XuÃ¢n Báº¯c', 1, '(04).5536308', 'Äang cáº­p nháº­t...', 1, '0,0'),
(6, 'PhÃ²ng KhÃ¡m Äa Khoa Äá»©c Minh', 'LÃª Äá»©c PhÃºc', 3, '32 PhÃ¹ng HÆ°ng', 1, '(04).9289836', 'Äang cáº­p nháº­t...', 1, '0,0');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `members_id` int(11) NOT NULL,
  `drugs_id` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `thoigian` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

DROP TABLE IF EXISTS `commons`;
CREATE TABLE IF NOT EXISTS `commons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chuyên khoa ' AUTO_INCREMENT=20 ;

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
(14, 'Lao', 1),
(15, 'XÃ©t nghiá»‡m', 1),
(16, 'Ung bÆ°á»›u', 1),
(17, 'Niá»‡u', 1),
(18, 'CÆ¡ sá»Ÿ dá»‹ch vá»¥ Y Táº¿', 1),
(19, 'ChuyÃªn khoa há»‡ ná»™i khÃ¡c', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nhà phân phối' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `distributes`
--

INSERT INTO `distributes` (`id`, `ten`, `gioithieu`, `trangthai`) VALUES
(1, 'CT cáº¥p1', '<p>CT cáº¥p1+</p>\r\n', 1),
(2, 'CT cáº¥p2', 'CT cáº¥p2', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(1, 'Berberin â€“ BM', '1234', '4000', 'viÃªn nang cá»©ng - Há»™p 3 vá»‰ x 10 viÃªn.', 1, 'Berberin clorid&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.. 25mg<br />\r\nBa cháº½&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 100mg<br />\r\nMá»™c hÆ°Æ¡ng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 150mg<br />\r\nT&aacute; dÆ°á»£c vÄ‘&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1 vi&ecirc;n<br />\r\nT&aacute; dÆ°á»£c (tinh bá»™t sáº¯n 20mg, Calci carbonat 190mg, Magnesi stearat 4.0mg)', 'Berberin clorid&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.. 25mg<br />\nBa cháº½&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 100mg<br />\nMá»™c hÆ°Æ¡ng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 150mg<br />\nT&aacute; dÆ°á»£c vÄ‘&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 1 vi&ecirc;n', 'Nhiá»…m khuáº©n Ä‘Æ°á»ng ruá»™t nhÆ°: ti&ecirc;u cháº£y, Ä‘au bá»¥ng, Ä‘áº§y bá»¥ng, vi&ecirc;m ruá»™t cáº¥p v&agrave; máº¡n t&iacute;nh, lá»µ trá»±c tr&ugrave;ng.', 'NgÆ°á»i lá»›n: 2 viÃªn/ láº§n x 3 láº§n/ ngÃ y.  Tráº» em: 1-2 viÃªn/ láº§n x 2 láº§n/ ngÃ y.', 'Äá»ƒ nÆ¡i tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh náº¯ng máº·t trá»i', 1, 1, 1, 'becberin.jpg'),
(2, 'Becberin', '1234', '5', '1610mg x 365 viÃªn/ lá»', 1, '<p>DÆ°á»£c t&aacute; vá»«a Ä‘á»§</p>\r\n', '<p>1 2 3 4mg/vi&ecirc;n</p>\r\n', '<p>Äi ngo&agrave;i</p>\r\n', '20v/láº§n', '<p>Tho&aacute;ng m&aacute;t</p>\r\n', 1, 1, 1, 'becberin.jpg'),
(3, 'QPLUS SUPER', 'VN-9074-09', '135', 'ViÃªn nang má»m - Lá» 30 viÃªn', 2, 'Má»—i viÃªn nang má»m chá»©a 30mg Coenzyme Q10', 'Pháº§n thÃ´ng tin tham kháº£o â€“ DÃ¹ng thuá»‘c theo chá»‰ Ä‘á»‹nh cá»§a BÃ¡c sÄ©', 'DÃ¹ng Ä‘iá»u trá»‹ há»— trá»£ : bá»‡nh cÆ¡ tim, thiá»ƒu nÄƒng tuáº§n hoÃ n, bá»‡nh thiáº¿u mÃ¡u á»Ÿ tim, tÄƒng huyáº¿t Ã¡p Ä‘á»™ng máº¡ch, chá»©ng loáº¡n nhá»‹p Ä‘i kÃ¨m thiá»ƒu nÄƒng tuáº§n hoÃ n, ngoÃ i ra thuá»‘c cÃ²n Ä‘Æ°á»£c dÃ¹ng Ä‘á»ƒ:\r\n- chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng miá»…n dá»‹ch\r\n- phÃ²ng vÃ  Ä‘iá»u trá»‹ xÆ¡ vá»¯a Ä‘á»™ng máº¡ch\r\n- Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t do thiáº¿u há»¥t coenzym Q10 Ä‘áº·c biá»‡t á»Ÿ ngÆ°á»i cao tuá»•i.\r\n\r\nTÃ¡c dá»¥ng phá»¥:\r\n\r\nThuá»‘c thÆ°á»ng Ä‘Æ°á»£c dung náº¡p tá»‘t. Hiáº¿m khi xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng cá»§a tÃ¡c dá»¥ng khÃ´ng mong muá»‘n (khoáº£ng 1,4%)nhÆ°: buá»“n nÃ´n, nÃ´n, tiÃªu cháº£y, máº¥t cáº£m giÃ¡c khi Äƒn, Ä‘á» da\r\nCáº£nh bÃ¡o Ä‘áº·c biá»‡t vÃ  tháº­n trá»ng Ä‘áº·c biá»‡t khi sá»­ dá»¥ng: Trong quÃ¡ trÃ¬nh Ä‘iá»u trá»‹ cÃ³ thá»ƒ xuáº¥t hiá»‡n tÄƒng khÃ´ng Ä‘Ã¡ng ká»ƒ ná»“ng Ä‘á»™ dehydrogenase vÃ  tranaminase trong mÃ¡u.\r\n\r\nChÃº Ã½ Ä‘á» phÃ²ng:\r\n\r\nPhá»¥ ná»¯ cÃ³ thai vÃ  cho con bÃº: TrÃ¡nh dÃ¹ng cho phá»¥ ná»¯ cÃ³ thai hoáº·c Ä‘ang cho con bÃº vÃ¬ Ä‘á»™ an toÃ n chÆ°a xÃ¡c Ä‘á»‹nh.\r\náº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c: thuá»‘c khÃ´ng áº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c\r\ncoenzym Q10 cÃ³ thá»ƒ lÃ m tÄƒng tÃ¡c dá»¥ng cá»§a thuá»‘c lá»£i tiá»ƒu, cÃ¡c thuá»‘c glycosid trá»£ tim vÃ  nitrat.\r\nThuá»‘c lÃ m tÄƒng tÃ¡c dá»¥ng chá»‘ng oxy hÃ³a cá»§a vitamin E, thuá»‘c cÃ³ thá»ƒ lÃ m kÃ©o dÃ i thá»i gian tÃ¡c dá»¥ng giáº£m huyáº¿t Ã¡p cá»§a enalapril vÃ  nitrendipin. coenzym Q10 cÃ³ tÃ¡c dá»¥ng Ä‘á»“ng váº­n vá»›i L-canrnitin trong quÃ¡ trÃ¬nh chuyá»ƒn hÃ³a vÃ  tuáº§n hoÃ n. Thuá»‘c cÃ³ thá»ƒ lÃ m giáº£m nguy cÆ¡ xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng áº£nh hÆ°á»Ÿng suy giáº£m lÃªn cÆ¡ tim cá»§a cÃ¡c thuá»‘c nhÃ³m giáº£i phÃ³ng adrenolytic bÃªta, kÃ¬m hÃ£m tÃ¡c dá»¥ng chá»‘ng Ä‘Ã´ng cá»§a warpharin. coenzym Q10 cÃ²n lÃ m giáº£m Ä‘á»™c tÃ­nh cá»§a cÃ¡c khÃ¡ng sinh chá»‘ng ung thÆ° thuá»™c nhÃ³n antracyclin.\r\nSá»­ dá»¥ng quÃ¡ liá»u: chÆ°a cÃ³ dá»¯ liá»‡u vá» viá»‡c Sá»­ dá»¥ng quÃ¡ liá»u coenzym Q10', 'Thuá»‘c cáº§n Ä‘Æ°á»£c uá»‘ng sau khi Äƒn Liá»u dÃ¹ng cho ngÆ°á»i lá»›n vÃ  tráº» em trÃªn 15 tuá»•i: - Ä‘iá»u trá»‹ há»— trá»£ trong bá»‡nh thuá»™c há»‡ tuáº§n hÃ²a: 60-80mg (2-6 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng kháº£ nÄƒng miá»…n dá»‹ch: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Vá»¯a xÆ¡ Ä‘á»™ng máº¡ch: 30-300mg (1-10 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n. Hoáº·c theo chá»‰ Ä‘á»‹nh cá»§a bÃ¡c sÄ©. Coenzym Q10 cÃ³ thá»ƒ dÃ¹ng lÃ¢u dÃ i, hiá»‡u quáº£ lÃ¢m sÃ n thÆ°á»ng Ä‘Æ°á»£c tháº¥y sau chu ká»³ Ä‘iá»u trá»‹ dÃ i ngÃ y. Sau chu ká»³ dÃ¹ng dÃ i ngÃ y, khÃ´ng nÃªn dá»«ng Ä‘á»™t ngá»™t, náº¿u khÃ´ng há»i Ã½ kiáº¿n bÃ¡c sÄ©.', 'Äá»ƒ nÆ¡i khÃ´ thoÃ¡ng, trÃ¡nh Ã¡nh sÃ¡ng', 1, 2, 1, 'qplussupper.jpg'),
(4, 'SlimFit USA', 'xxx', '1', 'Lá» 30 ViÃªn', 1, 'Nutratherm Thermogenic Complex: Micronized Green Tea Leaf extract, Cactus extract, Clary Sage extract\r\nCortfem: Beta-sisosterol, Phophatidylserine, Theanine\r\nAquaplex Water Removal Complex: Dandelion leaf and root, Uva Ursi extract, French maritime pine extract\r\nXtend Absorption Complex: Cellulose ethers\r\nVitamin D (as Cholcalciferol)\r\nVitamin B-6 (as Pyridonxine Hydrochloride) Folic Acid\r\nVitamin B-12 (as Cyanocobalamin)\r\nCalcium (as Calcium Hydroxide/Carbonate)\r\nGelatin, magiÃª stearate.', 'xxx', '- Tan má»¡ tá»« bÃªn trong nhanh chÃ³ng.\r\n- TÄƒng cÆ°á»ng nÄƒng lÆ°á»£ng cÆ¡ thá»ƒ.\r\n- NgÄƒn cháº·n chuyá»ƒn hoÃ¡ cháº¥t thá»«a thÃ nh má»¡ tÃ­ch tá»¥.\r\n- Loáº¡i tháº£i Ä‘á»™c tá»‘ trong cÆ¡ thá»ƒ\r\n- Chá»‘ng lÃ£o hoÃ¡ giÃºp da tÆ°Æ¡i tráº».', '- Uá»‘ng 1 viÃªn/ngÃ y trÆ°á»›c khi Äƒn sÃ¡ng vá»›i nÆ°á»›c lá»c. - Xin Äƒn uá»‘ng Ä‘Ãºng bá»¯a, Ä‘á»«ng bá» bá»¯a Äƒn nÃ o. - Sau khi Ä‘Ã£ Ä‘Æ°á»£c sá»‘ cÃ¢n náº·ng nhÆ° mÃ¬nh mong muá»‘n, nÃªn uá»‘ng 1 tuáº§n 3 viÃªn Ä‘á»ƒ giá»¯ nguyÃªn sá»‘ cÃ¢n.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'slim-fit-2.jpg'),
(5, 'Sá»¯a Ong ChÃºa Royal Jelly Costar ', 'xxx', '1', '1610mg x 365 viÃªn/ lá»', 1, 'Sá»¯a Ong ChÃºa Ãšc Vitamin nhÃ³m A, B, C, D vÃ  E; gá»“m 18 amino acids, Protein vÃ  acid bÃ©o vÃ o 10-HDA giÃºp tÃ¡i táº¡o lÃ n da mang Ä‘áº¿n cho báº¡n 1 lÃ n da má»‹n mÃ ng vÃ  khoáº» máº¡nh.\r\n', 'xxx', 'GiÃºp da chá»‘ng lÃ£o hÃ³a, nÃ¡m, sáº¡m do tÃ¡c Ä‘á»™ng cá»§a mÃ´i trÆ°á»ng vÃ  nháº¥t lÃ  do thay Ä‘á»•i ná»™i tiáº¿t tá»‘ á»Ÿ phá»¥ ná»¯ (trong thá»i ká»³ mÃ£n kinh), vÃ¬ Sá»¯a Ong ChÃºa lÃ m thay Ä‘á»•i táº­n gá»‘c cá»§a nguyÃªn nhÃ¢n gÃ¢y nÃ¡m da, sáº¡m da, giÃºp da dáº§n dáº§n trá»Ÿ nÃªn tráº¯ng há»“ng, cÄƒng má»‹n.\r\n- GiÃºp an tháº§n, ngá»§ ngon, ngá»§ yÃªn giáº¥c, phÃ²ng chá»‘ng máº¥t ngá»§.\r\n- GiÃºp trá»‹ bá»‡nh cao mÃ¡u, cao huyáº¿t Ã¡p, má»¡ trong mÃ¡u, tiá»ƒu Ä‘Æ°á»ng, viÃªm gan A,B,C,D vÃ  cÃ¡c bá»‡nh vá» gan.', '- Uá»‘ng 1 viÃªn 1 ngÃ y vÃ o buá»•i sÃ¡ng. - KhÃ´ng dÃ¹ng cho tráº» em tá»« 8 Ä‘áº¿n 12 tuá»•i, nhá»¯ng ngÆ°á»i bá»‹ hen suyá»…n vÃ  bá»‹ dá»‹ á»©ng vá»›i pháº¥n hoa.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(6, 'QPLUS SUPER 1', '1234', '1', '1610mg x 365 viÃªn/ lá»', 1, '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `drugstores`
--

INSERT INTO `drugstores` (`id`, `ten`, `daidien`, `giayphep`, `ngaycap`, `dienthoai`, `diachi`, `cities_id`, `map`, `gioithieu`, `trangthai`) VALUES
(1, 'Anh ThÆ°', 'Trá»‹nh Má»¹ VÃ¢n', '2376', '2000-01-12', NULL, '7A, Nguyá»…n VÄƒn LÆ°á»£ng, PhÆ°á»ng 10', 1, '21.010159,105.776872', '<p>Äang cáº­p nháº­t ...</p>\r\n', 1),
(2, 'Anh Tuáº¥n', 'Äáº·ng Há»“ng LÃ¢m', '257', '2000-01-12', NULL, '197 chá»£ Cao Äáº¡t, PhÆ°á»ng 1', 1, '21.0109257,105.8298804', 'Äang cáº­p nháº­t...', 1),
(3, 'Ã‚u ChÃ¢u', 'VÃµ VÄƒn Triá»‡u', '000', '2000-01-12', NULL, '240/2 CÃ´ Giang, PhÆ°á»ng 2 ', 1, '10.7663853000,106.6787160000', 'Äang cáº­p nháº­t ...&nbsp;', 1),
(4, 'NhÃ  Thuá»‘c Nháº­t Anh', 'LÆ°Æ¡ng Trá»ng HoÃ n', '19/05', '2005-01-11', NULL, '5 ngÃµ 575 Kim MÃ£', 1, '21.0221296000,105.8189414000', 'Äang cáº­p nháº­t ...', 1),
(5, 'NhÃ  Thuá»‘c PhÃºc NhÃ¢n ÃÆ°á»ng', 'LÃª Thá»‹ Kim Ngá»c', '06/06', '2005-01-11', '0987654331', '266 Nguyá»…n VÄƒn Cá»«', 1, '21.042695, 105.870991', 'Äang cáº­p nháº­t...', 1),
(6, 'NhÃ  Thuá»‘c PhÆ°Æ¡ng LÃª', 'Nguyá»…n Thá»‹ Sinh', '254/06', '2000-01-12', NULL, '8 Äinh Liá»‡t', 1, '21.0334395,105.8518427', 'Äang cáº­p nháº­t...', 1),
(7, 'NhÃ  Thuá»‘c PhÆ°Æ¡ng Linh', 'Nguyá»…n Duy Khang', '36/04', '2004-03-19', NULL, '174 TÃ¢y SÆ¡n', 1, '21.0141146,105.8234543', 'Äang cáº­p nháº­t ...', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='trang thiết bị' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `equips`
--

INSERT INTO `equips` (`id`, `ten`, `anh`, `chucnang`, `manus_id`, `distributes_id`, `gioithieu`, `trangthai`) VALUES
(1, 'MÃ¡y trá»£ tim', 'trotim.jpg', 'Trá»£ tim', 1, 1, 'xxx', 1),
(2, 'MÃ¡y trá»£ thÃ­nh', 'trotim.jpg', 'MÃ¡y trá»£ thÃ­nh', 1, 1, 'xxx', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bệnh viên' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hopitals`
--

INSERT INTO `hopitals` (`id`, `ten`, `diachi`, `cities_id`, `map`, `trangthai`, `gioithieu`) VALUES
(1, 'Bá»‡nh viá»‡n 19 - 8 Bá»™ CÃ´ng An', 'Mai Dá»‹ch, Cáº§u Giáº¥y', 1, '21.03546,105.778888', 1, 'xxx'),
(2, 'Bá»‡nh viá»‡n E HÃ  Ná»™i', '89, Tráº§n Cung, Cáº§u Giáº¥y', 1, '21.050413,105.789281', 1, '<p>Bá»‡nh viá»‡n E l&agrave; bá»‡nh viá»‡n Ä‘a khoa Trung Æ°Æ¡ng trá»±c thuá»™c Bá»™ Y táº¿, th&agrave;nh láº­p tá»« 10/1967 theo quyáº¿t Ä‘á»‹nh sá»‘ 175/TTg do Ph&oacute; Thá»§ tÆ°á»›ng Ch&iacute;nh phá»§ L&ecirc; Thanh Nghá»‹ vá»›i nhiá»‡m vá»¥ Ä‘iá»u trá»‹ v&agrave; chÄƒm s&oacute;c sá»©c khoáº» cho c&aacute;n bá»™ tá»« chiáº¿n trÆ°á»ng miá»n Nam ra Báº¯c chá»¯a bá»‡nh. Sau khi miá»n Nam ho&agrave;n to&agrave;n giáº£i ph&oacute;ng, bá»‡nh viá»‡n chuyá»ƒn sang phá»¥c vá»¥ kh&aacute;m, chá»¯a bá»‡nh cho c&aacute;n bá»™ c&aacute;c cÆ¡ quan Trung Æ°Æ¡ng Ä‘&oacute;ng táº¡i H&agrave; Ná»™i c&oacute; má»©c lÆ°Æ¡ng tá»« 70 Ä‘á»“ng Ä‘áº¿n 114 Ä‘á»“ng. Tá»« 1993, xo&aacute; bá» cháº¿ Ä‘á»™ bao cáº¥p, bá»‡nh viá»‡n nháº­n Ä‘iá»u trá»‹ cho c&aacute;c Ä‘á»‘i tÆ°á»£ng c&oacute; tháº» BHYT v&agrave; nh&acirc;n d&acirc;n tr&ecirc;n Ä‘á»‹a b&agrave;n H&agrave; Ná»™i v&agrave; c&aacute;c tá»‰nh. NÄƒm 2002, bá»‡nh viá»‡n Ä‘Æ°á»£c Bá»™ Y táº¿ n&acirc;ng l&ecirc;n bá»‡nh viá»‡n háº¡ng I vá»›i 340 giÆ°á»ng bá»‡nh. Äáº¿n nay, bá»‡nh viá»‡n Ä‘&atilde; ph&aacute;t triá»ƒn th&agrave;nh bá»‡nh viá»‡n Ä‘a khoa tÆ°Æ¡ng Ä‘á»‘i ho&agrave;n chá»‰nh vá»›i 390 giÆ°á»ng bá»‡nh v&agrave; 36 khoa ph&ograve;ng vá»›i chá»©c nÄƒng nhiá»‡m vá»¥: kh&aacute;m chá»¯a bá»‡nh, nghi&ecirc;n cá»©u khoa há»c, Ä‘&agrave;o táº¡o c&aacute;n bá»™, há»£p t&aacute;c quá»‘c táº¿, chá»‰ Ä‘áº¡o tuyáº¿n v&agrave; quáº£n l&yacute; kinh táº¿ y táº¿.</p>\r\n'),
(3, 'Bá»‡nh viá»‡n Báº¯c ThÄƒng Long - Sá»Ÿ Y táº¿ HÃ  Ná»™i', 'Khá»‘i 3A, Thá»‹ tráº¥n ÄÃ´ng Anh, HÃ  Ná»™i', 1, '21.156747,105.848268', 1, 'Äang cáº­p nháº­t ...'),
(4, 'Bá»‡nh viá»‡n Báº¡ch Mai', '78 Giáº£i PhÃ³ng, PhÆ°Æ¡ng Mai, HÃ  Ná»™i', 1, '78 Giáº£i PhÃ³ng, PhÆ°Æ¡ng Mai, HÃ  Ná»™i', 1, '78 Giáº£i Ph&oacute;ng, PhÆ°Æ¡ng Mai, H&agrave; Ná»™i'),
(5, 'Bá»‡nh viá»‡n bÃ¡n cÃ´ng CIRI ', '45-47 HÃ ng NÃ³n, HÃ  Ná»™i', 1, ' 	45-47 HÃ ng NÃ³n, HÃ  Ná»™i', 1, '45-47 H&agrave;ng N&oacute;n, H&agrave; Ná»™i'),
(6, 'Bá»‡nh viá»‡n BÃ¡n CÃ´ng ChuyÃªn Khoa Máº¯t HÃ  Ná»™i', ' 	51 Tráº§n NhÃ¢n TÃ´ng, HÃ  Ná»™i', 1, ' 51 Tráº§n NhÃ¢n TÃ´ng, HÃ  Ná»™i', 1, '51 Tráº§n Nh&acirc;n T&ocirc;ng, H&agrave; Ná»™i'),
(7, 'Bá»‡nh viá»‡n BÃ¡n CÃ´ng HoÃ¨ Nhai ', '17 HoÃ¨ Nhai, HÃ  Ná»™i', 1, '17 HoÃ¨ Nhai, HÃ  Ná»™i', 1, '17 Ho&egrave; Nhai, H&agrave; Ná»™i'),
(8, 'Bá»‡nh viá»‡n BÆ°u Äiá»‡n - Tá»•ng Cty BÆ°u ChÃ­nh Viá»…n ThÃ´ng VN ', '1 YÃªn BÃ¡i 2, HÃ  Ná»™i', 1, '1 YÃªn BÃ¡i 2, HÃ  Ná»™i', 1, '1 Y&ecirc;n B&aacute;i 2, H&agrave; Ná»™i'),
(9, 'Bá»‡nh viá»‡n Äa khoa Kwang Myung - Viá»‡t Nam ', ' 	3 LÃ´ G1, ÄÃ´ Thá»‹ Má»›i Nam ThÄƒng Long Ciputra, PhÃº ThÆ°á»£ng, HÃ  Ná»™i', 1, ' 	3 LÃ´ G1, ÄÃ´ Thá»‹ Má»›i Nam ThÄƒng Long Ciputra, PhÃº ThÆ°á»£ng, HÃ  Ná»™i', 1, '3 L&ocirc; G1, Ä&ocirc; Thá»‹ Má»›i Nam ThÄƒng Long Ciputra, Ph&uacute; ThÆ°á»£ng, H&agrave; Ná»™i'),
(10, 'Bá»‡nh viá»‡n Äa Khoa Xanh PÃ´n', '12 Chu VÄƒn An, Äiá»‡n BiÃªn Phá»§, Quáº­n Ba ÄÃ¬nh, HÃ  Ná»™i', 1, '12 Chu VÄƒn An, Äiá»‡n BiÃªn Phá»§, Quáº­n Ba ÄÃ¬nh, HÃ  Ná»™i', 1, '12 Chu VÄƒn An, Äiá»‡n Bi&ecirc;n Phá»§, Quáº­n Ba Ä&igrave;nh, H&agrave; Ná»™i');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `infors`
--

INSERT INTO `infors` (`id`, `ten`, `content`, `trangthai`) VALUES
(1, 'ThÃ´ng tin chÃ¢n trang', '<small>Copyright &copy; 2013 Tran Ngoc. All Rights Reserved. Designed by <a href="https://facebook.com/tranngoc8x" target="_blank">TranNgoc</a>.</small>', 1),
(2, 'ThÃ´ng tin liÃªn há»‡', 'ThÃ´ng tin Ä‘ang cáº­p nháº­t...', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nhà xản suất' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `manus`
--

INSERT INTO `manus` (`id`, `ten`, `gioithieu`, `trangthai`) VALUES
(1, 'DÆ°á»£c Pháº©m Trung Æ¯Æ¡ng I', 'DÆ°á»£c Pháº©m Trung Æ¯Æ¡ng I', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `ten`, `infor`) VALUES
(1, 'user1', '202cb962ac59075b964b07152d234b70', 'User 1', 'User 1'),
(2, 'user2', '202cb962ac59075b964b07152d234b70', 'User 2', 'User 2');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) NOT NULL,
  `members_id` int(11) NOT NULL,
  `mark` int(2) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rate_clinics`
--

INSERT INTO `rate_clinics` (`id`, `clinics_id`, `members_id`, `mark`) VALUES
(1, 6, 2, 3),
(2, 6, 1, 5);

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
  `ykien` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `rate_drugs`
--

INSERT INTO `rate_drugs` (`id`, `drugs_id`, `members_id`, `mark`, `ykien`) VALUES
(1, 6, 1, 5, NULL),
(2, 6, 2, 5, NULL),
(3, 6, 3, 5, NULL),
(4, 6, 4, 5, NULL),
(5, 6, 23, 5, NULL),
(6, 6, 5, 5, NULL),
(7, 6, 6, 5, NULL),
(8, 6, 24, 5, NULL),
(9, 6, 7, 5, NULL),
(10, 6, 8, 5, NULL),
(11, 6, 9, 4, NULL),
(12, 6, 10, 4, NULL),
(13, 6, 11, 4, NULL),
(14, 6, 12, 4, NULL),
(15, 6, 13, 4, NULL),
(16, 6, 14, 4, NULL),
(17, 6, 15, 3, NULL),
(18, 6, 16, 3, NULL),
(19, 6, 17, 3, NULL),
(20, 6, 18, 2, NULL),
(21, 6, 19, 1, NULL),
(22, 6, 20, 1, NULL),
(23, 6, 21, 1, NULL),
(24, 6, 22, 1, NULL),
(26, 5, 5, 5, NULL),
(27, 5, 1, 3, NULL),
(57, 3, 1, 5, NULL),
(58, 1, 1, 3, NULL),
(59, 4, 1, 4, NULL),
(60, 5, 2, 4, NULL),
(61, 4, 2, 4, NULL),
(62, 2, 2, 5, NULL),
(64, 1, 2, 5, NULL),
(65, 7, 2, 4, NULL),
(66, 7, 2, 4, NULL),
(67, 7, 2, 4, NULL);

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
(1, 7, 2, 5),
(2, 6, 2, 5),
(3, 7, 1, 4);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rate_equips`
--

INSERT INTO `rate_equips` (`id`, `equips_id`, `members_id`, `mark`) VALUES
(1, 2, 2, 5),
(5, 1, 2, 3),
(6, 2, 1, 4);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rate_hopitals`
--

INSERT INTO `rate_hopitals` (`id`, `hopitals_id`, `members_id`, `mark`) VALUES
(1, 10, 2, 4),
(2, 10, 1, 5);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='loại thuốc' AUTO_INCREMENT=38 ;

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
  `ten` varchar(50) CHARACTER SET cp1251 NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ykien_clinics`
--

INSERT INTO `ykien_clinics` (`id`, `clinics_id`, `members_id`, `content`, `ngayviet`) VALUES
(1, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2013-08-25 20:45:00'),
(2, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2013-08-23 18:15:00'),
(3, 6, 1, 'TNT', '2013-08-30 11:16:48'),
(4, 6, 1, 'Ngoc thang', '2013-08-30 11:16:52'),
(5, 6, 1, 'Tran ngoc thang', '2013-08-30 11:16:58'),
(6, 6, 1, 'tran ngoc', '2013-08-30 11:17:02'),
(17, 5, 1, 'men', '2013-09-01 12:09:57'),
(30, 2, 1, 'sdasad', '2013-09-01 12:35:33'),
(31, 4, 1, 'd', '2013-09-01 12:35:49'),
(32, 6, 1, 'ddsdssd', '2013-09-01 19:09:45'),
(33, 3, 1, 'sdisd', '2013-09-01 20:23:55'),
(34, 6, 1, 'dfddf', '2013-09-01 20:57:26'),
(35, 6, 1, 'kl;k;l', '2013-09-01 20:57:29'),
(36, 6, 1, ';lk;lk', '2013-09-01 20:57:32'),
(37, 6, 1, 'jhgjkg', '2013-09-01 20:57:35'),
(38, 6, 1, 'sdoifh', '2013-09-01 21:10:33');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ykien_clinic_childs`
--

INSERT INTO `ykien_clinic_childs` (`id`, `ykien_clinics_id`, `members_id`, `content`, `ngayviet`) VALUES
(11, 1, 1, 'zxcdd', '2013-09-01 20:57:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `ykien_drugs`
--

INSERT INTO `ykien_drugs` (`id`, `drugs_id`, `members_id`, `content`, `ngayviet`) VALUES
(1, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2013-08-25 20:45:00'),
(2, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2013-08-23 18:15:00'),
(3, 6, 1, 'TNT', '2013-08-30 11:16:48'),
(4, 6, 1, 'Ngoc thang', '2013-08-30 11:16:52'),
(5, 6, 1, 'Tran ngoc thang', '2013-08-30 11:16:58'),
(6, 6, 1, 'tran ngoc', '2013-08-30 11:17:02'),
(17, 5, 1, 'men', '2013-09-01 12:09:57'),
(30, 2, 1, 'sdasad', '2013-09-01 12:35:33'),
(31, 4, 1, 'd', '2013-09-01 12:35:49'),
(32, 6, 1, 'ddsdssd', '2013-09-01 19:09:45'),
(33, 3, 1, 'sdisd', '2013-09-01 20:23:55'),
(34, 6, 1, 'dfddf', '2013-09-01 20:57:26'),
(35, 6, 1, 'kl;k;l', '2013-09-01 20:57:29'),
(36, 6, 1, ';lk;lk', '2013-09-01 20:57:32'),
(37, 6, 1, 'jhgjkg', '2013-09-01 20:57:35');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ykien_drugstores`
--

INSERT INTO `ykien_drugstores` (`id`, `drugstores_id`, `members_id`, `content`, `ngayviet`) VALUES
(1, 7, 1, 'cds', '2013-09-01 20:37:11'),
(2, 7, 1, 'ds', '2013-09-01 20:37:28'),
(3, 7, 1, 'sdffsdfs', '2013-09-01 20:44:25'),
(4, 7, 1, 'okk', '2013-09-01 20:44:28'),
(5, 7, 1, 'p,l;', '2013-09-01 20:44:31'),
(6, 7, 1, 'lkl', '2013-09-01 20:44:33'),
(7, 7, 1, 'iuhiuh', '2013-09-01 20:44:36'),
(8, 7, 1, 'iuhiuh', '2013-09-01 20:44:39'),
(9, 7, 1, 'ihiuhiu', '2013-09-01 20:44:41'),
(10, 7, 1, 'iuhihi', '2013-09-01 20:44:44'),
(11, 7, 1, 'ihioh', '2013-09-01 20:44:47'),
(12, 7, 1, 'ihoiuh', '2013-09-01 20:44:50'),
(13, 7, 1, 'oiuhoiuh', '2013-09-01 20:44:52'),
(14, 6, 1, 'djfd;skfjk', '2013-09-01 21:03:01'),
(15, 6, 1, '''pdfj dsfjo', '2013-09-01 21:03:05'),
(16, 6, 1, 'dffd', '2013-09-01 21:06:02'),
(17, 6, 1, 'ngoc thang', '2013-09-01 21:06:14'),
(18, 6, 1, 'clinc', '2013-09-01 21:06:31'),
(19, 6, 1, 'dsfds', '2013-09-01 21:09:02'),
(20, 6, 1, 'zddsf', '2013-09-01 21:09:33'),
(21, 6, 1, 'fd', '2013-09-01 21:09:44');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ykien_drugstore_childs`
--

INSERT INTO `ykien_drugstore_childs` (`id`, `ykien_drugstores_id`, `members_id`, `content`, `ngayviet`) VALUES
(2, 2, 2, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo', '2013-08-25 18:26:00'),
(3, 37, 1, 'lsjflkf', '2013-09-01 21:03:13'),
(4, 37, 1, 'dsfjkdsf', '2013-09-01 21:03:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ykien_drug_childs`
--

INSERT INTO `ykien_drug_childs` (`id`, `ykien_drugs_id`, `members_id`, `content`, `ngayviet`) VALUES
(11, 1, 1, 'zxcdd', '2013-09-01 20:57:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `ykien_equips`
--

INSERT INTO `ykien_equips` (`id`, `equips_id`, `members_id`, `content`, `ngayviet`) VALUES
(1, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2013-08-25 20:45:00'),
(2, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2013-08-23 18:15:00'),
(3, 6, 1, 'TNT', '2013-08-30 11:16:48'),
(4, 6, 1, 'Ngoc thang', '2013-08-30 11:16:52'),
(5, 6, 1, 'Tran ngoc thang', '2013-08-30 11:16:58'),
(6, 6, 1, 'tran ngoc', '2013-08-30 11:17:02'),
(17, 5, 1, 'men', '2013-09-01 12:09:57'),
(30, 2, 1, 'sdasad', '2013-09-01 12:35:33'),
(31, 4, 1, 'd', '2013-09-01 12:35:49'),
(32, 6, 1, 'ddsdssd', '2013-09-01 19:09:45'),
(33, 3, 1, 'sdisd', '2013-09-01 20:23:55'),
(34, 6, 1, 'dfddf', '2013-09-01 20:57:26'),
(35, 6, 1, 'kl;k;l', '2013-09-01 20:57:29'),
(36, 6, 1, ';lk;lk', '2013-09-01 20:57:32'),
(37, 6, 1, 'jhgjkg', '2013-09-01 20:57:35'),
(38, 6, 1, 'sdoifh', '2013-09-01 21:10:33'),
(39, 2, 1, 'fdf', '2013-09-01 21:19:46'),
(40, 2, 1, 'fdgfd', '2013-09-01 21:19:49'),
(41, 2, 1, 'ko''k', '2013-09-01 21:19:53'),
(42, 2, 1, 'uygkuy', '2013-09-01 21:19:55'),
(43, 2, 1, 'gkhgkuy', '2013-09-01 21:19:58'),
(44, 2, 1, 'ukygkuygk', '2013-09-01 21:20:01'),
(45, 2, 1, 'uglug', '2013-09-01 21:20:03'),
(46, 2, 1, 'gliugliuh', '2013-09-01 21:20:06'),
(47, 2, 1, 'ilhluhjk', '2013-09-01 21:20:09'),
(48, 2, 1, 'lihjkhui', '2013-09-01 21:20:12'),
(49, 2, 1, 'iluhi7liu', '2013-09-01 21:20:15');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ykien_equip_childs`
--

INSERT INTO `ykien_equip_childs` (`id`, `ykien_equips_id`, `members_id`, `content`, `ngayviet`) VALUES
(11, 1, 1, 'zxcdd', '2013-09-01 20:57:18'),
(12, 39, 1, 'sdlfjdsfkl', '2013-09-01 21:20:28'),
(13, 48, 1, 'sdf.dnsklf', '2013-09-01 21:20:36');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `ykien_hopitals`
--

INSERT INTO `ykien_hopitals` (`id`, `hopitals_id`, `members_id`, `content`, `ngayviet`) VALUES
(1, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2013-08-25 20:45:00'),
(2, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2013-08-23 18:15:00'),
(3, 6, 1, 'TNT', '2013-08-30 11:16:48'),
(4, 6, 1, 'Ngoc thang', '2013-08-30 11:16:52'),
(5, 6, 1, 'Tran ngoc thang', '2013-08-30 11:16:58'),
(6, 6, 1, 'tran ngoc', '2013-08-30 11:17:02'),
(17, 5, 1, 'men', '2013-09-01 12:09:57'),
(30, 2, 1, 'sdasad', '2013-09-01 12:35:33'),
(31, 4, 1, 'd', '2013-09-01 12:35:49'),
(32, 6, 1, 'ddsdssd', '2013-09-01 19:09:45'),
(33, 3, 1, 'sdisd', '2013-09-01 20:23:55'),
(34, 6, 1, 'dfddf', '2013-09-01 20:57:26'),
(35, 6, 1, 'kl;k;l', '2013-09-01 20:57:29'),
(36, 6, 1, ';lk;lk', '2013-09-01 20:57:32'),
(37, 6, 1, 'jhgjkg', '2013-09-01 20:57:35'),
(38, 6, 1, 'sdoifh', '2013-09-01 21:10:33'),
(39, 10, 1, 'sdfdsfjk', '2013-09-01 21:22:52'),
(40, 10, 1, 'sdfkdsf', '2013-09-01 21:23:01'),
(41, 10, 1, 'lkdsfdns', '2013-09-01 21:23:04'),
(42, 10, 1, 'lkdfnsdfkjf', '2013-09-01 21:23:09'),
(43, 10, 1, 'dfgfdi;hik', '2013-09-01 21:23:15'),
(44, 10, 1, '.,dngruihlicvj', '2013-09-01 21:23:18'),
(45, 10, 1, 'hkj', '2013-09-01 21:23:21'),
(46, 10, 1, ',bjhgbkjb', '2013-09-01 21:23:24'),
(47, 10, 1, 'kjniuhkj', '2013-09-01 21:23:27'),
(48, 10, 1, 'lyugytfljh', '2013-09-01 21:23:30'),
(49, 10, 1, 'iujk', '2013-09-01 21:23:33'),
(50, 10, 1, 'yeeu ken', '2013-09-01 21:23:38'),
(51, 10, 1, '.kjsdnfkj', '2013-09-01 21:23:40'),
(52, 10, 1, 'kdjfdsnm', '2013-09-01 21:23:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ykien_hopital_childs`
--

INSERT INTO `ykien_hopital_childs` (`id`, `ykien_hopitals_id`, `members_id`, `content`, `ngayviet`) VALUES
(11, 1, 1, 'zxcdd', '2013-09-01 20:57:18'),
(12, 51, 1, '.kxdjfdk', '2013-09-01 21:23:49'),
(13, 40, 1, 'kdjfg.ndjk', '2013-09-01 21:23:57');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;