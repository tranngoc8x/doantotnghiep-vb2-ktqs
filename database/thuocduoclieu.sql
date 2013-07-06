-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 06, 2013 at 07:38 AM
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
-- Table structure for table `clinics`
--

CREATE TABLE IF NOT EXISTS `clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daidien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` int(11) NOT NULL,
  `thanhpho` int(11) NOT NULL,
  `quanhuyen` int(11) NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `clinics_id` int(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `map` varchar(255) CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='phòng khám' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chuyên khoa ';

-- --------------------------------------------------------

--
-- Table structure for table `distributes`
--

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
(1, 'CT cáº¥p1', 'CT cáº¥p1+', 1),
(2, 'CT cáº¥p2', 'CT cáº¥p2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE IF NOT EXISTS `drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giakekhai` decimal(10,0) NOT NULL,
  `dangbaoche` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `types_id` int(11) NOT NULL,
  `thanhphan` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `hamluong` text COLLATE utf8_unicode_ci NOT NULL,
  `chidinh` text COLLATE utf8_unicode_ci NOT NULL,
  `lieudung` text COLLATE utf8_unicode_ci NOT NULL,
  `baoquan` text COLLATE utf8_unicode_ci NOT NULL,
  `manus_id` int(11) NOT NULL,
  `distributes_id` int(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `hamluong`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(1, 'Berberin â€“ BM', '1234', 5000, 'viÃªn nang cá»©ng - Há»™p 3 vá»‰ x 10 viÃªn.', 1, 'Berberin cloridâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦..   25mg\r\n\r\nBa cháº½â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦ 100mg\r\n\r\nMá»™c hÆ°Æ¡ngâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 150mg\r\n\r\nTÃ¡ dÆ°á»£c vÄ‘â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 1 viÃªn\r\n\r\nTÃ¡ dÆ°á»£c (tinh bá»™t sáº¯n 20mg, Calci carbonat 190mg, Magnesi stearat 4.0mg)', 'Berberin cloridâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦..   25mg\r\n\r\nBa cháº½â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦ 100mg\r\n\r\nMá»™c hÆ°Æ¡ngâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 150mg\r\n\r\nTÃ¡ dÆ°á»£c vÄ‘â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 1 viÃªn', 'Nhiá»…m khuáº©n Ä‘Æ°á»ng ruá»™t nhÆ°: tiÃªu cháº£y, Ä‘au bá»¥ng, Ä‘áº§y bá»¥ng, viÃªm ruá»™t cáº¥p vÃ  máº¡n tÃ­nh, lá»µ trá»±c trÃ¹ng.', 'NgÆ°á»i lá»›n: 2 viÃªn/ láº§n x 3 láº§n/ ngÃ y.  Tráº» em: 1-2 viÃªn/ láº§n x 2 láº§n/ ngÃ y.', 'Äá»ƒ nÆ¡i thoÃ¡ng mÃ¡t, trÃ¡nh Ã¡nh náº¯ng máº·t trá»i', 1, 1, 1, 'becberin.jpg'),
(2, 'Becberin', '1234', 5, '', 1, '1\r\n1\r\n2\r\n3', '1\r\n2\r\n3\r\n4', 'Đi ngoài', '20v/lần', '1\r\n2\r\n3\r\n4', 1, 1, 2, 'becberin.jpg'),
(3, 'QPLUS SUPER', 'VN-9074-09', 135, 'ViÃªn nang má»m - Lá» 30 viÃªn', 2, 'Má»—i viÃªn nang má»m chá»©a 30mg Coenzyme Q10', 'Pháº§n thÃ´ng tin tham kháº£o â€“ DÃ¹ng thuá»‘c theo chá»‰ Ä‘á»‹nh cá»§a BÃ¡c sÄ©', 'DÃ¹ng Ä‘iá»u trá»‹ há»— trá»£ : bá»‡nh cÆ¡ tim, thiá»ƒu nÄƒng tuáº§n hoÃ n, bá»‡nh thiáº¿u mÃ¡u á»Ÿ tim, tÄƒng huyáº¿t Ã¡p Ä‘á»™ng máº¡ch, chá»©ng loáº¡n nhá»‹p Ä‘i kÃ¨m thiá»ƒu nÄƒng tuáº§n hoÃ n, ngoÃ i ra thuá»‘c cÃ²n Ä‘Æ°á»£c dÃ¹ng Ä‘á»ƒ:\r\n- chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng miá»…n dá»‹ch\r\n- phÃ²ng vÃ  Ä‘iá»u trá»‹ xÆ¡ vá»¯a Ä‘á»™ng máº¡ch\r\n- Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t do thiáº¿u há»¥t coenzym Q10 Ä‘áº·c biá»‡t á»Ÿ ngÆ°á»i cao tuá»•i.\r\n\r\nTÃ¡c dá»¥ng phá»¥:\r\n\r\nThuá»‘c thÆ°á»ng Ä‘Æ°á»£c dung náº¡p tá»‘t. Hiáº¿m khi xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng cá»§a tÃ¡c dá»¥ng khÃ´ng mong muá»‘n (khoáº£ng 1,4%)nhÆ°: buá»“n nÃ´n, nÃ´n, tiÃªu cháº£y, máº¥t cáº£m giÃ¡c khi Äƒn, Ä‘á» da\r\nCáº£nh bÃ¡o Ä‘áº·c biá»‡t vÃ  tháº­n trá»ng Ä‘áº·c biá»‡t khi sá»­ dá»¥ng: Trong quÃ¡ trÃ¬nh Ä‘iá»u trá»‹ cÃ³ thá»ƒ xuáº¥t hiá»‡n tÄƒng khÃ´ng Ä‘Ã¡ng ká»ƒ ná»“ng Ä‘á»™ dehydrogenase vÃ  tranaminase trong mÃ¡u.\r\n\r\nChÃº Ã½ Ä‘á» phÃ²ng:\r\n\r\nPhá»¥ ná»¯ cÃ³ thai vÃ  cho con bÃº: TrÃ¡nh dÃ¹ng cho phá»¥ ná»¯ cÃ³ thai hoáº·c Ä‘ang cho con bÃº vÃ¬ Ä‘á»™ an toÃ n chÆ°a xÃ¡c Ä‘á»‹nh.\r\náº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c: thuá»‘c khÃ´ng áº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c\r\ncoenzym Q10 cÃ³ thá»ƒ lÃ m tÄƒng tÃ¡c dá»¥ng cá»§a thuá»‘c lá»£i tiá»ƒu, cÃ¡c thuá»‘c glycosid trá»£ tim vÃ  nitrat.\r\nThuá»‘c lÃ m tÄƒng tÃ¡c dá»¥ng chá»‘ng oxy hÃ³a cá»§a vitamin E, thuá»‘c cÃ³ thá»ƒ lÃ m kÃ©o dÃ i thá»i gian tÃ¡c dá»¥ng giáº£m huyáº¿t Ã¡p cá»§a enalapril vÃ  nitrendipin. coenzym Q10 cÃ³ tÃ¡c dá»¥ng Ä‘á»“ng váº­n vá»›i L-canrnitin trong quÃ¡ trÃ¬nh chuyá»ƒn hÃ³a vÃ  tuáº§n hoÃ n. Thuá»‘c cÃ³ thá»ƒ lÃ m giáº£m nguy cÆ¡ xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng áº£nh hÆ°á»Ÿng suy giáº£m lÃªn cÆ¡ tim cá»§a cÃ¡c thuá»‘c nhÃ³m giáº£i phÃ³ng adrenolytic bÃªta, kÃ¬m hÃ£m tÃ¡c dá»¥ng chá»‘ng Ä‘Ã´ng cá»§a warpharin. coenzym Q10 cÃ²n lÃ m giáº£m Ä‘á»™c tÃ­nh cá»§a cÃ¡c khÃ¡ng sinh chá»‘ng ung thÆ° thuá»™c nhÃ³n antracyclin.\r\nSá»­ dá»¥ng quÃ¡ liá»u: chÆ°a cÃ³ dá»¯ liá»‡u vá» viá»‡c Sá»­ dá»¥ng quÃ¡ liá»u coenzym Q10', 'Thuá»‘c cáº§n Ä‘Æ°á»£c uá»‘ng sau khi Äƒn Liá»u dÃ¹ng cho ngÆ°á»i lá»›n vÃ  tráº» em trÃªn 15 tuá»•i: - Ä‘iá»u trá»‹ há»— trá»£ trong bá»‡nh thuá»™c há»‡ tuáº§n hÃ²a: 60-80mg (2-6 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng kháº£ nÄƒng miá»…n dá»‹ch: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Vá»¯a xÆ¡ Ä‘á»™ng máº¡ch: 30-300mg (1-10 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n. Hoáº·c theo chá»‰ Ä‘á»‹nh cá»§a bÃ¡c sÄ©. Coenzym Q10 cÃ³ thá»ƒ dÃ¹ng lÃ¢u dÃ i, hiá»‡u quáº£ lÃ¢m sÃ n thÆ°á»ng Ä‘Æ°á»£c tháº¥y sau chu ká»³ Ä‘iá»u trá»‹ dÃ i ngÃ y. Sau chu ká»³ dÃ¹ng dÃ i ngÃ y, khÃ´ng nÃªn dá»«ng Ä‘á»™t ngá»™t, náº¿u khÃ´ng há»i Ã½ kiáº¿n bÃ¡c sÄ©.', 'Äá»ƒ nÆ¡i khÃ´ thoÃ¡ng, trÃ¡nh Ã¡nh sÃ¡ng', 1, 2, 1, 'qplussupper.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `equips`
--

CREATE TABLE IF NOT EXISTS `equips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chucnang` text COLLATE utf8_unicode_ci NOT NULL,
  `manufactures_id` int(11) NOT NULL,
  `distributes_id` int(11) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='trang thiết bị' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hopitals`
--

CREATE TABLE IF NOT EXISTS `hopitals` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thanhpho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quanhuyen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bệnh viên';

-- --------------------------------------------------------

--
-- Table structure for table `manus`
--

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
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='loại thuốc' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `ten`, `mota`, `trangthai`) VALUES
(1, 'Giáº£m Ä‘au', 'Giáº£m Ä‘au', 1),
(2, 'Thuá»‘c tim máº¡ch', 'Thuá»‘c tim máº¡ch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) CHARACTER SET cp1251 NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
