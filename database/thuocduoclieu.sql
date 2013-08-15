-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 15, 2013 at 10:30 AM
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
  `ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=4 ;

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
  `chuyenkhoa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT '0',
  `map` varchar(255) CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='phòng khám' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `ten`, `daidien`, `chuyenkhoa`, `diachi`, `cities_id`, `dienthoai`, `gioithieu`, `trangthai`, `map`) VALUES
(1, 'PhÃ²ng khÃ¡m Äa khoa', 'Pháº¡m VÄƒn ÄÃ i', 'Äa khoa', 'sá»‘ 41 Nguyá»…n ThÆ°á»£ng Hiá»n ,Hai BÃ  TrÆ°ng', 1, 'Hai BÃ  TrÆ°ng', '<p>Äang cáº­p nháº­t</p>\r\n', 1, '0,0'),
(2, 'PhÃ²ng KhÃ¡m TÆ° nhÃ¢n', 'BÃ¹i Tá»‘ Nga', '', '138', 1, '(04).9433473', 'Äang cáº­p nháº­t', 1, '0,0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `ten`, `phone`, `email`, `content`, `trangthai`) VALUES
(2, 'Tráº§n Ngá»c Tháº¯ng', '0974324940', 'tranngocthang89@gmail.com', 'Xin chÃ o, báº¡n tÃªn gÃ¬?', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chuyên khoa ' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `ten`, `trangthai`) VALUES
(1, 'Máº¯t', 1),
(2, 'Miá»‡ng', 1);

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

INSERT INTO `drugs` (`id`, `ten`, `sodk`, `giakekhai`, `dangbaoche`, `types_id`, `thanhphan`, `chidinh`, `lieudung`, `baoquan`, `manus_id`, `distributes_id`, `trangthai`, `anh`) VALUES
(1, 'Berberin â€“ BM', '1234', 5000, 'viÃªn nang cá»©ng - Há»™p 3 vá»‰ x 10 viÃªn.', 1, 'Berberin cloridâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦..   25mg\r\n\r\nBa cháº½â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦ 100mg\r\n\r\nMá»™c hÆ°Æ¡ngâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 150mg\r\n\r\nTÃ¡ dÆ°á»£c vÄ‘â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦. 1 viÃªn\r\n\r\nTÃ¡ dÆ°á»£c (tinh bá»™t sáº¯n 20mg, Calci carbonat 190mg, Magnesi stearat 4.0mg)', 'Nhiá»…m khuáº©n Ä‘Æ°á»ng ruá»™t nhÆ°: tiÃªu cháº£y, Ä‘au bá»¥ng, Ä‘áº§y bá»¥ng, viÃªm ruá»™t cáº¥p vÃ  máº¡n tÃ­nh, lá»µ trá»±c trÃ¹ng.', 'NgÆ°á»i lá»›n: 2 viÃªn/ láº§n x 3 láº§n/ ngÃ y.  Tráº» em: 1-2 viÃªn/ láº§n x 2 láº§n/ ngÃ y.', 'Äá»ƒ nÆ¡i thoÃ¡ng mÃ¡t, trÃ¡nh Ã¡nh náº¯ng máº·t trá»i', 1, 1, 1, 'becberin.jpg'),
(2, 'Becberin', '1234', 5, '1610mg x 365 viÃªn/ lá»', 1, '<p>DÆ°á»£c t&aacute; vá»«a Ä‘á»§</p>\r\n', '<p>Äi ngo&agrave;i</p>\r\n', '20v/láº§n', '<p>Tho&aacute;ng m&aacute;t</p>\r\n', 1, 1, 1, 'becberin.jpg'),
(3, 'QPLUS SUPER', 'VN-9074-09', 135, 'ViÃªn nang má»m - Lá» 30 viÃªn', 2, 'Má»—i viÃªn nang má»m chá»©a 30mg Coenzyme Q10', 'DÃ¹ng Ä‘iá»u trá»‹ há»— trá»£ : bá»‡nh cÆ¡ tim, thiá»ƒu nÄƒng tuáº§n hoÃ n, bá»‡nh thiáº¿u mÃ¡u á»Ÿ tim, tÄƒng huyáº¿t Ã¡p Ä‘á»™ng máº¡ch, chá»©ng loáº¡n nhá»‹p Ä‘i kÃ¨m thiá»ƒu nÄƒng tuáº§n hoÃ n, ngoÃ i ra thuá»‘c cÃ²n Ä‘Æ°á»£c dÃ¹ng Ä‘á»ƒ:\r\n- chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng miá»…n dá»‹ch\r\n- phÃ²ng vÃ  Ä‘iá»u trá»‹ xÆ¡ vá»¯a Ä‘á»™ng máº¡ch\r\n- Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t do thiáº¿u há»¥t coenzym Q10 Ä‘áº·c biá»‡t á»Ÿ ngÆ°á»i cao tuá»•i.\r\n\r\nTÃ¡c dá»¥ng phá»¥:\r\n\r\nThuá»‘c thÆ°á»ng Ä‘Æ°á»£c dung náº¡p tá»‘t. Hiáº¿m khi xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng cá»§a tÃ¡c dá»¥ng khÃ´ng mong muá»‘n (khoáº£ng 1,4%)nhÆ°: buá»“n nÃ´n, nÃ´n, tiÃªu cháº£y, máº¥t cáº£m giÃ¡c khi Äƒn, Ä‘á» da\r\nCáº£nh bÃ¡o Ä‘áº·c biá»‡t vÃ  tháº­n trá»ng Ä‘áº·c biá»‡t khi sá»­ dá»¥ng: Trong quÃ¡ trÃ¬nh Ä‘iá»u trá»‹ cÃ³ thá»ƒ xuáº¥t hiá»‡n tÄƒng khÃ´ng Ä‘Ã¡ng ká»ƒ ná»“ng Ä‘á»™ dehydrogenase vÃ  tranaminase trong mÃ¡u.\r\n\r\nChÃº Ã½ Ä‘á» phÃ²ng:\r\n\r\nPhá»¥ ná»¯ cÃ³ thai vÃ  cho con bÃº: TrÃ¡nh dÃ¹ng cho phá»¥ ná»¯ cÃ³ thai hoáº·c Ä‘ang cho con bÃº vÃ¬ Ä‘á»™ an toÃ n chÆ°a xÃ¡c Ä‘á»‹nh.\r\náº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c: thuá»‘c khÃ´ng áº£nh hÆ°á»Ÿng lÃªn kháº£ nÄƒng lÃ¡i xe vÃ  váº­n hÃ nh mÃ¡y mÃ³c\r\ncoenzym Q10 cÃ³ thá»ƒ lÃ m tÄƒng tÃ¡c dá»¥ng cá»§a thuá»‘c lá»£i tiá»ƒu, cÃ¡c thuá»‘c glycosid trá»£ tim vÃ  nitrat.\r\nThuá»‘c lÃ m tÄƒng tÃ¡c dá»¥ng chá»‘ng oxy hÃ³a cá»§a vitamin E, thuá»‘c cÃ³ thá»ƒ lÃ m kÃ©o dÃ i thá»i gian tÃ¡c dá»¥ng giáº£m huyáº¿t Ã¡p cá»§a enalapril vÃ  nitrendipin. coenzym Q10 cÃ³ tÃ¡c dá»¥ng Ä‘á»“ng váº­n vá»›i L-canrnitin trong quÃ¡ trÃ¬nh chuyá»ƒn hÃ³a vÃ  tuáº§n hoÃ n. Thuá»‘c cÃ³ thá»ƒ lÃ m giáº£m nguy cÆ¡ xuáº¥t hiá»‡n cÃ¡c triá»‡u chá»©ng áº£nh hÆ°á»Ÿng suy giáº£m lÃªn cÆ¡ tim cá»§a cÃ¡c thuá»‘c nhÃ³m giáº£i phÃ³ng adrenolytic bÃªta, kÃ¬m hÃ£m tÃ¡c dá»¥ng chá»‘ng Ä‘Ã´ng cá»§a warpharin. coenzym Q10 cÃ²n lÃ m giáº£m Ä‘á»™c tÃ­nh cá»§a cÃ¡c khÃ¡ng sinh chá»‘ng ung thÆ° thuá»™c nhÃ³n antracyclin.\r\nSá»­ dá»¥ng quÃ¡ liá»u: chÆ°a cÃ³ dá»¯ liá»‡u vá» viá»‡c Sá»­ dá»¥ng quÃ¡ liá»u coenzym Q10', 'Thuá»‘c cáº§n Ä‘Æ°á»£c uá»‘ng sau khi Äƒn Liá»u dÃ¹ng cho ngÆ°á»i lá»›n vÃ  tráº» em trÃªn 15 tuá»•i: - Ä‘iá»u trá»‹ há»— trá»£ trong bá»‡nh thuá»™c há»‡ tuáº§n hÃ²a: 60-80mg (2-6 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Chá»‘ng lÃ£o hÃ³a, tÄƒng cÆ°á»ng kháº£ nÄƒng miá»…n dá»‹ch: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Vá»¯a xÆ¡ Ä‘á»™ng máº¡ch: 30-300mg (1-10 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n - Há»™i chá»©ng má»‡t má»i kÃ©o dÃ i, suy giáº£m kháº£ nÄƒng hoáº¡t Ä‘á»™ng thá»ƒ cháº¥t: 60-120 mg (2-4 viÃªn)/ngÃ y, chia lÃ m 2-3 láº§n. Hoáº·c theo chá»‰ Ä‘á»‹nh cá»§a bÃ¡c sÄ©. Coenzym Q10 cÃ³ thá»ƒ dÃ¹ng lÃ¢u dÃ i, hiá»‡u quáº£ lÃ¢m sÃ n thÆ°á»ng Ä‘Æ°á»£c tháº¥y sau chu ká»³ Ä‘iá»u trá»‹ dÃ i ngÃ y. Sau chu ká»³ dÃ¹ng dÃ i ngÃ y, khÃ´ng nÃªn dá»«ng Ä‘á»™t ngá»™t, náº¿u khÃ´ng há»i Ã½ kiáº¿n bÃ¡c sÄ©.', 'Äá»ƒ nÆ¡i khÃ´ thoÃ¡ng, trÃ¡nh Ã¡nh sÃ¡ng', 1, 2, 1, 'qplussupper.jpg'),
(4, 'SlimFit USA', 'xxx', 1, 'Lá» 30 ViÃªn', 1, 'Nutratherm Thermogenic Complex: Micronized Green Tea Leaf extract, Cactus extract, Clary Sage extract\r\nCortfem: Beta-sisosterol, Phophatidylserine, Theanine\r\nAquaplex Water Removal Complex: Dandelion leaf and root, Uva Ursi extract, French maritime pine extract\r\nXtend Absorption Complex: Cellulose ethers\r\nVitamin D (as Cholcalciferol)\r\nVitamin B-6 (as Pyridonxine Hydrochloride) Folic Acid\r\nVitamin B-12 (as Cyanocobalamin)\r\nCalcium (as Calcium Hydroxide/Carbonate)\r\nGelatin, magiÃª stearate.', '- Tan má»¡ tá»« bÃªn trong nhanh chÃ³ng.\r\n- TÄƒng cÆ°á»ng nÄƒng lÆ°á»£ng cÆ¡ thá»ƒ.\r\n- NgÄƒn cháº·n chuyá»ƒn hoÃ¡ cháº¥t thá»«a thÃ nh má»¡ tÃ­ch tá»¥.\r\n- Loáº¡i tháº£i Ä‘á»™c tá»‘ trong cÆ¡ thá»ƒ\r\n- Chá»‘ng lÃ£o hoÃ¡ giÃºp da tÆ°Æ¡i tráº».', '- Uá»‘ng 1 viÃªn/ngÃ y trÆ°á»›c khi Äƒn sÃ¡ng vá»›i nÆ°á»›c lá»c. - Xin Äƒn uá»‘ng Ä‘Ãºng bá»¯a, Ä‘á»«ng bá» bá»¯a Äƒn nÃ o. - Sau khi Ä‘Ã£ Ä‘Æ°á»£c sá»‘ cÃ¢n náº·ng nhÆ° mÃ¬nh mong muá»‘n, nÃªn uá»‘ng 1 tuáº§n 3 viÃªn Ä‘á»ƒ giá»¯ nguyÃªn sá»‘ cÃ¢n.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'slim-fit-2.jpg'),
(5, 'Sá»¯a Ong ChÃºa Royal Jelly Costar ', 'xxx', 1, '1610mg x 365 viÃªn/ lá»', 1, 'Sá»¯a Ong ChÃºa Ãšc Vitamin nhÃ³m A, B, C, D vÃ  E; gá»“m 18 amino acids, Protein vÃ  acid bÃ©o vÃ o 10-HDA giÃºp tÃ¡i táº¡o lÃ n da mang Ä‘áº¿n cho báº¡n 1 lÃ n da má»‹n mÃ ng vÃ  khoáº» máº¡nh.\r\n', 'GiÃºp da chá»‘ng lÃ£o hÃ³a, nÃ¡m, sáº¡m do tÃ¡c Ä‘á»™ng cá»§a mÃ´i trÆ°á»ng vÃ  nháº¥t lÃ  do thay Ä‘á»•i ná»™i tiáº¿t tá»‘ á»Ÿ phá»¥ ná»¯ (trong thá»i ká»³ mÃ£n kinh), vÃ¬ Sá»¯a Ong ChÃºa lÃ m thay Ä‘á»•i táº­n gá»‘c cá»§a nguyÃªn nhÃ¢n gÃ¢y nÃ¡m da, sáº¡m da, giÃºp da dáº§n dáº§n trá»Ÿ nÃªn tráº¯ng há»“ng, cÄƒng má»‹n.\r\n- GiÃºp an tháº§n, ngá»§ ngon, ngá»§ yÃªn giáº¥c, phÃ²ng chá»‘ng máº¥t ngá»§.\r\n- GiÃºp trá»‹ bá»‡nh cao mÃ¡u, cao huyáº¿t Ã¡p, má»¡ trong mÃ¡u, tiá»ƒu Ä‘Æ°á»ng, viÃªm gan A,B,C,D vÃ  cÃ¡c bá»‡nh vá» gan.', '- Uá»‘ng 1 viÃªn 1 ngÃ y vÃ o buá»•i sÃ¡ng. - KhÃ´ng dÃ¹ng cho tráº» em tá»« 8 Ä‘áº¿n 12 tuá»•i, nhá»¯ng ngÆ°á»i bá»‹ hen suyá»…n vÃ  bá»‹ dá»‹ á»©ng vá»›i pháº¥n hoa.', 'ThoÃ¡ng mÃ¡t', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg'),
(6, 'QPLUS SUPER 1', '1234', 1, '1610mg x 365 viÃªn/ lá»', 1, '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', '1610mg x 365 viÃªn/ lá»', 1, 1, 1, 'costar-royal-jell-1610-mg-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `drugstores`
--

DROP TABLE IF EXISTS `drugstores`;
CREATE TABLE IF NOT EXISTS `drugstores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `daidien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giayphep` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaycap` date NOT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `diachi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cities_id` int(11) NOT NULL,
  `map` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `drugstores`
--

INSERT INTO `drugstores` (`id`, `ten`, `daidien`, `giayphep`, `ngaycap`, `dienthoai`, `diachi`, `cities_id`, `map`, `gioithieu`, `trangthai`) VALUES
(1, 'Anh ThÆ°', 'Trá»‹nh Má»¹ VÃ¢n', '2376', '2000-01-12', NULL, '7A, Nguyá»…n VÄƒn LÆ°á»£ng, PhÆ°á»ng 10', 1, '0,0', '<p>Äang cáº­p nháº­t ...</p>\r\n', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bệnh viên' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hopitals`
--

INSERT INTO `hopitals` (`id`, `ten`, `diachi`, `cities_id`, `map`, `trangthai`, `gioithieu`) VALUES
(1, 'Bá»‡nh viá»‡n 19 - 8 Bá»™ CÃ´ng An', 'Mai Dá»‹ch, Cáº§u Giáº¥y', 1, '21.03546,105.778888', 1, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `infors`
--

DROP TABLE IF EXISTS `infors`;
CREATE TABLE IF NOT EXISTS `infors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

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
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `infor` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
