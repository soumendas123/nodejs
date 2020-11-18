-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 02:39 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_admin_login`
--

CREATE TABLE `microsidd_admin_login` (
  `admin_id` int(11) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `admin_user_name` varchar(30) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `h_address` varchar(255) NOT NULL,
  `tele_no` varchar(255) NOT NULL,
  `m_no` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `fid` varchar(255) NOT NULL,
  `iid` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `admin_type` enum('1','0') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `department` varchar(255) NOT NULL,
  `staff_position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `microsidd_admin_login`
--

INSERT INTO `microsidd_admin_login` (`admin_id`, `staff_id`, `fullname`, `admin_user_name`, `admin_image`, `admin_password`, `surname`, `fname`, `dob`, `passport`, `h_address`, `tele_no`, `m_no`, `admin_email`, `fid`, `iid`, `join_date`, `admin_type`, `status`, `department`, `staff_position`) VALUES
(1, '', 'admin', 'admin', '', '$2b$10$dohbafQhmd1PTU4zznT5QuatKH6yg6Kpm60KcSq0CA8k6jDgqknVe', '', '', '', '', '', '', '', '', '', '', '', '1', 'Active', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_cashback`
--

CREATE TABLE `microsidd_cashback` (
  `cashback_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cashback_amount` float(7,2) NOT NULL,
  `date` date NOT NULL,
  `payment_status` enum('Non Paid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_cashback`
--

INSERT INTO `microsidd_cashback` (`cashback_id`, `order_id`, `user_id`, `cashback_amount`, `date`, `payment_status`) VALUES
(1, 1548831965, 79, 60.60, '2019-01-30', 'Non Paid'),
(2, 1548832253, 80, 60.60, '2019-01-30', 'Non Paid'),
(3, 1548832253, 79, 60.60, '2019-01-30', 'Non Paid'),
(4, 1548832897, 84, 303.00, '2019-01-30', 'Non Paid'),
(5, 1548832897, 83, 303.00, '2019-01-30', 'Non Paid'),
(6, 1548832897, 82, 121.20, '2019-01-30', 'Non Paid'),
(7, 1548832897, 81, 121.20, '2019-01-30', 'Non Paid'),
(8, 1548832897, 80, 121.20, '2019-01-30', 'Non Paid'),
(9, 1548832897, 79, 60.60, '2019-01-30', 'Non Paid'),
(10, 1548833148, 84, 121.20, '2019-01-30', 'Non Paid'),
(11, 1548833148, 84, 303.00, '2019-01-30', 'Non Paid'),
(12, 1548833148, 83, 303.00, '2019-01-30', 'Non Paid'),
(13, 1548833148, 82, 121.20, '2019-01-30', 'Non Paid'),
(14, 1548833148, 81, 121.20, '2019-01-30', 'Non Paid'),
(15, 1548833148, 80, 121.20, '2019-01-30', 'Non Paid'),
(16, 1548833148, 79, 60.60, '2019-01-30', 'Non Paid'),
(17, 1548842989, 84, 121.20, '2019-01-30', 'Non Paid'),
(18, 1548842989, 84, 303.00, '2019-01-30', 'Non Paid'),
(19, 1548842989, 83, 303.00, '2019-01-30', 'Non Paid'),
(20, 1548842989, 82, 121.20, '2019-01-30', 'Non Paid'),
(21, 1548842989, 81, 121.20, '2019-01-30', 'Non Paid'),
(22, 1548842989, 80, 121.20, '2019-01-30', 'Non Paid'),
(23, 1548842989, 79, 60.60, '2019-01-30', 'Non Paid'),
(24, 1548938696, 78, 121.20, '2019-01-31', 'Non Paid'),
(25, 1549109012, 78, 105.80, '2019-02-02', 'Non Paid'),
(26, 1549117438, 78, 105.80, '2019-02-02', 'Non Paid'),
(27, 1549979683, 57, 80.60, '2019-02-12', 'Non Paid');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_category`
--

CREATE TABLE `microsidd_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `category_header_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `featured` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_ci_sessions`
--

CREATE TABLE `microsidd_ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `timestamp` int(12) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `microsidd_ci_sessions`
--

INSERT INTO `microsidd_ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('u0ivh1v6m3nmop0pm0u9omjlepi2mk0f', '::1', '', 1596474311, '__ci_last_regenerate|i:1596474311;'),
('l5jgv9roqroi27tjscaom3dj3iijg0k8', '::1', '', 1596474425, '__ci_last_regenerate|i:1596474425;'),
('ej0ra1evm9gokpl6m058k3anj84fbs8s', '::1', '', 1596474258, '__ci_last_regenerate|i:1596474258;'),
('9n126qvhprq4k4pbsl8pp05cutb2uds3', '::1', '', 1596474266, '__ci_last_regenerate|i:1596474266;'),
('esc1p4rehtsj58v7a4b6g5mvc8907an6', '::1', '', 1596474098, '__ci_last_regenerate|i:1596474097;'),
('fu2tlc2f5qd9horb58pfqqgco1amft75', '::1', '', 1596474134, '__ci_last_regenerate|i:1596474134;'),
('4o1qhrci99c4sm7mauqcn0u6kf9v13as', '::1', '', 1596473813, '__ci_last_regenerate|i:1596473813;'),
('8pll8fr798ogus5bt30998fqlh78743e', '::1', '', 1596473821, '__ci_last_regenerate|i:1596473821;'),
('om66qdmigrn62flgi02vn523dtis04jq', '::1', '', 1596473676, '__ci_last_regenerate|i:1596473675;'),
('gjui3vq7hdt3oa033qf79foiec9tbvm4', '::1', '', 1596473708, '__ci_last_regenerate|i:1596473708;'),
('36s9m61glacivogd7le9uamco89ibsv0', '::1', '', 1596473437, '__ci_last_regenerate|i:1596473437;'),
('tc6jaut33557slo0qhqobh5a9h12jfm6', '::1', '', 1596473664, '__ci_last_regenerate|i:1596473664;'),
('f8hkfetvih42c114m602donob1qoik05', '::1', '', 1596473312, '__ci_last_regenerate|i:1596473311;'),
('glc5m0dso68lnhagglqbqljjcm9lt687', '::1', '', 1596473354, '__ci_last_regenerate|i:1596473354;'),
('3tbtkmgdkesngo0sun9fspgfktqc3s2u', '::1', '', 1596473290, '__ci_last_regenerate|i:1596473289;'),
('al5t3cdpemaick7ospipme6v585aj479', '::1', '', 1596470604, '__ci_last_regenerate|i:1596470604;'),
('djc1edt8urvnp10vnfgn3gh1ld1p92g5', '::1', '', 1596471097, '__ci_last_regenerate|i:1596471097;'),
('giofb2nietfnge8jtuosdlrm863l61b1', '::1', '', 1596469875, '__ci_last_regenerate|i:1596469874;'),
('rs3vqt2ca4hi4v15onj6r43f2pmf30mq', '::1', '', 1596469067, '__ci_last_regenerate|i:1596469067;'),
('0q593fkecmtga2fdach0no4grmt8qmbn', '::1', '', 1596451965, '__ci_last_regenerate|i:1596451963;'),
('ju7fkq647jntpetq3ph8ecfin6kvkdoi', '::1', '', 1596445662, '__ci_last_regenerate|i:1596445662;'),
('vgbpg0b1jle9jp69es7f6vdac22qfl9o', '::1', '', 1596445646, '__ci_last_regenerate|i:1596445646;'),
('1u6diddvcvphp1lfqa50l2aj7h08p7jo', '::1', '', 1596432951, '__ci_last_regenerate|i:1596432951;'),
('g2udeue9clfl4rdhqslbf2mf04tda2ka', '::1', '', 1596433065, '__ci_last_regenerate|i:1596433065;'),
('8vp1aaebv5vbfh89li7ek1hirrf8qc4n', '::1', '', 1596432448, '__ci_last_regenerate|i:1596432448;'),
('71rbat7t8dbgs1tl7efn33ctkflerqhj', '::1', '', 1596432492, '__ci_last_regenerate|i:1596432492;'),
('kh8vmvc21onjc5dce5d5k0obu80j8o66', '::1', '', 1596432171, '__ci_last_regenerate|i:1596432171;'),
('n4rogt9fo6idnejib9g82h0sndlpto8d', '::1', '', 1596432292, '__ci_last_regenerate|i:1596432292;'),
('cart7hg78qrldrds6kt6r6giemplab3i', '::1', '', 1596431978, '__ci_last_regenerate|i:1596431978;'),
('9uvps77hf642qffejrlfkb065a9njob3', '::1', '', 1596431988, '__ci_last_regenerate|i:1596431988;'),
('8qraq24di6k6diqsgfe5habo7h52j81f', '::1', '', 1596431851, '__ci_last_regenerate|i:1596431850;'),
('k8ga20n6cloieekncb3au8rkgrsi7i6a', '::1', '', 1596431959, '__ci_last_regenerate|i:1596431959;'),
('uotj02d4gmn80p6u88mjeuo6kksajl6k', '::1', '', 1596431768, '__ci_last_regenerate|i:1596431768;'),
('93aunnljeuergqhfoo8gp92agr2f8664', '::1', '', 1596431815, '__ci_last_regenerate|i:1596431815;'),
('vqpo6tcipkvr4frns3sbi0drfd5omv3r', '::1', '', 1596431722, '__ci_last_regenerate|i:1596431722;'),
('9joj20fna70s9j3edn3i212ugq6ft424', '::1', '', 1596431748, '__ci_last_regenerate|i:1596431748;'),
('nvtn0bt2ei54fimlumo4rpfs3mhbie9p', '::1', '', 1596430999, '__ci_last_regenerate|i:1596430999;'),
('6gudk5ct3t4v7tbjf0gd0nji8ugrl22r', '::1', '', 1596431336, '__ci_last_regenerate|i:1596431336;'),
('dubbqbn95lb47tfppfsonnk56ec224ha', '::1', '', 1596429940, '__ci_last_regenerate|i:1596429940;'),
('1c320vjnlpla75a96hfc4d2igngf5h5h', '::1', '', 1596430987, '__ci_last_regenerate|i:1596430987;'),
('cveb85kguijiq893ksue1eplj1e18fkk', '::1', '', 1596428966, '__ci_last_regenerate|i:1596428966;'),
('h2h8bona6pn1sllcimaj2nrg5p3dv7np', '::1', '', 1596429758, '__ci_last_regenerate|i:1596429758;'),
('oom67ebcrsbqn0cm8ocjh9h3r6omo7sa', '::1', '', 1596427893, '__ci_last_regenerate|i:1596427893;'),
('9oq6u70mlvhb2v12en8masaqatvjfthb', '::1', '', 1596427990, '__ci_last_regenerate|i:1596427990;'),
('qc58jacttc1eh0u5h8hcafltc3hf7r9i', '::1', '', 1596427412, '__ci_last_regenerate|i:1596427412;'),
('o0ta2nlrss7rtuuck87gckbmno6oecee', '::1', '', 1596427448, '__ci_last_regenerate|i:1596427448;'),
('2the3i1paa21rq7ujsj3mlod60daspmc', '::1', '', 1596427386, '__ci_last_regenerate|i:1596427385;'),
('pe5o9svrfj8c5qjm9ql653m37k8kqbhh', '::1', '', 1596427407, '__ci_last_regenerate|i:1596427407;'),
('3as1pcbbgpsgla1nrs3u5redfrkplkum', '::1', '', 1596426682, '__ci_last_regenerate|i:1596426682;'),
('oei8igrofk341ea8fo5rgol790ki38bd', '::1', '', 1596427273, '__ci_last_regenerate|i:1596427273;'),
('elplt4qs260k3agpgqkr9cclp0i48arb', '::1', '', 1596426293, '__ci_last_regenerate|i:1596426293;'),
('2jpetpc31ifsu95l2jrr66fakvoqqb25', '::1', '', 1596426452, '__ci_last_regenerate|i:1596426452;'),
('g60vvapgdss554ha7gh9r2sp3pc2te0i', '::1', '', 1596426288, '__ci_last_regenerate|i:1596426288;'),
('lgokpgb601nc1e6qrtk6mv7l1pmq2u33', '::1', '', 1596426290, '__ci_last_regenerate|i:1596426290;'),
('3ejmpch3dj9scgrk0mlsbi55cma59101', '::1', '', 1596425880, '__ci_last_regenerate|i:1596425880;'),
('rgqtagat357gdmva6io10jjuog3a6gis', '::1', '', 1596426255, '__ci_last_regenerate|i:1596426255;'),
('5fd152ikfg6gfjhbd24s1q167h6r346d', '::1', '', 1596425870, '__ci_last_regenerate|i:1596425870;'),
('6j8mbvh9p856ntv9igjpgg43ibebelvf', '::1', '', 1596425876, '__ci_last_regenerate|i:1596425876;'),
('7r2uhpaha9ogji6neera32jc75t5nt6p', '::1', '', 1596425466, '__ci_last_regenerate|i:1596425466;'),
('3kvqds1c4u8skdpfddt2i0pkgkanj9v1', '::1', '', 1596425506, '__ci_last_regenerate|i:1596425506;'),
('aspg06k05dqt7po8bteu21f6msbur7hp', '::1', '', 1596425314, '__ci_last_regenerate|i:1596425314;'),
('la6g2g829uqhthiapk4qh2iu8juath3i', '::1', '', 1596425353, '__ci_last_regenerate|i:1596425353;'),
('53o5rep54m2bbslungss5jsha653nnes', '::1', '', 1596425245, '__ci_last_regenerate|i:1596425245;'),
('ubnev28bgqohd1v880cc4vudotrlarmo', '::1', '', 1596425262, '__ci_last_regenerate|i:1596425262;'),
('hjsqs3pk9sedmqno2fubdslnb2tmva6v', '::1', '', 1596425234, '__ci_last_regenerate|i:1596425234;'),
('2l05mq0bhf0vd83qjfoj2o01l9qaebm8', '::1', '', 1596425242, '__ci_last_regenerate|i:1596425242;'),
('k2hhj10f01p6dnji11g0butvqj83dme9', '::1', '', 1596425212, '__ci_last_regenerate|i:1596425212;'),
('6ogjivtn7v3vjdimhrg6mi2dm5v7754a', '::1', '', 1596425215, '__ci_last_regenerate|i:1596425215;'),
('ls5posh9rb94fo1msq1qsdj3q2mcjocm', '::1', '', 1596425202, '__ci_last_regenerate|i:1596425202;'),
('hrspm05tcd2b7nq9irg1ecfn5d55vv4l', '::1', '', 1596425208, '__ci_last_regenerate|i:1596425208;'),
('67k6e5alq0l4q6c9udvv0442qhrboe1t', '::1', '', 1596425126, '__ci_last_regenerate|i:1596425126;'),
('a3dkg53d5ph9vip74tnhhnb7prd1v89p', '::1', '', 1596425174, '__ci_last_regenerate|i:1596425174;'),
('mp31mf1f49va3hah742du55ibsvc8q7j', '::1', '', 1596425055, '__ci_last_regenerate|i:1596425055;'),
('hps27tjqmv3rtpgt8nkm92qrrjq0nlvg', '::1', '', 1596425126, '__ci_last_regenerate|i:1596425126;'),
('rk1q6gbljpt97hu8t5kiihf127n1tu3s', '::1', '', 1596424989, '__ci_last_regenerate|i:1596424989;'),
('2ugklbrl1pg5u2csvlpu1n65330to3i8', '::1', '', 1596425046, '__ci_last_regenerate|i:1596425046;'),
('qlrcusdlbrsodbptfuuek4c1nco6ltgv', '::1', '', 1596424975, '__ci_last_regenerate|i:1596424975;'),
('vorqp4icuc7qb2iolk2qm7iu4uidt39b', '::1', '', 1596424989, '__ci_last_regenerate|i:1596424989;'),
('3thib340hd71b04gsnc7e1ssro2idlm8', '::1', '', 1596424971, '__ci_last_regenerate|i:1596424971;'),
('bufssvsdjlkp1ihrscefil5gn1kuufpb', '::1', '', 1596424975, '__ci_last_regenerate|i:1596424975;'),
('ssc3cpu6vp2a49t6kba5re6ten9ok8pq', '::1', '', 1596424940, '__ci_last_regenerate|i:1596424940;'),
('4e2avoepmshk90frdojij1qcidn8elj0', '::1', '', 1596424971, '__ci_last_regenerate|i:1596424971;'),
('nspt3q9vrd1jatt6v056soubau5nt3t0', '::1', '', 1596424927, '__ci_last_regenerate|i:1596424927;'),
('pvm929l649vef21kirfih62gvg3j0eb5', '::1', '', 1596424940, '__ci_last_regenerate|i:1596424940;'),
('oqh108sr1naiples6h8roilp3aaale91', '::1', '', 1596424802, '__ci_last_regenerate|i:1596424802;'),
('ml0a8tncldisue5hn2m9dbrjm7q19lt0', '::1', '', 1596424927, '__ci_last_regenerate|i:1596424927;'),
('5th3ar78neuk08cq5eshdtp1omm38ke8', '::1', '', 1596424796, '__ci_last_regenerate|i:1596424796;'),
('af9bu5bf2an8uiop5ic920o2hl3ms2th', '::1', '', 1596424802, '__ci_last_regenerate|i:1596424802;'),
('rkocg5iv5d9ifa124mm5muimgdjjn032', '::1', '', 1596424789, '__ci_last_regenerate|i:1596424789;'),
('03q0ash0p7i6criqgcj6h4vlu52imsh6', '::1', '', 1596424796, '__ci_last_regenerate|i:1596424796;'),
('vhmu2nv0tmdfg2ln98dp4beqd19stub8', '::1', '', 1596424710, '__ci_last_regenerate|i:1596424709;'),
('n9c84gbfqqqbln9llemeisa5fcvsa8pd', '::1', '', 1596424789, '__ci_last_regenerate|i:1596424789;'),
('4ad3o3oiljkielqljk5ebt8k0b00lhdc', '::1', '', 1596424682, '__ci_last_regenerate|i:1596424682;'),
('libetl54h1eragcpd7n7shkpman9ui9l', '::1', '', 1596424702, '__ci_last_regenerate|i:1596424702;'),
('qeijc8i4qp05ugmfvbq43bd2hrjfll4i', '::1', '', 1596424486, '__ci_last_regenerate|i:1596424486;'),
('86vsed9r8mq26oponb5bqbupe4etlj3k', '::1', '', 1596424588, '__ci_last_regenerate|i:1596424588;'),
('5orohdh11v15arfdvs87k2srsk1tj5k1', '::1', '', 1596424312, '__ci_last_regenerate|i:1596424312;'),
('m64ci5ev35vph6ombevnbdaa5s7seep1', '::1', '', 1596424371, '__ci_last_regenerate|i:1596424371;'),
('nel05cgf5ic5a1mpn13bs4bol8to8csj', '::1', '', 1596424138, '__ci_last_regenerate|i:1596424138;'),
('dep19vgqaa8hrpt88ds338c0tinbdh2u', '::1', '', 1596424249, '__ci_last_regenerate|i:1596424249;'),
('7nstd480h8uh8anrjc5ck27qnlu9t0f6', '::1', '', 1596423773, '__ci_last_regenerate|i:1596423773;'),
('5siuhd4r1n3r02cv984mp1mt5t2k2n3r', '::1', '', 1596424131, '__ci_last_regenerate|i:1596424131;'),
('fs7gpjrlsc3cuv45rtdpqle5oq1qrrul', '::1', '', 1596421695, '__ci_last_regenerate|i:1596421695;'),
('7hjf6iiq72rqlcnka3pdig7gefufb083', '::1', '', 1596423761, '__ci_last_regenerate|i:1596423761;'),
('spk2fc92cpah0n6u2apsagghabod6mg3', '::1', '', 1596421640, '__ci_last_regenerate|i:1596421640;'),
('0fj91hvc39o5u8hcuat5sl23sr1q4vte', '::1', '', 1596420776, '__ci_last_regenerate|i:1596420776;'),
('28ok5jlild6aer5dk9p75hrcgct5qqqi', '::1', '', 1596421551, '__ci_last_regenerate|i:1596421551;'),
('q2clq24ps7o1evm606k4id63psa3v5cs', '::1', '', 1596420741, '__ci_last_regenerate|i:1596420738;'),
('t8lakul20gel72vobml03fb7vcr4af2f', '::1', '', 1596420776, '__ci_last_regenerate|i:1596420776;user_id|s:1:"1";is_logged_in|b:1;'),
('6gnhq6vm59jfmtbehbtiff59bt9qggrp', '::1', '', 1596420738, '__ci_last_regenerate|i:1596420727;'),
('6cmfg00j998cbqb0b7ahpdkv62b3858v', '127.0.0.1', '', 1596291807, '__ci_last_regenerate|i:1596291806;'),
('9crol50ha9mh2bbg9hmlo3c4ijgeg326', '127.0.0.1', '', 1596293386, '__ci_last_regenerate|i:1596293386;'),
('nr9s68ipn9jj1e8n3kf6opdn68jdv5uk', '127.0.0.1', '', 1596213576, '__ci_last_regenerate|i:1596213576;'),
('8h900e608ibpnc8tvup2pmpdiic37307', '127.0.0.1', '', 1596213694, '__ci_last_regenerate|i:1596213694;'),
('938n3p0q6fh4lv3cb115jd3mk2sv1ere', '127.0.0.1', '', 1596213576, '__ci_last_regenerate|i:1596213575;user_id|s:1:"1";is_logged_in|b:1;'),
('isjrgjhdj6kmtharo62nvdv8s1edl7sb', '127.0.0.1', '', 1596213521, '__ci_last_regenerate|i:1596213520;'),
('c36mqn81pd86r3u54d2qmp7j7288gqvo', '127.0.0.1', '', 1596213559, '__ci_last_regenerate|i:1596213558;'),
('da00dmq5t4frti7fdd7s32c0qqt00krh', '::1', '', 1596213089, '__ci_last_regenerate|i:1596213085;'),
('g29n8oh56t1i2rosbd13ee22a97508if', '::1', '', 1596047363, '__ci_last_regenerate|i:1596047363;'),
('tdgb6bq3r7n3ukd5maqtgp3visii8mvv', '::1', '', 1596047371, '__ci_last_regenerate|i:1596047371;'),
('3bca16ag76hftijk7fbmkq57rf9mookl', '::1', '', 1596047328, '__ci_last_regenerate|i:1596047328;'),
('328e410snk4a8ffaml0d45r8bf7alqdb', '::1', '', 1596047363, '__ci_last_regenerate|i:1596047363;user_id|s:1:"1";is_logged_in|b:1;'),
('9vr46u9lla65tsgsujbcfislsqnr0l4d', '::1', '', 1596047164, '__ci_last_regenerate|i:1596047164;'),
('t25umg6fh99uac0hqf4offibaq4rg4s5', '::1', '', 1596046388, '__ci_last_regenerate|i:1596046388;'),
('3al9j9uc8aattt0csjfcd98klrqeb79o', '::1', '', 1596046379, '__ci_last_regenerate|i:1596046379;'),
('vsobh282ltfjcoh6vt36ghnsrmkutdjf', '::1', '', 1596045427, '__ci_last_regenerate|i:1596045427;'),
('4035fpmsc4tg4oe829r31grd2ovgu5at', '::1', '', 1596045362, '__ci_last_regenerate|i:1596045360;'),
('ramcj22t8ti99peos3cg7vee7n9t6ss3', '::1', '', 1596031919, '__ci_last_regenerate|i:1596031919;'),
('n88hqv8dhsr2b2c4g0cb7ms4d1flkjpj', '::1', '', 1596031771, '__ci_last_regenerate|i:1596031770;'),
('v614ohssccghd33500dsoidaabefkrn9', '::1', '', 1596019376, '__ci_last_regenerate|i:1596019376;'),
('l1ftbt51ejqfk1oaqo2b19s07nbblb7h', '::1', '', 1596019376, '__ci_last_regenerate|i:1596019376;user_id|s:1:"1";is_logged_in|b:1;'),
('snflvln6itstvgiqu045suu4pj29lm0b', '::1', '', 1596019356, '__ci_last_regenerate|i:1596019356;'),
('dl1d6urm7l4etb34qlsgm36gu4ruv6l1', '::1', '', 1596019096, '__ci_last_regenerate|i:1596019096;'),
('rde2if4utocrrdjpie6t1sro0c0aqsbb', '::1', '', 1596019088, '__ci_last_regenerate|i:1596019088;'),
('062ned0o1echopb6m571ehof1ruku277', '::1', '', 1596019088, '__ci_last_regenerate|i:1596019088;user_id|s:1:"1";is_logged_in|b:1;'),
('8i3v7inhehln9fh8hto33en21uc8qblf', '::1', '', 1596017053, '__ci_last_regenerate|i:1596017053;'),
('kl26fbe782aec0k8iee3eue6utvmgg7s', '::1', '', 1596016804, '__ci_last_regenerate|i:1596016804;'),
('eqo2op0n78psgttc7buil0q19ek12oed', '::1', '', 1596016767, '__ci_last_regenerate|i:1596016766;'),
('lqafh7fi7i30a2rg7vomfdh3sr27prd1', '::1', '', 1596016804, '__ci_last_regenerate|i:1596016804;user_id|s:1:"1";is_logged_in|b:1;'),
('ngj6h0jfotilbovsg8cc739dj2qsenac', '::1', '', 1596016294, '__ci_last_regenerate|i:1596016294;'),
('uru6vb5hrfqmt1ts88h1d15a12gruda0', '::1', '', 1596016312, '__ci_last_regenerate|i:1596016312;'),
('1r7nhi2kq629m66fjk3e1fht3mrps5v1', '::1', '', 1596016211, '__ci_last_regenerate|i:1596016211;'),
('t77pbfhejsp7o1kpm0ll4pfs70vkksg3', '::1', '', 1596015640, '__ci_last_regenerate|i:1596015640;'),
('5ersec4co2ruoheqhhll307lijhf7p3r', '::1', '', 1596015492, '__ci_last_regenerate|i:1596015491;'),
('20dcn5i3fb2ak54ehh1kei1fi0s590n8', '::1', '', 1596012268, '__ci_last_regenerate|i:1596012268;'),
('bkolrl33aupurcv6ae1s3e5940lb6c7v', '::1', '', 1596012267, '__ci_last_regenerate|i:1596012266;user_id|s:1:"1";is_logged_in|b:1;'),
('9oumc5p14tbejlntci10h0f15pedickc', '::1', '', 1595885945, '__ci_last_regenerate|i:1595885945;'),
('2unpk55lrirdag7t8icok2rk431t5obk', '::1', '', 1596010629, '__ci_last_regenerate|i:1596010629;'),
('982adnqmt212sq83vqiq789nvcddi8hu', '::1', '', 1595885945, '__ci_last_regenerate|i:1595885945;user_id|s:1:"1";is_logged_in|b:1;'),
('gconba0ppfeu5jldrekb8e6cf34j5u4o', '::1', '', 1595885902, '__ci_last_regenerate|i:1595885902;'),
('7u8ei4eejae8feet6f3vcqguq0dj3vek', '::1', '', 1595885905, '__ci_last_regenerate|i:1595885904;'),
('27hkomk90f94vp903odmqrgl7t3llq46', '::1', '', 1595885724, '__ci_last_regenerate|i:1595885724;'),
('i4694miam7b886llhcsm6cf4ikrfgdkn', '::1', '', 1595885551, '__ci_last_regenerate|i:1595885551;'),
('gfokll8r7qo4h4l0cm5vfbd4dfcona1c', '::1', '', 1595885721, '__ci_last_regenerate|i:1595885721;'),
('olv5dh44t8904fsge6ui4rabqhsdpjgp', '::1', '', 1595885547, '__ci_last_regenerate|i:1595885547;'),
('rreii7erdql6rg2rmasko8mbb4bprete', '::1', '', 1595885546, '__ci_last_regenerate|i:1595885546;user_id|s:1:"1";is_logged_in|b:1;'),
('jejdvfoj087rd6ach2a6lvusdd89vs37', '::1', '', 1595885360, '__ci_last_regenerate|i:1595885360;'),
('nnlm57979b100ga248hej3c5lg84velb', '::1', '', 1595885360, '__ci_last_regenerate|i:1595885360;user_id|s:1:"1";is_logged_in|b:1;'),
('bp6f8o8j511k229a9b0blhmh1ru7nmf0', '::1', '', 1595885334, '__ci_last_regenerate|i:1595885334;'),
('dsl2pvo62nls4fsm7vmlnnpd0s0ms39j', '::1', '', 1595885324, '__ci_last_regenerate|i:1595885323;'),
('o8m1fcp4mbnt98ps6e9lhnovb1nh54ic', '::1', '', 1595884786, '__ci_last_regenerate|i:1595884786;'),
('4lb5u9evqg30f26htgrbe8etukqt6bgk', '::1', '', 1595884761, '__ci_last_regenerate|i:1595884761;'),
('hj7fe8l3qhg31cn0i26tqka0f0d16i5p', '::1', '', 1595884759, '__ci_last_regenerate|i:1595884759;'),
('qlf4q95c9mkdocb4bp37j32nf45kkdmu', '::1', '', 1595884754, '__ci_last_regenerate|i:1595884754;'),
('07cvoluu2or2big44c5e1q0306b6llie', '::1', '', 1595884747, '__ci_last_regenerate|i:1595884747;'),
('u644ncsoumqtihfkjs61ts597imtsv43', '::1', '', 1595884747, '__ci_last_regenerate|i:1595884745;'),
('06mpukf34r765cn1r5pq9pp66eblblkf', '127.0.0.1', '', 1595867733, '__ci_last_regenerate|i:1595867733;'),
('8m6bvl3am2uipt7724613ftlr01f5aeh', '127.0.0.1', '', 1595865096, '__ci_last_regenerate|i:1595865096;'),
('ecg0imkdk700vbmvhphffr5k3p4furnp', '127.0.0.1', '', 1595865096, '__ci_last_regenerate|i:1595865096;user_id|s:1:"1";is_logged_in|b:1;'),
('bvh514hr2kibcts2msm0p8p4orvmhc9u', '127.0.0.1', '', 1595865078, '__ci_last_regenerate|i:1595865076;'),
('k61nlijns42lgj5e4oaa00dqotnj6prk', '127.0.0.1', '', 1595865064, '__ci_last_regenerate|i:1595865064;'),
('7q4uai2v9irr8a3d3j6b81lejl2iikj4', '127.0.0.1', '', 1595865034, '__ci_last_regenerate|i:1595865034;'),
('ai66i835dhivd4vha1f5ardkhhorlbcq', '127.0.0.1', '', 1595864992, '__ci_last_regenerate|i:1595864992;'),
('1fs6g5tcblpr5995q5gnkq5so3m6f9h7', '127.0.0.1', '', 1595864981, '__ci_last_regenerate|i:1595864981;'),
('tvk47a4m6g22bpb5jvpo2s4k2sldmkp4', '127.0.0.1', '', 1595864975, '__ci_last_regenerate|i:1595864975;'),
('jiqf3lru4u13he2l5f8stcrjurbc2rbj', '127.0.0.1', '', 1595864768, '__ci_last_regenerate|i:1595864768;'),
('0avhmknjiefnumab340ondlb2fgtpv5n', '127.0.0.1', '', 1595864704, '__ci_last_regenerate|i:1595864704;'),
('4uibqnr0ebg90gqtjcq1acomceht88ho', '127.0.0.1', '', 1595864702, '__ci_last_regenerate|i:1595864702;'),
('imlb7984k7gi4mkj9dq8uecifh1o9mj3', '127.0.0.1', '', 1595864525, '__ci_last_regenerate|i:1595864524;'),
('apgo1i1potaer8ddle6qllh5mucampcg', '127.0.0.1', '', 1595864494, '__ci_last_regenerate|i:1595864494;'),
('5nu1lvhbbsqfjsve68goa5lp04ucqjev', '127.0.0.1', '', 1595864379, '__ci_last_regenerate|i:1595864379;'),
('jf6uubppnj86gd8262mb00g9fpa74lqc', '::1', '', 1595788468, '__ci_last_regenerate|i:1595788467;'),
('iq59u7a0skfkl5j81btg4m4kv6l4hjal', '::1', '', 1595782312, '__ci_last_regenerate|i:1595782312;user_id|s:1:"1";is_logged_in|b:1;'),
('8t53hpik05cne57oar2ktsu2mm7hsb76', '::1', '', 1595782288, '__ci_last_regenerate|i:1595782288;'),
('dqkgkhb0el5gjvhelnarnm03qdcfifq1', '::1', '', 1595781125, '__ci_last_regenerate|i:1595781125;'),
('rj1auclhilqrrsi1opg3rjh2baum1j9n', '::1', '', 1595780941, '__ci_last_regenerate|i:1595780941;'),
('9elntrvt6opiff7rhnu1g6i6qek8koe5', '::1', '', 1595780913, '__ci_last_regenerate|i:1595780913;user_id|s:1:"1";is_logged_in|b:1;'),
('nl2vimlfn677sbmp61bvod0kdpm0cnbr', '::1', '', 1595780886, '__ci_last_regenerate|i:1595780885;'),
('v3t64o0q1h9j0k1ij5fbcs1l5298115g', '::1', '', 1595780879, '__ci_last_regenerate|i:1595780879;'),
('8duufbstvkusuardb0ap2squg3sbnjte', '::1', '', 1595780871, '__ci_last_regenerate|i:1595780871;'),
('09941rvf35evfsrhkfodj4pblj8rlqi8', '::1', '', 1595780849, '__ci_last_regenerate|i:1595780849;'),
('0439k34oej1l9gb47vrcneb2i49vh4h4', '::1', '', 1595780842, '__ci_last_regenerate|i:1595780842;'),
('7e57r1rghfj25qqalo9hn86er06efoqo', '::1', '', 1595780325, '__ci_last_regenerate|i:1595780325;'),
('tacolt5oud70n1ihg8omv1uj6m94852e', '::1', '', 1595780321, '__ci_last_regenerate|i:1595780321;user_id|s:1:"1";is_logged_in|b:1;'),
('gig0dkh7f1tqlfklguhe9n4nnvngrj5f', '::1', '', 1595780300, '__ci_last_regenerate|i:1595780300;'),
('jjk6aj8g5854abo3hdoilb00mp88r5ri', '::1', '', 1595780206, '__ci_last_regenerate|i:1595780206;'),
('5g9nis4ev1flf16jthfvnq4mejslguef', '::1', '', 1595780202, '__ci_last_regenerate|i:1595780202;user_id|s:1:"1";is_logged_in|b:1;'),
('d7lgaiik7r98b43mq5tsauqjporu2qlm', '::1', '', 1595780182, '__ci_last_regenerate|i:1595780182;'),
('3f6l56h7t1m65jg2lfq2jueh15kgml4e', '::1', '', 1595780178, '__ci_last_regenerate|i:1595780178;user_id|s:1:"1";is_logged_in|b:1;'),
('t1qtjr8q28oslq50s4tdcd4h7retnod4', '::1', '', 1595780141, '__ci_last_regenerate|i:1595780141;'),
('nncmolkhi4phgpvlc6a8kcskhji1ahbh', '::1', '', 1595780086, '__ci_last_regenerate|i:1595780086;'),
('il0e3cu1oqvqa2qe5laacj1nahe2jro8', '::1', '', 1595779926, '__ci_last_regenerate|i:1595779926;'),
('p0n9p01j4gn5nbvafmpi6a07omurnqou', '::1', '', 1595766740, '__ci_last_regenerate|i:1595766740;user_id|s:1:"1";is_logged_in|b:1;'),
('hbatuvu5ush0etv6kjroe28j4ugmqoov', '::1', '', 1595766736, '__ci_last_regenerate|i:1595766736;'),
('k1flf7mqip6122f9ch2el5nfccf9pe5o', '::1', '', 1595766707, '__ci_last_regenerate|i:1595766707;'),
('8l7ai151uqg548ucflslbi0blepu6seh', '::1', '', 1595766745, '__ci_last_regenerate|i:1595766446;'),
('a8qbablj6im64hco5o1cnug6iqg6jr6q', '::1', '', 1595766340, '__ci_last_regenerate|i:1595766340;user_id|s:1:"1";is_logged_in|b:1;'),
('9enfcvktidqq9lg2aujdpebqfh5sq5mt', '::1', '', 1595766325, '__ci_last_regenerate|i:1595766325;'),
('1jckbuqrl9jrsghjt7il19eibrg8s6be', '::1', '', 1595766321, '__ci_last_regenerate|i:1595766321;'),
('4coo2nb8n3ld0aaqgcsk7ag9kkh0fnue', '::1', '', 1595766315, '__ci_last_regenerate|i:1595766315;'),
('je4iohsr6sfukunjq8c4e5ijnos4134j', '::1', '', 1595766349, '__ci_last_regenerate|i:1595766139;'),
('cl4srd58lfdcu2db9gq947q0ton3m42p', '::1', '', 1595766119, '__ci_last_regenerate|i:1595766119;user_id|s:1:"1";is_logged_in|b:1;'),
('16nlmb9115oc1d997i86f2fjbb04uful', '::1', '', 1595766074, '__ci_last_regenerate|i:1595766074;'),
('ikj3ue053re5hkcnmn4qcbo2ujqtqph8', '::1', '', 1595766048, '__ci_last_regenerate|i:1595766047;user_id|s:1:"1";is_logged_in|b:1;'),
('gd0omkl1pod7v4mr79802t13id0smsmb', '::1', '', 1595765999, '__ci_last_regenerate|i:1595765999;'),
('ea9di1f5659723410uc24gqo8bgd61qu', '::1', '', 1595765851, '__ci_last_regenerate|i:1595765851;user_id|s:1:"1";is_logged_in|b:1;mandatory_purchase|N;'),
('6auvciabeurf6pecd45l3gkjiujc6fu4', '::1', '', 1595765816, '__ci_last_regenerate|i:1595765816;'),
('rdkl92kipda1cm9t0t08hafdsiop89l3', '::1', '', 1595764691, '__ci_last_regenerate|i:1595764691;user_id|s:1:"1";is_logged_in|b:1;mandatory_purchase|N;'),
('n9v0tqtm3ddogmep957c5k0fqs8810br', '::1', '', 1595764653, '__ci_last_regenerate|i:1595764653;'),
('go6mcrt8r4mpg921jq6tdm5rvv655fju', '::1', '', 1595764585, '__ci_last_regenerate|i:1595764585;'),
('sn0bmsr8vqal84pkci3usalaasom1dc7', '::1', '', 1595764523, '__ci_last_regenerate|i:1595764522;'),
('uigug4mdd9olbi9rnuitm0ck67gk89v4', '::1', '', 1595764452, '__ci_last_regenerate|i:1595764452;user_id|s:1:"1";is_logged_in|b:1;mandatory_purchase|N;'),
('20it46nhild8icooobv6ainh2ir4f8ib', '::1', '', 1595764437, '__ci_last_regenerate|i:1595764437;'),
('9jvt6bfu7olgph5nsnndpdmbcan1ovuo', '::1', '', 1595764331, '__ci_last_regenerate|i:1595764331;'),
('5avsgk3dv0ml9mquq4rml8su4c2nha10', '::1', '', 1595764308, '__ci_last_regenerate|i:1595764308;'),
('r6qop9fqo5n0gkgl6tu82gaue5k7eirf', '::1', '', 1595764300, '__ci_last_regenerate|i:1595764300;user_id|s:1:"1";is_logged_in|b:1;mandatory_purchase|N;'),
('m90qem1pq63rm1vj6v9880gshqdm1he2', '::1', '', 1595764208, '__ci_last_regenerate|i:1595764208;'),
('oggbknba12bdlg1m656btbogsftecj1s', '::1', '', 1595764193, '__ci_last_regenerate|i:1595764193;'),
('lar3uaju27kbkc2bnd9k4p5esjscrtdl', '::1', '', 1595764101, '__ci_last_regenerate|i:1595764101;'),
('bvr1ndm6p9klinig29k4lqej0sqiqg7l', '::1', '', 1595764084, '__ci_last_regenerate|i:1595764084;'),
('qvohe4qsb9ooh29ahrsn5u00r691pv6q', '::1', '', 1595764071, '__ci_last_regenerate|i:1595764071;'),
('1tq8pl78m638n5l9397f59jkk7ue68ln', '::1', '', 1595763925, '__ci_last_regenerate|i:1595763925;'),
('ekr78eo7o3du3ennsouso33908a5v4tq', '::1', '', 1595763768, '__ci_last_regenerate|i:1595763768;'),
('3392g5sqqa0s8qs77bdmfrujd2s4bbou', '::1', '', 1595763752, '__ci_last_regenerate|i:1595763752;'),
('vmudgrqkua4fus5inu7cpvcbc9d7e8q1', '::1', '', 1595763200, '__ci_last_regenerate|i:1595763200;'),
('5ohke2br0lct3h2n48mj5cvj8s964osv', '::1', '', 1595762938, '__ci_last_regenerate|i:1595762937;'),
('pup2i9214v9d0fkleblj3d8ctf7tqm0j', '::1', '', 1595762523, '__ci_last_regenerate|i:1595762522;'),
('5lgbaqef6mj0cpcav3uuv2bg8vejs788', '127.0.0.1', '', 1595711958, '__ci_last_regenerate|i:1595711958;'),
('jn0dpjc5ga4tv4i3jk57nfhksdaunva8', '127.0.0.1', '', 1595711927, '__ci_last_regenerate|i:1595711927;'),
('23blgiiojrpllt63n80tt8hu6qie0f3u', '127.0.0.1', '', 1595711871, '__ci_last_regenerate|i:1595711871;'),
('8jc7dfhldgv7488iebj9gpmpq93ll9kc', '127.0.0.1', '', 1595711868, '__ci_last_regenerate|i:1595711868;'),
('3kp997g4d2qmp947r4d8028b699v4co0', '127.0.0.1', '', 1595711765, '__ci_last_regenerate|i:1595711765;'),
('nksm3vk05t3d3rn0rtrj9pleanenrhpf', '127.0.0.1', '', 1595711746, '__ci_last_regenerate|i:1595711744;'),
('mv31muqah2mb5a0lboujl5dk4kh91k0k', '127.0.0.1', '', 1595711732, '__ci_last_regenerate|i:1595711732;'),
('m0dsb0l1efu1io4e9df53eubqq1k8n83', '127.0.0.1', '', 1595711703, '__ci_last_regenerate|i:1595711702;'),
('htg1cng5ranhgdac5b58s351shcms7r3', '::1', '', 1595711392, '__ci_last_regenerate|i:1595711392;'),
('b2ohl49giakc5pjg5fn55qauonoqa47r', '::1', '', 1595711384, '__ci_last_regenerate|i:1595711384;'),
('q83pv41tnfddm78haecbnovggbodt9u4', '::1', '', 1595711248, '__ci_last_regenerate|i:1595711248;'),
('58sq63hgksd16bfdnpg6k87pih5pk924', '::1', '', 1595711182, '__ci_last_regenerate|i:1595711182;'),
('c0i3f3mfrhd1u5bo0k54v16lo302lh72', '::1', '', 1595711174, '__ci_last_regenerate|i:1595711174;'),
('v0o5650p8qa24o19rhf8nibg1s3fd8q2', '::1', '', 1595710639, '__ci_last_regenerate|i:1595710639;'),
('18se1eco1fpkbbm5varnj4cn5m390mqg', '::1', '', 1595710601, '__ci_last_regenerate|i:1595710601;'),
('979b15gj27alo3j8bise8cjtlt5no54a', '::1', '', 1595710527, '__ci_last_regenerate|i:1595710526;'),
('ra22gjt8bl1l9o2e1d8o9q4gctqcdt37', '::1', '', 1595709303, '__ci_last_regenerate|i:1595709088;'),
('ukbk9e6aem65151fl279v9dsh5svasqv', '::1', '', 1595695378, '__ci_last_regenerate|i:1595695378;'),
('68q45jna5k9dg92tdp82i1mm59as924b', '::1', '', 1595695006, '__ci_last_regenerate|i:1595695006;'),
('6bcqkdp5d2sk6hjdlr6k86ec781bq9nr', '127.0.0.1', '', 1595694973, '__ci_last_regenerate|i:1595694973;'),
('mehh52u7jn8s016nv6o2rpl3dd9tuhb2', '::1', '', 1595693818, '__ci_last_regenerate|i:1595693804;'),
('q3lgtn3dglo767nc23i465oi1bps9s01', '::1', '', 1595692711, '__ci_last_regenerate|i:1595692711;'),
('eimubtgraonr2da647qdrt3br2p9fgar', '127.0.0.1', '', 1595692711, '__ci_last_regenerate|i:1595692711;'),
('kvl1o4vemvauli9v5aaasjl49jesvcl9', '::1', '', 1595692701, '__ci_last_regenerate|i:1595692701;'),
('tih6a8rps2g1rruskc3scpphddj5a5dg', '127.0.0.1', '', 1595692699, '__ci_last_regenerate|i:1595692699;'),
('2cav0a335cf4idsa3pmthnbspfeap5ng', '::1', '', 1595692643, '__ci_last_regenerate|i:1595692643;'),
('5n3ahgqdgqu6k3mgofa35hi5q0ago5fg', '127.0.0.1', '', 1595692462, '__ci_last_regenerate|i:1595692461;'),
('tsb49n0bkojg1tqqmp0gn6dl9m5cmkc1', '::1', '', 1595692462, '__ci_last_regenerate|i:1595692461;'),
('9c6mq89pjle978k1699am7qq8073t8um', '::1', '', 1595689160, '__ci_last_regenerate|i:1595689160;'),
('6ntde8p2a46ipehi73smkbh1o9d2lrbv', '::1', '', 1595689157, '__ci_last_regenerate|i:1595689157;'),
('8ome66n4e1a9fn3vi6s3kh5g9abnbctc', '::1', '', 1595688234, '__ci_last_regenerate|i:1595688234;'),
('avhvocajfa97ljc7qfoj196qqkv69uks', '::1', '', 1595688218, '__ci_last_regenerate|i:1595688218;'),
('5uusk921gmr9it4nfno5sm8uogeqriug', '::1', '', 1595688217, '__ci_last_regenerate|i:1595688217;'),
('ukkjb7c1cchv8t5jsec0pjiuouvopf14', '::1', '', 1595688208, '__ci_last_regenerate|i:1595688208;'),
('01t57i4p11feku6s0rp840a7afdpq9vj', '::1', '', 1595688196, '__ci_last_regenerate|i:1595688193;'),
('7eb78oklc0ceeunh27ipf79b9jmvqgta', '::1', '', 1595688196, '__ci_last_regenerate|i:1595688193;'),
('rmvm8g9bprvdjkcuus36guuuhub7ofgj', '::1', '', 1595617201, '__ci_last_regenerate|i:1595617201;'),
('4vdn3acj0b2da9sb1gbokf2aad93jdeg', '::1', '', 1595617193, '__ci_last_regenerate|i:1595617193;'),
('qj0lf59pcqd3uqhfheubp9v47d339j38', '::1', '', 1595615924, '__ci_last_regenerate|i:1595615924;'),
('joelgmgn9vrdqkgdmg9p1h77i3r9ddrv', '::1', '', 1595615917, '__ci_last_regenerate|i:1595615917;'),
('etgae9d02g13o10aemlbdnj3ku2h9cgr', '::1', '', 1595615889, '__ci_last_regenerate|i:1595615889;'),
('mqpl2cnp8h4foarq0rv986m9lk6o5pgr', '::1', '', 1595615886, '__ci_last_regenerate|i:1595615885;'),
('nlcnfjia7rak3irfpu4jav6oaf8hh3a4', '::1', '', 1595615878, '__ci_last_regenerate|i:1595615877;'),
('brmkuer4emcami1ae817obhmo3ap7ki0', '::1', '', 1595615860, '__ci_last_regenerate|i:1595615860;'),
('cr0aam4f3pa398lce57mk6jorps03p8d', '::1', '', 1595615854, '__ci_last_regenerate|i:1595615854;'),
('92eh7dqidl9i9qv7p5vjcpgdq0apjofk', '::1', '', 1595615848, '__ci_last_regenerate|i:1595615848;'),
('spa2e86a9quqoh9qv7fikmi0gugkc8k9', '::1', '', 1595615843, '__ci_last_regenerate|i:1595615843;'),
('4k8atacu92ig13els7jk400o6t5qb4ik', '::1', '', 1595615225, '__ci_last_regenerate|i:1595615225;'),
('s70eaoog3hjg6u1jlcutngbcerosahop', '::1', '', 1595615216, '__ci_last_regenerate|i:1595615216;'),
('4abpcqma44rc9roadqnfmcdstf1spi2f', '::1', '', 1595615206, '__ci_last_regenerate|i:1595615206;'),
('ffllbsuma47559r9rfbu4ktifubkd4n4', '::1', '', 1595615198, '__ci_last_regenerate|i:1595615198;'),
('1lm0shho1gv88mjj1s3fmg3hk6hf5uc5', '::1', '', 1595615195, '__ci_last_regenerate|i:1595615195;'),
('irivcfovr8uai40fln2ch52t053jpj85', '::1', '', 1595615116, '__ci_last_regenerate|i:1595615116;'),
('qbg35n315p2ujjp4tvt9mbt1k744hri3', '::1', '', 1595615111, '__ci_last_regenerate|i:1595615111;'),
('ids4knatoi5vjthvm648rhklqm45l1dm', '::1', '', 1595607963, '__ci_last_regenerate|i:1595607963;'),
('oft0da67vm10r82e49001sfakjo7ba3f', '::1', '', 1595607982, '__ci_last_regenerate|i:1595607982;'),
('d6dqv926skcb98vocj5l9skbrnsa5h6t', '::1', '', 1595608103, '__ci_last_regenerate|i:1595608103;'),
('of8b3m7s5lksfh444vs9bcv41og5s902', '::1', '', 1595608116, '__ci_last_regenerate|i:1595608116;'),
('4abfemlssm1oovh2rnlv2irurcjfpuvk', '::1', '', 1595608125, '__ci_last_regenerate|i:1595608125;'),
('r7r8qppmgl89tlbd3u23p30gq811djg2', '::1', '', 1595608132, '__ci_last_regenerate|i:1595608132;'),
('0vbe4dgqhrsi9nqh78igu0agqsakg01s', '::1', '', 1595608174, '__ci_last_regenerate|i:1595608174;'),
('92o7h1dg94k81v3al90kouhj68f26cj4', '::1', '', 1595608186, '__ci_last_regenerate|i:1595608186;'),
('s4vbapff88d2st5jqe8gj14743jtknqg', '::1', '', 1595608191, '__ci_last_regenerate|i:1595608191;'),
('vc3d9s8g77tbvqo5pss31mggiu3srvf9', '::1', '', 1595608216, '__ci_last_regenerate|i:1595608216;'),
('eqbfa1q744sk91b4u1tjk05m7pk7lo8h', '::1', '', 1595608240, '__ci_last_regenerate|i:1595608240;'),
('dp94n7t33n1t72n1f9a0a2eqdge4dvv2', '::1', '', 1595608252, '__ci_last_regenerate|i:1595608251;'),
('4ol2v9ve5tkigh3kh3e3eft5p7djleaq', '::1', '', 1595608254, '__ci_last_regenerate|i:1595608254;'),
('qlu4pva3l84tq9uog5je1j41jmrohajr', '::1', '', 1595608276, '__ci_last_regenerate|i:1595608276;'),
('gd5nfiatsv0dqvmuf28h3v7eceuci2tq', '::1', '', 1595608298, '__ci_last_regenerate|i:1595608298;'),
('ks6b90d1ivn5ikkdta94pcmrog9j3eni', '::1', '', 1595608301, '__ci_last_regenerate|i:1595608301;'),
('sqq861e10hcid0nmrtgou2q2hcpmtmgj', '::1', '', 1595608305, '__ci_last_regenerate|i:1595608305;'),
('ptispelt9ceaq27v6qkg6e11sb9c0ucf', '::1', '', 1595608361, '__ci_last_regenerate|i:1595608361;'),
('u4783dprvuhh1io6mub7bb8kie28nd9b', '::1', '', 1595608423, '__ci_last_regenerate|i:1595608423;'),
('p8k9csru9mna2il1u10joal628ia1hvh', '::1', '', 1595608445, '__ci_last_regenerate|i:1595608445;'),
('eimc05oglj4dqabtqfdohgoi8c25q6oq', '::1', '', 1595608451, '__ci_last_regenerate|i:1595608451;'),
('jll5e9b43ekqqji7darmpmb1n4hibt2v', '::1', '', 1595608538, '__ci_last_regenerate|i:1595608537;'),
('f60udueq1kbap6bvpgml7m2qblrd82ee', '::1', '', 1595608542, '__ci_last_regenerate|i:1595608542;'),
('cmprb9112ch3upbtg8hks7pdf3v681k9', '::1', '', 1595608614, '__ci_last_regenerate|i:1595608614;'),
('7770v9c142mj517i7psrv8o70moue5fu', '::1', '', 1595608617, '__ci_last_regenerate|i:1595608616;'),
('u8snblb8nitud64t8ss84121imp0e0oa', '::1', '', 1595608919, '__ci_last_regenerate|i:1595608919;'),
('1mqt07d3k9e7kagtguivlh32lee4d2du', '::1', '', 1595608935, '__ci_last_regenerate|i:1595608935;'),
('pir2er1sk3lumpdv7j8d2kjk2iu6una0', '::1', '', 1595609033, '__ci_last_regenerate|i:1595609033;'),
('q3pdaum8vn011b9ujuv0krt2djlr22h0', '::1', '', 1595609037, '__ci_last_regenerate|i:1595609037;'),
('7peps726mqcn4l44o21ooii2k1ls7n0f', '::1', '', 1595609040, '__ci_last_regenerate|i:1595609040;'),
('ormc5runrjuotg6e2dpd9hhh686ro506', '::1', '', 1595609081, '__ci_last_regenerate|i:1595609081;'),
('gnif7ufc0mt61ddonpn68mnquiu25g82', '::1', '', 1595609086, '__ci_last_regenerate|i:1595609086;'),
('r9e2km99abo9qfl3l8iu1kdps9rorndl', '::1', '', 1595609088, '__ci_last_regenerate|i:1595609088;'),
('khanlsdkttcpjul1bqrpm8tjlfs8d8g0', '::1', '', 1595609089, '__ci_last_regenerate|i:1595609089;'),
('6okoh7an7blbsirne6u7n79nl8470d96', '::1', '', 1595609091, '__ci_last_regenerate|i:1595609091;'),
('hg8ctea0vnao2fdun15j50aol41e7vuk', '::1', '', 1595609106, '__ci_last_regenerate|i:1595609106;'),
('uq2ho47ccsm63a9cseouaooebqtkb9f7', '::1', '', 1595609335, '__ci_last_regenerate|i:1595609335;'),
('h61mhu8u6p9td1eb41o626709ie8a88g', '::1', '', 1595609338, '__ci_last_regenerate|i:1595609338;'),
('uq1nf43fo5nm2bm95ou8hejqu733nosh', '::1', '', 1595609345, '__ci_last_regenerate|i:1595609345;'),
('ljni297d0kcdsapg4qcj7510t3nnqdc1', '::1', '', 1595609356, '__ci_last_regenerate|i:1595609356;'),
('fjoisftaf59denigasgud810hha6vp22', '::1', '', 1595609362, '__ci_last_regenerate|i:1595609362;'),
('p0s3tk7m3nfffok79s40m8gpu2b1ghqg', '::1', '', 1595609380, '__ci_last_regenerate|i:1595609380;'),
('5bu4iq5mq9sq8aundjku6fek95ipkf09', '::1', '', 1595609394, '__ci_last_regenerate|i:1595609394;'),
('1s8sklbmngb8ojmvl33guo6chdng619r', '::1', '', 1595609404, '__ci_last_regenerate|i:1595609404;'),
('3lt2ioer9ts64gpfr17iedlted2ci67c', '::1', '', 1595609408, '__ci_last_regenerate|i:1595609408;'),
('1j0bmimm8gb47r29ev5rk1cb4b4s6kq4', '::1', '', 1595609425, '__ci_last_regenerate|i:1595609425;'),
('apd4hf48lgev7u9v4d175ovfqjsf0kn6', '::1', '', 1595609437, '__ci_last_regenerate|i:1595609437;'),
('4jesb3mqum5o15mc7lvum15o6igoqk12', '::1', '', 1595609441, '__ci_last_regenerate|i:1595609441;'),
('a9f7jcj2nfd0oe1ufudgqghg7kc0sugp', '::1', '', 1595609518, '__ci_last_regenerate|i:1595609518;'),
('cmsd57f1548lvfrr28ni67o0nk6r8sgq', '::1', '', 1595609574, '__ci_last_regenerate|i:1595609574;'),
('4pe3g240tor1kp2k0prm6ok9sbljctu5', '::1', '', 1595609600, '__ci_last_regenerate|i:1595609600;'),
('3r6cl2ikonsh9ggbn8tguskqdcjqceu3', '::1', '', 1595609615, '__ci_last_regenerate|i:1595609615;'),
('61nqn01ldlnrpkalif3a7lgc1fl81r81', '::1', '', 1595609634, '__ci_last_regenerate|i:1595609634;'),
('l3rs9g6r41cn6drr88eufhffbcjgvuhm', '::1', '', 1595609648, '__ci_last_regenerate|i:1595609648;'),
('8mkh0vqetb55robftk05t04fvkmklhs9', '::1', '', 1595609658, '__ci_last_regenerate|i:1595609658;'),
('4kdoj0kfb1th187g0tgm30jlik45s6q8', '::1', '', 1595609674, '__ci_last_regenerate|i:1595609674;'),
('83vtmvhe3g0load4s6phdavufi3f7r9n', '::1', '', 1595609678, '__ci_last_regenerate|i:1595609678;'),
('48ies5jkqde2d491insmpktg9gcttt2v', '::1', '', 1595609699, '__ci_last_regenerate|i:1595609699;'),
('p684ttgrj5oppemd5nli9l6m2putip5i', '::1', '', 1595609708, '__ci_last_regenerate|i:1595609708;'),
('9sjgpje9jtpcrc4v156itsce3cut22sq', '::1', '', 1595609753, '__ci_last_regenerate|i:1595609732;'),
('078c993qoirj5rjfp94isojvu6mqo8mo', '::1', '', 1595610035, '__ci_last_regenerate|i:1595610035;'),
('313nk2vql4c5erif7p6fcgk54osqd7ne', '::1', '', 1595610045, '__ci_last_regenerate|i:1595610045;'),
('vaqs30tltth8n68bqg950halhqmvusbs', '::1', '', 1595610056, '__ci_last_regenerate|i:1595610055;'),
('bmu7q0oii57274v5ikt585v91n09v7os', '::1', '', 1595610058, '__ci_last_regenerate|i:1595610058;'),
('rrogmko13g1kd8cm9kkc3s6n778jplkg', '::1', '', 1595610059, '__ci_last_regenerate|i:1595610059;'),
('5mupl91lv0j9e4jodd9l6a485qagu5qt', '::1', '', 1595610059, '__ci_last_regenerate|i:1595610059;'),
('lk5t9nofjk5th6n97coia0k1qcbf5dvi', '::1', '', 1595610906, '__ci_last_regenerate|i:1595610906;'),
('k2b3irlou6iiuu2v9gnholbflnbglvjq', '::1', '', 1595610907, '__ci_last_regenerate|i:1595610907;'),
('8qs85nbqe62grjbgm2a1bbpgt2pgsipi', '::1', '', 1595610913, '__ci_last_regenerate|i:1595610913;'),
('87db28uh2349n0tj44h5o6bpp6aifjmm', '::1', '', 1595610915, '__ci_last_regenerate|i:1595610915;'),
('v0v72b0fqh291ctsvaolpo9ddstmqmlb', '::1', '', 1595610926, '__ci_last_regenerate|i:1595610926;'),
('erevdir2vk671rg908nilq90ar2s0s6m', '::1', '', 1595610929, '__ci_last_regenerate|i:1595610929;'),
('slou6lvj96b4adapnotdqsgf3ekn7920', '::1', '', 1595610933, '__ci_last_regenerate|i:1595610933;'),
('2d2jc1s0h46io7i9njussmanujtngbma', '::1', '', 1595610936, '__ci_last_regenerate|i:1595610936;'),
('76qav83ilv3q4tpe4vo4daead3cv12fu', '::1', '', 1595610941, '__ci_last_regenerate|i:1595610941;'),
('nk394orktj28iig30u90eb0oj9j5b17h', '::1', '', 1595611021, '__ci_last_regenerate|i:1595611021;'),
('7bmsa59vmvej6u1jcfmkrr4sgq1a0tdr', '::1', '', 1595611023, '__ci_last_regenerate|i:1595611023;'),
('gnl1hqe16mhse18b8ds2jhou6b5n106v', '::1', '', 1595611068, '__ci_last_regenerate|i:1595611068;'),
('jpj8gv2ua09h4mpn4h9aod8lli3ofjaj', '::1', '', 1595611073, '__ci_last_regenerate|i:1595611073;'),
('gbo71g56852s4rrvijob95lmgoo2758r', '::1', '', 1595611076, '__ci_last_regenerate|i:1595611076;'),
('0ioc33odkbbuffpkrji3anhf37nodsf8', '::1', '', 1595611219, '__ci_last_regenerate|i:1595611108;'),
('okbaftqa3sjaeiqckd85nrarb0s241sa', '::1', '', 1595611171, '__ci_last_regenerate|i:1595611171;'),
('gqnqkm9dk8molv5srk6918ebui58upoj', '::1', '', 1595611173, '__ci_last_regenerate|i:1595611173;'),
('nl90ukik4sre8i2dtcu2ct1aksu68j1s', '::1', '', 1595611175, '__ci_last_regenerate|i:1595611175;'),
('ssnsafff2porj63mus458d44vjein1rp', '::1', '', 1595611180, '__ci_last_regenerate|i:1595611180;'),
('24fbvdijokordn3qs16vggcqqhge6d99', '::1', '', 1595611225, '__ci_last_regenerate|i:1595611225;'),
('1t3bdfc3qihbu58r88csla27aoq2eucr', '::1', '', 1595611235, '__ci_last_regenerate|i:1595611235;'),
('56lee5bria0u7capq6mf30mdss2fgpm1', '::1', '', 1595611238, '__ci_last_regenerate|i:1595611238;'),
('942iseb2luat58l2flhke2tv0dftji6d', '::1', '', 1595611261, '__ci_last_regenerate|i:1595611261;'),
('fa2dgf2l1bme8ae47okmstja8qpt71v7', '::1', '', 1595611263, '__ci_last_regenerate|i:1595611263;'),
('nuvlt8tjjtsgnkvh14g8rsl5ei2f8n61', '::1', '', 1595611882, '__ci_last_regenerate|i:1595611882;'),
('d57d9815fcbtjtd87ptk33mgdmamuv9v', '::1', '', 1595611891, '__ci_last_regenerate|i:1595611891;'),
('lh7sqjdqh6k4frh4iufsebni3phmlu9o', '::1', '', 1595611894, '__ci_last_regenerate|i:1595611894;'),
('egeuk3rlmholk3cpp6n4ed83n2pv5mfe', '::1', '', 1595612457, '__ci_last_regenerate|i:1595612456;'),
('1bmhj1k8pjbonbtjuc7gj755m7m95h72', '::1', '', 1595612461, '__ci_last_regenerate|i:1595612461;'),
('ltcb3g4tk75jkhotgugaio3vv0fr2ts8', '::1', '', 1595612491, '__ci_last_regenerate|i:1595612491;'),
('fttn51p9bq4vi3paqpddg1f2v1q8gur9', '::1', '', 1595612496, '__ci_last_regenerate|i:1595612496;'),
('qrkiibocgpqm6d80m3l6kkl3u61f0bk7', '::1', '', 1595612703, '__ci_last_regenerate|i:1595612619;'),
('gmr6v0qnbqvkc9sn98tcps3ovlf70fhd', '::1', '', 1595612707, '__ci_last_regenerate|i:1595612707;'),
('d5n6dj80ed8l2g2d5s4vkpa21gd2p4i2', '::1', '', 1595612709, '__ci_last_regenerate|i:1595612709;'),
('g09lnscm8aeu32qsr3sb8o278ce8eboq', '::1', '', 1595613316, '__ci_last_regenerate|i:1595613316;'),
('a5i3d5ffpct0k72oo3m12rm9o0mlq1lr', '::1', '', 1595613321, '__ci_last_regenerate|i:1595613321;'),
('698nh4dh6cn0k5fb80lb867ek410ahvq', '::1', '', 1595613328, '__ci_last_regenerate|i:1595613328;'),
('s2jrfirt7hm52r83uafo7pp4p9ivg85v', '::1', '', 1595613335, '__ci_last_regenerate|i:1595613335;'),
('r85ol5kt4q3p9fnm4cskp0nf534ircj3', '::1', '', 1595613339, '__ci_last_regenerate|i:1595613339;'),
('1af5neqmtu2aljtae8fgg2rlf54u5g72', '::1', '', 1595613352, '__ci_last_regenerate|i:1595613352;'),
('n8upngr4ej9p9srhvqe48cmvjk968n5m', '::1', '', 1595613359, '__ci_last_regenerate|i:1595613359;'),
('86ig3vm0bmgdtohrklgmph1kine36krc', '::1', '', 1595613361, '__ci_last_regenerate|i:1595613361;'),
('iqpjcpuighi85oroqgakv7o9h5pli5r2', '::1', '', 1595613469, '__ci_last_regenerate|i:1595613469;'),
('c8t52p9npcg08ktkcgl5euqdpu8n9knn', '::1', '', 1595613555, '__ci_last_regenerate|i:1595613555;'),
('91gho0e21b6s1s6dv8ser8fq4ibu0v1q', '::1', '', 1595613563, '__ci_last_regenerate|i:1595613563;'),
('mtofejskk02tce7hphenmiea6v8u53kl', '::1', '', 1595613581, '__ci_last_regenerate|i:1595613581;'),
('me4u94ves5npfdpjm40ki8t487kmulu4', '::1', '', 1595613649, '__ci_last_regenerate|i:1595613649;'),
('84c25a6upd5lbsvn5shhejv9l1ocbvmp', '::1', '', 1595613653, '__ci_last_regenerate|i:1595613653;'),
('keru5l8030ohkftrh9f6m8bfd0ec0sh1', '::1', '', 1595613658, '__ci_last_regenerate|i:1595613658;'),
('iujcbhmumpv3bg9lqj982070igk261jn', '::1', '', 1595614429, '__ci_last_regenerate|i:1595614429;'),
('kk0ki58h7bsquchj7s5b8kp6ctin8s9d', '::1', '', 1595614434, '__ci_last_regenerate|i:1595614434;'),
('n2kr48hoivopbv6s4kfol09lhlmnf1k9', '::1', '', 1595614441, '__ci_last_regenerate|i:1595614441;'),
('u45s15hthis25o23ah832dh7k9l6l114', '::1', '', 1595614529, '__ci_last_regenerate|i:1595614529;'),
('d77gputfgni56drdtnemei0d5kvk9h30', '::1', '', 1595614558, '__ci_last_regenerate|i:1595614558;'),
('avodjgmr1lrvmj06gfesncu171sro7bt', '::1', '', 1595614560, '__ci_last_regenerate|i:1595614560;'),
('6decko5rcrfv1r2q3ta7mjmsspamfmgc', '::1', '', 1595614656, '__ci_last_regenerate|i:1595614656;'),
('npskrdffae5d8pantfrbljgkk1smpt31', '::1', '', 1595614705, '__ci_last_regenerate|i:1595614705;'),
('jodufiu0i6bvh9movlongcbdv9kho5vj', '::1', '', 1595614708, '__ci_last_regenerate|i:1595614708;'),
('5ece2jsg92r0rq73omkbjslg2fhpse3b', '::1', '', 1595614758, '__ci_last_regenerate|i:1595614758;'),
('tgo9t3ehfe34bies8s5mqgafr2k136qr', '::1', '', 1595614766, '__ci_last_regenerate|i:1595614766;'),
('8da7sqsnhv4c4eo7n7racgcmj11gdila', '::1', '', 1595614769, '__ci_last_regenerate|i:1595614769;'),
('fvp5dm2e5eav63jq8ge0a1gd6bpcmpec', '::1', '', 1595614817, '__ci_last_regenerate|i:1595614817;'),
('6e23lb2eq23uvg5675qa0k8udhh07mbp', '::1', '', 1595614819, '__ci_last_regenerate|i:1595614819;'),
('2df774ng2tuh32ofa9dm7pmc4gcomdrv', '::1', '', 1595614834, '__ci_last_regenerate|i:1595614834;'),
('a4tlh8npbritj8jmd5adul4ln0qdpbds', '::1', '', 1595614841, '__ci_last_regenerate|i:1595614841;'),
('4p7dbu96fqhn4mv891741dji8hhk4gag', '::1', '', 1595614843, '__ci_last_regenerate|i:1595614843;'),
('88qj8o6b0fskv05c1afsalouo0188c8l', '::1', '', 1595614851, '__ci_last_regenerate|i:1595614851;'),
('cfmuvtjgrshbjjhkfuihfj059snrggu4', '::1', '', 1595614863, '__ci_last_regenerate|i:1595614863;'),
('1rkuhtp76u0bpt30p6sm2367vcve1svg', '::1', '', 1595614884, '__ci_last_regenerate|i:1595614884;'),
('7u67o5ucr60ah8lp5a4mgpp1sv2ugu6f', '::1', '', 1595614887, '__ci_last_regenerate|i:1595614887;'),
('mc7eddl8rddl77the1a429dq1i5ihviu', '::1', '', 1595614900, '__ci_last_regenerate|i:1595614900;'),
('jb9hhntob10psg6pdvcma36dui9kr3ae', '::1', '', 1595614905, '__ci_last_regenerate|i:1595614905;'),
('hmsa5j9flhrgh2dndl7ibbc0kbsv9v93', '::1', '', 1595614919, '__ci_last_regenerate|i:1595614919;'),
('hoiv8275rtpptsd0b4b19idri1v67hdv', '::1', '', 1595614928, '__ci_last_regenerate|i:1595614928;'),
('i145f215i2bser2mujqnpl6l345fr11n', '::1', '', 1595614950, '__ci_last_regenerate|i:1595614950;'),
('r17frn59cig58feo8nf83ui32ssv4cqk', '::1', '', 1595615013, '__ci_last_regenerate|i:1595615013;'),
('t3b27s6vrhs9556a5pa12mevi3nt5bph', '::1', '', 1595615029, '__ci_last_regenerate|i:1595615029;'),
('qmm5q4e7qm3rfn7q73kl91ar2e58c2hc', '::1', '', 1595615056, '__ci_last_regenerate|i:1595615056;'),
('p7tia70dql4vh9fvp1agt4n9ogrttrau', '::1', '', 1595615059, '__ci_last_regenerate|i:1595615059;'),
('8nkl7455ou6ghkrus0oukk3djkv7ud8e', '::1', '', 1595615071, '__ci_last_regenerate|i:1595615071;'),
('fhu2bpeoa9rr84ic972cunnjnlvmbh4f', '::1', '', 1595615074, '__ci_last_regenerate|i:1595615074;'),
('q7d2tagajj98nfsu0ccg97jgeam1tlq4', '::1', '', 1595615103, '__ci_last_regenerate|i:1595615103;'),
('ed1912u17r2rjkce5n0snbgsgaumhtbm', '::1', '', 1595615105, '__ci_last_regenerate|i:1595615105;'),
('2dtlu3hakd5n0kh0alsdp340llpg7lk7', '::1', '', 1596474444, '__ci_last_regenerate|i:1596474444;'),
('hqc5jsqdo3o3f5it5lfp7auvuveglg18', '::1', '', 1596474448, '__ci_last_regenerate|i:1596474448;'),
('r632f9d7vttub83vj8c1dp2g6qcaeifm', '::1', '', 1596474469, '__ci_last_regenerate|i:1596474469;'),
('rl9kh9r02e4dgb8f2n9gglf5vts582hf', '::1', '', 1596474553, '__ci_last_regenerate|i:1596474553;'),
('i7jtl0ttotijrnpdlllovi9t3qued7q0', '::1', '', 1596474556, '__ci_last_regenerate|i:1596474556;'),
('tsdm8lc7rt9s0rbhml5m2nfu9kuvh6r9', '::1', '', 1596474762, '__ci_last_regenerate|i:1596474762;'),
('1vslkl3inu42ra81al8vj67vi0hv2oul', '::1', '', 1596474872, '__ci_last_regenerate|i:1596474872;'),
('86lvp66o5ioncu1918d2k2ne6g9f1k3g', '::1', '', 1596475228, '__ci_last_regenerate|i:1596475228;'),
('tvig1h9il6cfcgcmbqono73b9a9rek7p', '::1', '', 1596475438, '__ci_last_regenerate|i:1596475438;'),
('6sfuctrbl65nneij3ar5nue5474f6p2i', '::1', '', 1596475494, '__ci_last_regenerate|i:1596475494;'),
('qijie4hd9l4t26lq0vsvefeo3riedhcu', '::1', '', 1596475498, '__ci_last_regenerate|i:1596475498;'),
('dtfr1cvpmndr32s5q166vif9moi2mpaq', '::1', '', 1596481234, '__ci_last_regenerate|i:1596481234;'),
('l6c6fqr2j5nc7umq5lrfh5cq73be730i', '::1', '', 1596481245, '__ci_last_regenerate|i:1596481245;'),
('melqg1fd8brghcirn7pkmlutaohvjuni', '::1', '', 1596481866, '__ci_last_regenerate|i:1596481866;'),
('pl0kk7ejr3pu36cvqqisdpf5j9spuqjk', '::1', '', 1596481887, '__ci_last_regenerate|i:1596481887;'),
('e9hb7m20djiqajm0d58m8r7p3me6lv0e', '::1', '', 1596481991, '__ci_last_regenerate|i:1596481991;'),
('h4q12lvt509t1abc434pn2ghkvr64qql', '::1', '', 1596552173, '__ci_last_regenerate|i:1596552172;'),
('oh4e6jobl0bi0pgug11trhvb431bj1sp', '::1', '', 1596552796, '__ci_last_regenerate|i:1596552790;'),
('ujp08fn8davkitbeq27qfi4ph6ljdriu', '127.0.0.1', '', 1596555217, '__ci_last_regenerate|i:1596555216;'),
('4a4m1oaem4l4r3s308ojej6mp9f0atp7', '::1', '', 1596555218, '__ci_last_regenerate|i:1596555218;'),
('hb6klon7te5735tv94uuir0rl4tn7m2v', '127.0.0.1', '', 1596555231, '__ci_last_regenerate|i:1596555231;'),
('ks48gaea6s1di95fd6allrq6r4ivbuk3', '::1', '', 1596555231, '__ci_last_regenerate|i:1596555231;'),
('mloift3h096dvlfar4l7updj3ab55ci3', '::1', '', 1596557105, '__ci_last_regenerate|i:1596557105;'),
('knf2k0g5208sahne3tq8dotmdi1rb011', '127.0.0.1', '', 1596557106, '__ci_last_regenerate|i:1596557106;'),
('p0b0j9actuqg71c99b87j1u4sgig2did', '127.0.0.1', '', 1596558106, '__ci_last_regenerate|i:1596558106;'),
('rqa31eqc4rd6ncivtk1i39s1e7ggp6gd', '::1', '', 1596558106, '__ci_last_regenerate|i:1596558105;'),
('fk73ae9hsijl9dbekd1qro9uep951umh', '127.0.0.1', '', 1596558949, '__ci_last_regenerate|i:1596558949;'),
('huhae1qkf465m8h2e6dtfdk6poi1vrpt', '::1', '', 1596558949, '__ci_last_regenerate|i:1596558949;'),
('j7dcn3aq62qq0ia6pin32paup79jldn8', '127.0.0.1', '', 1596559039, '__ci_last_regenerate|i:1596559039;'),
('ev9ioucsbp974t2ep14est7e043nvpgv', '::1', '', 1596559039, '__ci_last_regenerate|i:1596559039;'),
('4c5ln149mqijtk33hv6c82fqef5ju9hc', '::1', '', 1596559236, '__ci_last_regenerate|i:1596559236;'),
('29t0hbg7b24s2e78duc15e5bckj52dc3', '127.0.0.1', '', 1596559237, '__ci_last_regenerate|i:1596559237;'),
('pta3bruub4uqfqdhaclf0gta3bpq84mg', '127.0.0.1', '', 1596559351, '__ci_last_regenerate|i:1596559351;'),
('1l46gr3mlnap2a3cqrr3oto2ihl6t9jq', '::1', '', 1596559351, '__ci_last_regenerate|i:1596559351;'),
('pp1ufp6rfovmem66tnch411jvr952265', '127.0.0.1', '', 1596559372, '__ci_last_regenerate|i:1596559372;'),
('2ac6r5f0e0c6sllaci03goevedkg6016', '::1', '', 1596559373, '__ci_last_regenerate|i:1596559373;'),
('0e47vihfio44ihns02ter3doc5t9c475', '127.0.0.1', '', 1596559384, '__ci_last_regenerate|i:1596559384;'),
('dk1ai4aobjqtiq9mcetjs7audj7fkk98', '::1', '', 1596559385, '__ci_last_regenerate|i:1596559385;'),
('mhhd3nqd03615vvn8grfmmug40ireh4t', '127.0.0.1', '', 1596559402, '__ci_last_regenerate|i:1596559402;'),
('rgm5a861bvgg5vqhq44iogn9tgv98t1r', '::1', '', 1596559402, '__ci_last_regenerate|i:1596559402;'),
('1da27hrbqap0f7nq9epsu7gkm8qrk8ub', '127.0.0.1', '', 1596559408, '__ci_last_regenerate|i:1596559408;'),
('ads86n2m8oktnbqjoml617bq2mvu00tf', '::1', '', 1596559408, '__ci_last_regenerate|i:1596559408;'),
('vf7n2umjcpfufu592b5e6ujklg8otff7', '127.0.0.1', '', 1596559676, '__ci_last_regenerate|i:1596559676;'),
('503duie1q89qjhs5d5knv2lsnb028ald', '::1', '', 1596559676, '__ci_last_regenerate|i:1596559676;'),
('lral33gcpgjg3nbhbbeqbt04mndr47ut', '127.0.0.1', '', 1596559755, '__ci_last_regenerate|i:1596559755;'),
('tulf0f7vopn6ddskuoj079j5s00t6nkp', '::1', '', 1596559756, '__ci_last_regenerate|i:1596559756;'),
('krchahsqa6cf6fb5cdn9v96u71udtsrp', '::1', '', 1596559779, '__ci_last_regenerate|i:1596559779;'),
('7mb5p2lvimi9ecd8jcbl8dn7bvrb018n', '127.0.0.1', '', 1596559953, '__ci_last_regenerate|i:1596559953;'),
('d4ah2d6f29llmvoe970aop403rl3egfu', '::1', '', 1596559953, '__ci_last_regenerate|i:1596559953;'),
('i89uq7npa84l6o4jioratlv03dvuu5f2', '127.0.0.1', '', 1596560718, '__ci_last_regenerate|i:1596560718;'),
('lo0kuljlj49d3vq3fecpn43r7o6f8k2t', '::1', '', 1596560719, '__ci_last_regenerate|i:1596560719;'),
('vbl32n2crat20k5g6bo159ve3h28ahbu', '::1', '', 1596560739, '__ci_last_regenerate|i:1596560739;'),
('ruvrebkhk11klktf0v0stigulbom58td', '127.0.0.1', '', 1596560830, '__ci_last_regenerate|i:1596560830;'),
('stclab1q679msjbrpg0iopjm7uk2fv0g', '::1', '', 1596560833, '__ci_last_regenerate|i:1596560833;'),
('8ivrdqvs5ukc2454bbg5peh5rkq67g2r', '127.0.0.1', '', 1596560893, '__ci_last_regenerate|i:1596560891;'),
('ko9lijm5sd4i2s4rv8opg7r8jvjbennq', '::1', '', 1596560898, '__ci_last_regenerate|i:1596560898;'),
('qdep88hppkmamn679j5f4kgs5d5iq20u', '::1', '', 1596560907, '__ci_last_regenerate|i:1596560906;'),
('6btqu353mnmcmm64dkb8h7l30k8ta6ao', '::1', '', 1596561019, '__ci_last_regenerate|i:1596561019;'),
('4m6alhl22p0dnvu0ngk3ca45lfpu822h', '127.0.0.1', '', 1596561036, '__ci_last_regenerate|i:1596561019;'),
('plaop95r0bkj8nphmmoev9i5frc6o655', '::1', '', 1596561071, '__ci_last_regenerate|i:1596561070;'),
('82ntqv32ibu4pe6or1f9e9q34ok9jbg4', '127.0.0.1', '', 1596561455, '__ci_last_regenerate|i:1596561455;'),
('3iagkj8anbidaifpo17lmstdpsk04dkp', '127.0.0.1', '', 1596561484, '__ci_last_regenerate|i:1596561484;');
INSERT INTO `microsidd_ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('37v8tvr16urah0lli5lv5ih2f44g00oc', '127.0.0.1', '', 1596561557, '__ci_last_regenerate|i:1596561557;'),
('gdk222n4ptobsbutgm4r2ai3e8p9qe58', '::1', '', 1596561565, '__ci_last_regenerate|i:1596561565;'),
('nip10f9adcnv841j6v1o18sti91j1gav', '127.0.0.1', '', 1596563464, '__ci_last_regenerate|i:1596563464;'),
('5m0a6veji73rgpcpf63uccbes2kltmn9', '::1', '', 1596563465, '__ci_last_regenerate|i:1596563465;'),
('akb8v7d1evbu2rl8p0283c357tno1m1v', '127.0.0.1', '', 1596564693, '__ci_last_regenerate|i:1596564693;'),
('gcoqgfhidbb516re6ou4oq2c6103nil9', '::1', '', 1596564693, '__ci_last_regenerate|i:1596564693;'),
('hh092350o5ss7p8pia3c42gq05uvo6ld', '::1', '', 1596616022, '__ci_last_regenerate|i:1596616020;'),
('5pfjs7044dbgt3sj7kqrjgugn5unf0nf', '::1', '', 1596616701, '__ci_last_regenerate|i:1596616700;'),
('ck21dv98g44l1jadtou3roo04a2abtu9', '::1', '', 1596616967, '__ci_last_regenerate|i:1596616717;'),
('l26o6iegh2r36sqn523ikhpvdlp8ks0e', '::1', '', 1596619384, '__ci_last_regenerate|i:1596619384;'),
('oqaut7jk2nfhfldpt6dms6hj9g1scbj6', '::1', '', 1596619887, '__ci_last_regenerate|i:1596619887;'),
('g2s9ftmuc8thlpslpggq6nf97jqos8c9', '::1', '', 1596619892, '__ci_last_regenerate|i:1596619892;'),
('7o19jj5h8offqubctse1nrr1ft0cj3pn', '::1', '', 1596619920, '__ci_last_regenerate|i:1596619919;'),
('20acuthconv93o4p0mhojiodmj6sg359', '::1', '', 1596620214, '__ci_last_regenerate|i:1596620214;'),
('h0bovabg3e52l1pu9tim0tat5s8bjc18', '::1', '', 1596620280, '__ci_last_regenerate|i:1596620280;'),
('trmp0l27mcpfnimg2h3vtael3922o2cf', '::1', '', 1596620354, '__ci_last_regenerate|i:1596620354;'),
('60hg389l69eiv3679918o2fm1j4eg2pm', '::1', '', 1596620366, '__ci_last_regenerate|i:1596620366;'),
('uson2jk5uqolek6b2l1l0n38k4msp25j', '::1', '', 1596620425, '__ci_last_regenerate|i:1596620425;'),
('i9hi7t42cku0tb43hlc3onvmgv33rdef', '::1', '', 1596620482, '__ci_last_regenerate|i:1596620482;'),
('spt81vtd6k7c4she7ftj7oeg6g18b777', '::1', '', 1596620524, '__ci_last_regenerate|i:1596620524;'),
('0dm7nj06f82efgc7h7jai094g1s9evl1', '::1', '', 1596620606, '__ci_last_regenerate|i:1596620606;'),
('4d1u0gd065nrl8thjeibi09d2qen3k5d', '::1', '', 1596620648, '__ci_last_regenerate|i:1596620648;'),
('qhf1h113gbukna9mcv9gel5s1cvilnhj', '::1', '', 1596620766, '__ci_last_regenerate|i:1596620766;'),
('rf6qe9r1sspu35vvrem9qp17ltl6urbo', '::1', '', 1596620797, '__ci_last_regenerate|i:1596620797;'),
('9c0esk9cp18rrj608mplknn83fe15k1p', '::1', '', 1596620951, '__ci_last_regenerate|i:1596620951;'),
('j2qkel4750cucudodoh19e8uh0u7lif1', '::1', '', 1596621048, '__ci_last_regenerate|i:1596621048;'),
('7k2t51007ojodkksfn1qs8uldlq8eae8', '::1', '', 1596621054, '__ci_last_regenerate|i:1596621054;'),
('p9kf9j343eriee5ripj7m8582dj4lg3v', '::1', '', 1596621192, '__ci_last_regenerate|i:1596621100;'),
('v8u2cf8nfssvmtk56frbkf0p5s210q97', '::1', '', 1596621198, '__ci_last_regenerate|i:1596621198;'),
('3co5gtbj1pnhgopgcrhlqu7pm47lcfl9', '::1', '', 1596621274, '__ci_last_regenerate|i:1596621274;'),
('h3gcrf8qs0mbukmf85rv8n71ikugurln', '::1', '', 1596621311, '__ci_last_regenerate|i:1596621311;'),
('br6kpb3t6o5qhcrlh1efblk17i3bq72h', '::1', '', 1596621317, '__ci_last_regenerate|i:1596621317;'),
('5v4amhgan7a9c63c1gj7drlga8d9g6j2', '::1', '', 1596621349, '__ci_last_regenerate|i:1596621349;'),
('h8lq0ubt3ot777ire1kc599iit0unqj1', '::1', '', 1596621358, '__ci_last_regenerate|i:1596621358;'),
('iiu95l2kf92qtam9jim430vhq2u6jl4e', '::1', '', 1596621366, '__ci_last_regenerate|i:1596621365;'),
('g96lfguc09afe4maevpobqpc76fdbmrv', '::1', '', 1596621371, '__ci_last_regenerate|i:1596621371;'),
('qfcrlhaadvf2bp2teb4p4fmlkp55l1vp', '::1', '', 1596621374, '__ci_last_regenerate|i:1596621374;'),
('igm2v8b1895sirlkn3icf78b8klm0esu', '::1', '', 1596621390, '__ci_last_regenerate|i:1596621390;'),
('dn742mqobj7m7auuctsdn60174rfg38v', '::1', '', 1596621392, '__ci_last_regenerate|i:1596621392;'),
('f34vvifhbs7ic14qhb8cvocj46lmevo4', '::1', '', 1596621393, '__ci_last_regenerate|i:1596621392;'),
('d7oojg1danbkedpgv8gm3661e3onaitj', '::1', '', 1596621394, '__ci_last_regenerate|i:1596621394;'),
('fbgj6k2j8r3t5uhin749tmfppsu5pv8l', '::1', '', 1596621394, '__ci_last_regenerate|i:1596621394;'),
('vlbspk6pmtkm93tgme133gch2gn265st', '::1', '', 1596621396, '__ci_last_regenerate|i:1596621396;'),
('1p45b1hfcul72mtrbcnba69c7ffb356q', '::1', '', 1596621396, '__ci_last_regenerate|i:1596621396;'),
('pfqp5d0ffgggshn6v0arub3c576ht71u', '::1', '', 1596621398, '__ci_last_regenerate|i:1596621397;'),
('tc930neotjutp5cdetu2cuo0c6utdmp5', '::1', '', 1596621398, '__ci_last_regenerate|i:1596621398;'),
('aijc2cmrq29abde55lccj8iitqlrpu74', '::1', '', 1596621400, '__ci_last_regenerate|i:1596621400;'),
('13i8j71d2ne8fblv3iuemprpg0i3pt05', '::1', '', 1596621400, '__ci_last_regenerate|i:1596621400;'),
('84sf65s47s4susutgldfofnpic5p42k6', '::1', '', 1596621402, '__ci_last_regenerate|i:1596621402;'),
('13lp5fcqhii3eigh2ieq6vto7p8m4ecd', '::1', '', 1596621402, '__ci_last_regenerate|i:1596621402;'),
('rakq43jgegirfms7fbci3o0223gjribf', '::1', '', 1596621404, '__ci_last_regenerate|i:1596621403;'),
('i83fn22gfclkr9753l7bif51kmdc0n9p', '::1', '', 1596621404, '__ci_last_regenerate|i:1596621404;'),
('dfpb3fe40j1krhd46qsoqui741h3d8hv', '::1', '', 1596621406, '__ci_last_regenerate|i:1596621405;'),
('p2faadqih2tmh4adjfjj4rco5d2068db', '::1', '', 1596621406, '__ci_last_regenerate|i:1596621406;'),
('1vqn36oahalh0s8me3hecm6uuotjlcsq', '::1', '', 1596621408, '__ci_last_regenerate|i:1596621408;'),
('ci3udgn53j5qhqbdnn5i03leoar9iip9', '::1', '', 1596621414, '__ci_last_regenerate|i:1596621414;'),
('kd2gg2baknv90hmesps53ebe4volcnte', '::1', '', 1596621416, '__ci_last_regenerate|i:1596621416;'),
('t6kh93jaimmef8cif1qi9be0lieemn7g', '::1', '', 1596621629, '__ci_last_regenerate|i:1596621629;'),
('mrqlhng4caihvblvb24e2chto3dfai36', '::1', '', 1596621661, '__ci_last_regenerate|i:1596621661;'),
('ddovdgf02djuge7c3hpur6fo9eidinm2', '::1', '', 1596621673, '__ci_last_regenerate|i:1596621673;'),
('kg20fulk2r2smk72fk42ubodi5ehmopo', '::1', '', 1596622948, '__ci_last_regenerate|i:1596622947;'),
('6ucv7mj72cko5ftaec37m75qjdp8v76q', '::1', '', 1596622948, '__ci_last_regenerate|i:1596622948;'),
('70hp9otjrv4rpqbt26r14lqac23u4k2f', '::1', '', 1596623015, '__ci_last_regenerate|i:1596623015;'),
('dc6b3ko7a2m910dspm23vjrhfjr2bopv', '::1', '', 1596623179, '__ci_last_regenerate|i:1596623178;'),
('t7r35fl1cle73mcbon7lg8q5n6047ql5', '::1', '', 1596623272, '__ci_last_regenerate|i:1596623272;'),
('5n5td6tskoffsrk3pqak46vf07necost', '::1', '', 1596623917, '__ci_last_regenerate|i:1596623917;'),
('o8ljmcki855p9skd1bude51csuuo2l6n', '::1', '', 1596623924, '__ci_last_regenerate|i:1596623923;'),
('899ev39gg5dulebacmsban1gsu0nc9ug', '::1', '', 1596623924, '__ci_last_regenerate|i:1596623924;'),
('2mjuvv8choagsqoq6j0l5037576cumor', '::1', '', 1596624197, '__ci_last_regenerate|i:1596624165;'),
('u7ul6no2l8r63riic10cf1ioc0kl2k7r', '::1', '', 1596624209, '__ci_last_regenerate|i:1596624209;'),
('efelqaekeg25bknih5b55qhb7iietk85', '::1', '', 1596624999, '__ci_last_regenerate|i:1596624999;'),
('93tfi0g8pl42vo51e3qik7sfb4i8bp4h', '::1', '', 1596625557, '__ci_last_regenerate|i:1596625557;'),
('bc0fduuakfl86ufkbf43t36lavjjdari', '::1', '', 1596625559, '__ci_last_regenerate|i:1596625559;'),
('4mt4ufea6qjdr7v97ctpa8dl6htni7im', '::1', '', 1596625560, '__ci_last_regenerate|i:1596625560;'),
('i8iifls8i16eg55204ae13li2jjaot2d', '::1', '', 1596625561, '__ci_last_regenerate|i:1596625561;'),
('11sdebo91ejelv8s9t6onokl0pjdfioe', '::1', '', 1596625563, '__ci_last_regenerate|i:1596625563;'),
('s8svcke5baqjsbc10p9vpaiat8lv9tjg', '::1', '', 1596625563, '__ci_last_regenerate|i:1596625563;'),
('sdfmkmdrfve8veqgk39mq1k59trbr8ig', '::1', '', 1596625563, '__ci_last_regenerate|i:1596625563;'),
('89oj1n39s0kaak1ik6nvsdirf34pvsej', '::1', '', 1596625608, '__ci_last_regenerate|i:1596625608;'),
('m1euo0nsjijoshn1ejpgl91seph7ti71', '::1', '', 1596625609, '__ci_last_regenerate|i:1596625609;'),
('23ct2cs83limgtvljtmg0tb9gfud7f4g', '::1', '', 1596625616, '__ci_last_regenerate|i:1596625616;'),
('qf20p8g0j106hna6gg0931nrofbii270', '::1', '', 1596625617, '__ci_last_regenerate|i:1596625617;'),
('ba59nqgj6tdgft9b30t131afdiknngch', '::1', '', 1596625617, '__ci_last_regenerate|i:1596625617;'),
('g3r0v6ctqvhvqe3im5u1ap09dltotma0', '::1', '', 1596625617, '__ci_last_regenerate|i:1596625617;'),
('498a889kqonoes3m7n77mgo53brjhlst', '::1', '', 1596625676, '__ci_last_regenerate|i:1596625676;'),
('rsc6bhem08adb3oai2eb3t0ctfl67tm5', '::1', '', 1596625677, '__ci_last_regenerate|i:1596625677;'),
('b9u2hl7apsk2qdq5h0c2duklp3lf48ru', '::1', '', 1596625731, '__ci_last_regenerate|i:1596625731;'),
('ospejchifkmlpq63baip3bost2hsk3re', '::1', '', 1596625735, '__ci_last_regenerate|i:1596625735;'),
('smje5drkensejlbkf8qsogtg6phc734e', '::1', '', 1596625736, '__ci_last_regenerate|i:1596625736;'),
('4dda5c6dv07pn6ai6jurck5666ddg30t', '::1', '', 1596625736, '__ci_last_regenerate|i:1596625736;'),
('paqn1e2fdqub33v0mf6r75b71folkdh3', '::1', '', 1596625736, '__ci_last_regenerate|i:1596625736;'),
('h8624gsn6cnm3cuqt3qgqu9ssbs303tv', '::1', '', 1596625736, '__ci_last_regenerate|i:1596625736;'),
('aqftcg1p9q4igjjk43bj9pte15c4gaub', '::1', '', 1596625737, '__ci_last_regenerate|i:1596625737;'),
('1pg51eebmds7t18mb9i2n6tu0i2dfk45', '::1', '', 1596625738, '__ci_last_regenerate|i:1596625737;'),
('4kjshs4njad7k2pba0t9rv6dr9oq44rd', '::1', '', 1596625738, '__ci_last_regenerate|i:1596625738;'),
('e916c9f7b55qat2p0ui7r9t5pnlhu3ct', '::1', '', 1596625738, '__ci_last_regenerate|i:1596625738;'),
('517ke93r4nqgg4p17gbtb3pv9m1r3k3s', '::1', '', 1596625738, '__ci_last_regenerate|i:1596625738;'),
('1esjlet9c27lftt8gs16cm2v6ogp0vja', '::1', '', 1596625739, '__ci_last_regenerate|i:1596625739;'),
('j4cbkvo6su066jaljt07j4dl0b2pope6', '::1', '', 1596625739, '__ci_last_regenerate|i:1596625738;'),
('2slg1eop3j5dn93hstir7a4ge9mbmefi', '::1', '', 1596625767, '__ci_last_regenerate|i:1596625767;'),
('lelrt4eq87l0bukjdrcmchju0n9strm4', '::1', '', 1596625767, '__ci_last_regenerate|i:1596625767;'),
('fs3eao1opgg878e38v9adtg9qg1u1o9h', '::1', '', 1596625767, '__ci_last_regenerate|i:1596625767;'),
('b8b40869q233c2ji9krctjb2i91aki8e', '::1', '', 1596625767, '__ci_last_regenerate|i:1596625767;'),
('jh1moem7cuf5uuid2bt8q7umc8r35q1k', '::1', '', 1596625771, '__ci_last_regenerate|i:1596625771;'),
('lfnmul1q2q47ie56q2i5p056pf1f7nm0', '::1', '', 1596625771, '__ci_last_regenerate|i:1596625771;'),
('o009asvritpjgg9db95clbc7t9ioe30a', '::1', '', 1596625771, '__ci_last_regenerate|i:1596625771;'),
('b15c5kur1ts3omcrmlm85pe57o5980t2', '::1', '', 1596625771, '__ci_last_regenerate|i:1596625771;'),
('nn2aan6uitnr6lkqut8kqn04tfhl3jsc', '::1', '', 1596625772, '__ci_last_regenerate|i:1596625772;'),
('o1vgbvivfb4d2ghemkkhk6bagkjs8iud', '::1', '', 1596625773, '__ci_last_regenerate|i:1596625773;'),
('80rc7pfmq8gtnfvi33lfn9vn8tlre4jj', '::1', '', 1596625949, '__ci_last_regenerate|i:1596625949;'),
('773mltnue00av2ldpft2ugfansevip1i', '::1', '', 1596625953, '__ci_last_regenerate|i:1596625953;'),
('9oipsqpl2p8ifjhjqrmehhq4617j56ug', '::1', '', 1596625953, '__ci_last_regenerate|i:1596625953;'),
('5ghstoecc47uvhtcl9h5hvdhih4mvs5n', '::1', '', 1596625954, '__ci_last_regenerate|i:1596625954;'),
('64595hloft4m1j9k8uldfjanu7uvq238', '::1', '', 1596625954, '__ci_last_regenerate|i:1596625954;'),
('kdtgau5h447jkb586mu8na76pj446bkg', '::1', '', 1596625955, '__ci_last_regenerate|i:1596625955;'),
('jq1eacmnfis0qofia9nhsegue39h72e5', '::1', '', 1596625969, '__ci_last_regenerate|i:1596625969;'),
('efjunmmqju4jhd4ra219csomq15u1jfv', '::1', '', 1596625969, '__ci_last_regenerate|i:1596625969;'),
('mi5eqsaqgshf5jeql5t0hca57tikbnq7', '::1', '', 1596625969, '__ci_last_regenerate|i:1596625969;'),
('viotvd15ca5h0v1b4go3lr0p2i4k6ljk', '::1', '', 1596625969, '__ci_last_regenerate|i:1596625969;'),
('5ken5rq3p0hph6ds9oileefp6kvoiod2', '::1', '', 1596625987, '__ci_last_regenerate|i:1596625987;'),
('vjbi03dtgcje6ks9rt4ae3di3lufvhai', '::1', '', 1596625995, '__ci_last_regenerate|i:1596625995;'),
('h277467bltmbjoadk6o9s2f7mpogbsq8', '::1', '', 1596625997, '__ci_last_regenerate|i:1596625997;'),
('deguv3q0e2rruevrkpaejrughkebshuf', '::1', '', 1596625997, '__ci_last_regenerate|i:1596625997;'),
('c9thm1apa75me9j09up9jq09m1ceot40', '::1', '', 1596625997, '__ci_last_regenerate|i:1596625997;'),
('atjhasqmu19m73k22s9c7n0r8uqllb97', '::1', '', 1596625997, '__ci_last_regenerate|i:1596625997;'),
('um2d57h8o8f5erg8euu4i0qsevvqc5m6', '::1', '', 1596625998, '__ci_last_regenerate|i:1596625997;'),
('2lvo98nvk9q850gbms32mno92gh4ppj0', '::1', '', 1596625998, '__ci_last_regenerate|i:1596625997;'),
('fn2s7vbnt7dfkvb43e168drvrsofbd54', '::1', '', 1596625998, '__ci_last_regenerate|i:1596625998;'),
('564ipat25j03j2b579bsa77b6lq8sign', '::1', '', 1596625998, '__ci_last_regenerate|i:1596625998;'),
('flb8jh0f5l0buodt0i41lqeolhik6655', '::1', '', 1596625998, '__ci_last_regenerate|i:1596625998;'),
('844u9q5ucnnm3vp2ki239jasr1mkkf3q', '::1', '', 1596626000, '__ci_last_regenerate|i:1596626000;'),
('msfv1eiqdq89dipud8m47l792vgokv8l', '::1', '', 1596626000, '__ci_last_regenerate|i:1596626000;'),
('vk2pc6s9h0ipd11vq4jo2j3jpkab8qdf', '::1', '', 1596626058, '__ci_last_regenerate|i:1596626058;'),
('h4djis56a1r8im9mammc5ovg0b2flkov', '::1', '', 1596626058, '__ci_last_regenerate|i:1596626058;'),
('g8llphcgam67nketh5pola3t5l3d6jo4', '::1', '', 1596626059, '__ci_last_regenerate|i:1596626059;'),
('oqt94uqmq0kl77khsv8jam2mq3ii19gc', '::1', '', 1596626060, '__ci_last_regenerate|i:1596626060;'),
('kkbnjppjrg4cnjn20umtu11nl9lnfc18', '::1', '', 1596626061, '__ci_last_regenerate|i:1596626061;'),
('ktk84s2pk6lhofe5uvbl4fidd0scp9et', '::1', '', 1596626062, '__ci_last_regenerate|i:1596626062;'),
('do9ob2pae4r9aokav2qvrg7a5rprq1d0', '::1', '', 1596626384, '__ci_last_regenerate|i:1596626383;'),
('ho7bif06u6c54qv913viq733vgbr3lkj', '::1', '', 1596626388, '__ci_last_regenerate|i:1596626388;'),
('dmor6jh3ribg5qs1fq7q33jjubciqq4s', '::1', '', 1596626389, '__ci_last_regenerate|i:1596626389;'),
('e1djdkth0hhc93e3es1qtslqd0ajo0r4', '::1', '', 1596626400, '__ci_last_regenerate|i:1596626400;'),
('t2ar9cj0addpud85v66dtqs91pq0s87t', '::1', '', 1596626400, '__ci_last_regenerate|i:1596626400;'),
('qf94oe9ck7okbg2f1qq8kta43i6d87kb', '::1', '', 1596626402, '__ci_last_regenerate|i:1596626402;'),
('ud2ueuiovmuh5a4s62ivm847n9d2hion', '::1', '', 1596626402, '__ci_last_regenerate|i:1596626402;'),
('m2srm5om2sfo74cidlit4nr4a2ek88di', '::1', '', 1596626403, '__ci_last_regenerate|i:1596626403;'),
('ngokt2ga4v4fjgni2vsojoehq2eq0so9', '::1', '', 1596626404, '__ci_last_regenerate|i:1596626404;'),
('qeb5i3ckvpv51lg49ppiib3ldi5vq5be', '::1', '', 1596626486, '__ci_last_regenerate|i:1596626486;'),
('306aq42eujvf72c0j528m21f2pgg7e6m', '::1', '', 1596626496, '__ci_last_regenerate|i:1596626496;'),
('d2o3vha78vmfr3ke92hn1buo3n8dbkr5', '::1', '', 1596626499, '__ci_last_regenerate|i:1596626499;'),
('pr9l53ujkme5top2q7eb4a21rd6mdrn4', '::1', '', 1596626499, '__ci_last_regenerate|i:1596626499;'),
('kv095lfk77ni64792snqq6p4r79joh82', '::1', '', 1596626499, '__ci_last_regenerate|i:1596626499;'),
('rp5h9iv62n698c5c0lkipf14elorrgdd', '::1', '', 1596626499, '__ci_last_regenerate|i:1596626499;'),
('1q1ngfu6ld6ehgdl822pbfh7ogcicq07', '::1', '', 1596626500, '__ci_last_regenerate|i:1596626500;'),
('30plaujbtk4ug1gc1kpj6s3ng2ijv6na', '::1', '', 1596626500, '__ci_last_regenerate|i:1596626500;'),
('5ofaa3o29ge2vhm7tff21gp382pkvig5', '::1', '', 1596626500, '__ci_last_regenerate|i:1596626500;'),
('atdaetl56lktvkbmh2n5vshiv6ks4a4b', '::1', '', 1596626500, '__ci_last_regenerate|i:1596626500;'),
('1pgifdaskealguvp2bhniskf3rqqasv4', '::1', '', 1596626500, '__ci_last_regenerate|i:1596626500;'),
('qvb7a5c5nd8099s60hvg4thntmeups43', '::1', '', 1596626533, '__ci_last_regenerate|i:1596626533;'),
('b5vu57593a3aua1eif2ibfk37avjckq2', '::1', '', 1596626567, '__ci_last_regenerate|i:1596626567;'),
('eg41ec18vjmd61usfrp8qb5h30bt5d73', '::1', '', 1596626656, '__ci_last_regenerate|i:1596626656;'),
('30lolns1nfjnlrm7estk18qt653vt7vk', '::1', '', 1596626683, '__ci_last_regenerate|i:1596626683;'),
('moh21rs7mosfbseaeaph8l5f0s1r5lh2', '::1', '', 1596626707, '__ci_last_regenerate|i:1596626707;'),
('f3r1trftj461ch9rgg0r6e6t568qegcn', '::1', '', 1596626749, '__ci_last_regenerate|i:1596626749;'),
('vo92gf68k5a91mkpnq236uhnvtslvp78', '::1', '', 1596626920, '__ci_last_regenerate|i:1596626920;'),
('gdv8jbh4pu2r9ul7n6635mm02m7078lo', '::1', '', 1596627073, '__ci_last_regenerate|i:1596627073;'),
('nitsbdn8q273ec9443ju5m0bhu3c1hg6', '::1', '', 1596627079, '__ci_last_regenerate|i:1596627079;'),
('ojcvb0j7cv8uo5mm78tt5o66vdf4gfi6', '::1', '', 1596627081, '__ci_last_regenerate|i:1596627081;'),
('dvv5rc6363aai216nqapl2sfkfrvq635', '::1', '', 1596627081, '__ci_last_regenerate|i:1596627081;'),
('cnj87uin6jdq9k8gq775cbmoomtpfbnt', '::1', '', 1596627093, '__ci_last_regenerate|i:1596627093;'),
('rfs9bvtanulp0sl2pq8d9irs4ianku00', '::1', '', 1596627094, '__ci_last_regenerate|i:1596627094;'),
('2kl1m1esq52lseol2ms22tolnjtpkkin', '::1', '', 1596628599, '__ci_last_regenerate|i:1596628599;'),
('jiam8d7um8mvrrcfs1tqfoihtba4bmdv', '::1', '', 1596628603, '__ci_last_regenerate|i:1596628603;'),
('bka0ett1jik7ee4qlv9c43nnumgpqgnv', '::1', '', 1596628615, '__ci_last_regenerate|i:1596628615;'),
('6kes9dshebrdo7h4q50bg9r7df2lm3g0', '::1', '', 1596628617, '__ci_last_regenerate|i:1596628617;'),
('rmutboe3vpcl3no990hrgdj5u4pdv1tp', '::1', '', 1596628617, '__ci_last_regenerate|i:1596628617;'),
('lclqb3keekhfnv1chfrlsgna3811rheg', '::1', '', 1596628686, '__ci_last_regenerate|i:1596628686;'),
('a465s7mtn5ai11ns45k51vpv60q3goep', '::1', '', 1596628689, '__ci_last_regenerate|i:1596628689;'),
('rbm8jnf100vs6nnjqkgoancoj4kkrl0c', '::1', '', 1596628690, '__ci_last_regenerate|i:1596628690;'),
('l33nj0ost45bm8i0nltm0jbbq1cuq1gr', '::1', '', 1596628692, '__ci_last_regenerate|i:1596628692;'),
('0ok5cm1ep1ps9cqpun8kqmjcg89qo50t', '::1', '', 1596628695, '__ci_last_regenerate|i:1596628695;'),
('8mfsnd416afhitgfroiumh09df6l1sup', '::1', '', 1596628695, '__ci_last_regenerate|i:1596628695;'),
('rs29no0vk1jibedv112jss2atd8l3b6e', '::1', '', 1596628697, '__ci_last_regenerate|i:1596628697;'),
('9sndulkepia8027atbtslrsvr6u03d8v', '::1', '', 1596628745, '__ci_last_regenerate|i:1596628745;'),
('ju98pc19btkp64bf7hichoeoav87rsjr', '::1', '', 1596628745, '__ci_last_regenerate|i:1596628745;'),
('cv12uoebppcpsk7mrcfdkb25m5l5ffqo', '::1', '', 1596628755, '__ci_last_regenerate|i:1596628755;'),
('9m54vlst85qr70gtdvohbsjnlgmt93h7', '::1', '', 1596628755, '__ci_last_regenerate|i:1596628755;'),
('cfp18214hk3ec4jd7tcvv9suntcu749o', '::1', '', 1596628760, '__ci_last_regenerate|i:1596628760;'),
('t6ti9pd2p7ll4nlp9b99ght0h6qea2s4', '::1', '', 1596628761, '__ci_last_regenerate|i:1596628761;'),
('jn5dipghfq78pd3nkoof2vaaetujphf9', '::1', '', 1596628779, '__ci_last_regenerate|i:1596628779;'),
('ifkdkvt6jv0hj92bp2chqkh1mkp31l01', '::1', '', 1596628917, '__ci_last_regenerate|i:1596628917;'),
('aa1k2qogpvjoa053vkk1dbdq6hlsqenq', '::1', '', 1596628917, '__ci_last_regenerate|i:1596628917;'),
('3hbugfe13md463a075lkhnm28b71l193', '::1', '', 1596628917, '__ci_last_regenerate|i:1596628917;'),
('hnd471pdhm3076aarohvbskp4ns0om8d', '::1', '', 1596628919, '__ci_last_regenerate|i:1596628919;'),
('t3gbrc0ekq25oc45fhhhelrlu6g6abaf', '::1', '', 1596628920, '__ci_last_regenerate|i:1596628920;'),
('q88em4v56lgga9kq5e05kcat4e283cch', '::1', '', 1596628920, '__ci_last_regenerate|i:1596628920;'),
('28raub5v1nsvof4fc51ae098hkqeitru', '::1', '', 1596628922, '__ci_last_regenerate|i:1596628922;'),
('vr8a5ebteqaga93oprb9759sqebgjln2', '::1', '', 1596628924, '__ci_last_regenerate|i:1596628924;'),
('650j8kqr6o2sjcjno30ms15k2i69j8qi', '::1', '', 1596628947, '__ci_last_regenerate|i:1596628947;'),
('j50vbph3l0fsi5ikecuei518avjmia7p', '::1', '', 1596629356, '__ci_last_regenerate|i:1596629356;'),
('aj2o27d2g8h9l6997221m17b20v9idu3', '::1', '', 1596629475, '__ci_last_regenerate|i:1596629475;'),
('g46i1dhft9etj0snjfj7vt3bq9blqevp', '::1', '', 1596629692, '__ci_last_regenerate|i:1596629692;'),
('6koptsoklkbe63ep8b5j9vkbggbbisve', '::1', '', 1596629874, '__ci_last_regenerate|i:1596629874;'),
('b55efhjuv2sq5ufpcfl4hcoqi28d4g89', '::1', '', 1596629878, '__ci_last_regenerate|i:1596629878;'),
('q7kq9ht42f71ao6ou0b2alrsmjcogv8o', '::1', '', 1596629879, '__ci_last_regenerate|i:1596629879;'),
('pv00rc772ddi1oopq0erm22d7s63rhua', '::1', '', 1596640656, '__ci_last_regenerate|i:1596640655;'),
('37rqggao26cbj3118m40nvjgg9mn2364', '::1', '', 1596640759, '__ci_last_regenerate|i:1596640759;'),
('o1ki3a6jabuh5a0eoqihlhi8ptc680cf', '::1', '', 1596640867, '__ci_last_regenerate|i:1596640867;'),
('697tuikj246ea5gg67frc5mfs5igt5bd', '::1', '', 1596640867, '__ci_last_regenerate|i:1596640867;'),
('nm5q0bsqihrmqjcr2bu848nokmv2a51e', '::1', '', 1596640870, '__ci_last_regenerate|i:1596640870;'),
('dttgglnb37b63hbnpe1kq6id75h18jua', '::1', '', 1596640872, '__ci_last_regenerate|i:1596640872;'),
('786jo2vrk41kvu1k6lvhj4hgbjr8h7b1', '::1', '', 1596640873, '__ci_last_regenerate|i:1596640873;'),
('bgdcvs206bvefvnmgu6b0honsvhpr7rs', '::1', '', 1596640875, '__ci_last_regenerate|i:1596640875;'),
('7conf4j3s7o169apipjao41v01r20bae', '::1', '', 1596641265, '__ci_last_regenerate|i:1596641265;'),
('elsqjs0kkj8abbfb25h2s852bsiq98d7', '::1', '', 1596641266, '__ci_last_regenerate|i:1596641266;'),
('phfglcnlk01q1dk4qrhhhd9gqnadfcia', '::1', '', 1596641268, '__ci_last_regenerate|i:1596641268;'),
('nc6l7u0g06ud4sett6j7k4nq6pij0q5m', '::1', '', 1596641268, '__ci_last_regenerate|i:1596641268;'),
('l6durrjj5puh8djt2je1teqd5rgsml51', '::1', '', 1596641445, '__ci_last_regenerate|i:1596641445;'),
('aqvnbd9ac7kgr7vos8r3o0mff54etoc8', '::1', '', 1596641458, '__ci_last_regenerate|i:1596641458;'),
('4aoc5t7bidb0n8l00t8jdimtlp5rvqoj', '::1', '', 1596641468, '__ci_last_regenerate|i:1596641468;'),
('kgscokn63qob940pvu4h55id18edikmn', '::1', '', 1596641484, '__ci_last_regenerate|i:1596641484;'),
('k6k99hrg15r4as04eh8uelviqr971gcc', '::1', '', 1596641487, '__ci_last_regenerate|i:1596641487;'),
('b9pt8ulfratpoqu2r6m08netadnv7tcd', '::1', '', 1596641488, '__ci_last_regenerate|i:1596641488;'),
('3vvaqrc0e6egocv88fsoitgtoqtreqfd', '::1', '', 1596641491, '__ci_last_regenerate|i:1596641491;'),
('vponidug66vgvb001dfs8hmmj28riq9p', '::1', '', 1596641491, '__ci_last_regenerate|i:1596641491;'),
('co0s43dkb2pv2q8pqp087pe0nfv0bhp9', '::1', '', 1596641504, '__ci_last_regenerate|i:1596641504;'),
('cv875i81qvcd0umbmcot4sq7ej76fgic', '::1', '', 1596641504, '__ci_last_regenerate|i:1596641504;'),
('orc1f9j92ebqvjraalfad1u2kejr20cr', '::1', '', 1596641508, '__ci_last_regenerate|i:1596641508;'),
('kjn3r9agevubkkmg2vsv9pknrh7ght0u', '::1', '', 1596641508, '__ci_last_regenerate|i:1596641508;'),
('qa2vl3mu6sr44v78lh999d19b882v0j0', '::1', '', 1596641525, '__ci_last_regenerate|i:1596641525;'),
('48gteo59cpi0lf49qduj4b4ilq7pqk3j', '::1', '', 1596642194, '__ci_last_regenerate|i:1596642194;'),
('lt40kb01esgjhn5fn8jdauipgci5134a', '::1', '', 1596642196, '__ci_last_regenerate|i:1596642196;'),
('qgqi75stp4pocb8icm2v0hvhs3t8c5mt', '::1', '', 1596642810, '__ci_last_regenerate|i:1596642810;'),
('mcj32hc8j52id1ribqvkh2822iosgktn', '::1', '', 1596642814, '__ci_last_regenerate|i:1596642814;'),
('j91dmntgfkl24dvdqi9ri4fpvp3v3omk', '::1', '', 1596642819, '__ci_last_regenerate|i:1596642819;'),
('qdp81t08nb7ji8isk4ijf2h8d6f890ta', '::1', '', 1596642821, '__ci_last_regenerate|i:1596642821;'),
('kqlq9tuoiqk5a14mtb73eh38uur806nv', '::1', '', 1596706571, '__ci_last_regenerate|i:1596706571;'),
('2tn2d0craauaegld5abaidakenlqo7jv', '::1', '', 1596707304, '__ci_last_regenerate|i:1596707304;'),
('mrnsqibqjpne01qa1ld2idt4gt580mee', '::1', '', 1596707304, '__ci_last_regenerate|i:1596707304;'),
('g4gl6cqvja98mfilbdf2kig8elk4annk', '::1', '', 1596707367, '__ci_last_regenerate|i:1596707367;'),
('ddjs5870mmqg2jbf1v15h2nrmnnuq689', '::1', '', 1596707367, '__ci_last_regenerate|i:1596707367;'),
('mujhjbs01d0mosbuu9p3d1c4smo25sr0', '::1', '', 1596707737, '__ci_last_regenerate|i:1596707736;'),
('2cl7ncmoej1fh2ca8vbrof59quf5kidi', '::1', '', 1596707775, '__ci_last_regenerate|i:1596707775;'),
('d3225skdt1g13hpifon5kjn9vj951ohp', '::1', '', 1596707803, '__ci_last_regenerate|i:1596707803;'),
('rgbc7lr27eqaifnp91br3ikuid989phe', '::1', '', 1596707823, '__ci_last_regenerate|i:1596707823;'),
('2alirr19jlgi73k5kfovg1iu30b6n3bm', '::1', '', 1596707842, '__ci_last_regenerate|i:1596707842;'),
('2v9dnlupqqi2recj4eikd9uhbcfd2tjd', '::1', '', 1596707857, '__ci_last_regenerate|i:1596707857;'),
('t197ev7h9kbpl8s9eaaseo5au5ftsv6m', '::1', '', 1596707938, '__ci_last_regenerate|i:1596707938;'),
('ado3j7fdvmdqgh8hdu2jlfg3fc1soiqg', '::1', '', 1596708024, '__ci_last_regenerate|i:1596708024;'),
('adrp5pk0se5klhb09vbdnvile5safd0e', '::1', '', 1596708055, '__ci_last_regenerate|i:1596708055;'),
('4nlco098p9j8ms23d6q53j23jtnjl33c', '::1', '', 1596708372, '__ci_last_regenerate|i:1596708372;'),
('argfh7hvjjt2hn08dj85s26gm8jnbu6r', '::1', '', 1596708415, '__ci_last_regenerate|i:1596708415;'),
('n2lp75o3eprim16u5ht1bqqf01prenb8', '::1', '', 1596708433, '__ci_last_regenerate|i:1596708433;'),
('ql8uuujmti9ft5cla9efomndnbcrr24s', '::1', '', 1596708459, '__ci_last_regenerate|i:1596708459;'),
('s2jgeei77oscmqrov05mkrabn8hh0het', '::1', '', 1596708521, '__ci_last_regenerate|i:1596708521;'),
('m4rmb226pigq7jkklfs2e2m01ns7vlbv', '::1', '', 1596708536, '__ci_last_regenerate|i:1596708536;'),
('0lruvrivgu142tka52c33qmmp37oqrln', '::1', '', 1596708808, '__ci_last_regenerate|i:1596708808;'),
('na84pv8ud6ic0mmtico47grrv72mck9s', '::1', '', 1596708937, '__ci_last_regenerate|i:1596708937;'),
('4j72oa9oi0rcg491be00agkr6sj34j2i', '::1', '', 1596709057, '__ci_last_regenerate|i:1596709057;'),
('8aiufvi0ap67h1vg20phm9npkie03j9a', '::1', '', 1596709077, '__ci_last_regenerate|i:1596709077;'),
('4g8un8s0jt1m0086e9d61st5je28nf6e', '::1', '', 1596709236, '__ci_last_regenerate|i:1596709236;'),
('ii5s0p5ur7in8cl4op7m83h9u9nv8quu', '::1', '', 1596709242, '__ci_last_regenerate|i:1596709242;'),
('tni4civslat4eoaa87d6m4imdoiqq35t', '::1', '', 1596709269, '__ci_last_regenerate|i:1596709269;'),
('76426bvjv4a7uoah4doghu57p17rufpk', '::1', '', 1596709300, '__ci_last_regenerate|i:1596709300;'),
('vs36fi9s3v09e4bk18cq5vi8cc3hjd55', '::1', '', 1596709474, '__ci_last_regenerate|i:1596709474;'),
('k3lvblb0p9s64gvs6irjkjc6c25ipi54', '::1', '', 1596714287, '__ci_last_regenerate|i:1596714286;'),
('qg86mrhdjddgm6qq51a4r7lifmttj63a', '::1', '', 1596730549, '__ci_last_regenerate|i:1596730548;'),
('1gijddv3n06kl1hdn4kecdbhhslvfa0l', '::1', '', 1596732311, '__ci_last_regenerate|i:1596732311;'),
('09lv9ng67cjppmprsin2o6m7i53oejtc', '::1', '', 1596732474, '__ci_last_regenerate|i:1596732473;'),
('73sn7g6rdhuarlksqd1gedvkdg0b0b4c', '::1', '', 1596732475, '__ci_last_regenerate|i:1596732475;'),
('tuk1sj1rljdlcs84hh9n63er2k2eplg1', '::1', '', 1596732556, '__ci_last_regenerate|i:1596732556;'),
('fbadojsq9h1m6k30eguaqpfj8tmgc219', '::1', '', 1596732556, '__ci_last_regenerate|i:1596732556;'),
('r7e3c2t85qg2o9katgluh4iu9ep1d2ip', '::1', '', 1596732586, '__ci_last_regenerate|i:1596732586;'),
('4lfd6sl6srl4c5jo7gps0av7i5n6ekfk', '::1', '', 1596732586, '__ci_last_regenerate|i:1596732586;'),
('5vt4pf65n7i2n2io4vv0sda32eojkf0d', '::1', '', 1596732611, '__ci_last_regenerate|i:1596732611;'),
('ogrksgac3aiqt4o94f4vvh0oqdorm4na', '::1', '', 1596732611, '__ci_last_regenerate|i:1596732611;'),
('29f6dul3gv1kb9ecdjh6fd67c5iqpd3j', '::1', '', 1596732632, '__ci_last_regenerate|i:1596732632;'),
('5dnnso46uqn41sl8qofppkh4i8vq0osq', '::1', '', 1596732635, '__ci_last_regenerate|i:1596732635;'),
('bsbdck78248jfafp5460qpcp95a7e9q1', '::1', '', 1596732783, '__ci_last_regenerate|i:1596732783;'),
('66u8s0k5i9pl96v4o8k9nhlgai2aqpd2', '::1', '', 1596732784, '__ci_last_regenerate|i:1596732784;'),
('uimme534evh663nsfgqf59cmtja73uic', '::1', '', 1596732802, '__ci_last_regenerate|i:1596732802;'),
('biue6fbqprelmgrvfcgrjf57cfg5vbep', '::1', '', 1596733023, '__ci_last_regenerate|i:1596733022;'),
('smvd3kb23tjca17rm5lf4gbq9avdbp95', '::1', '', 1596733173, '__ci_last_regenerate|i:1596733173;'),
('pt20oat51m7imur7vncbdkv888cmfqoc', '::1', '', 1596733215, '__ci_last_regenerate|i:1596733215;'),
('nvgim96fjceihih0jaltsm81837lds7a', '::1', '', 1596733239, '__ci_last_regenerate|i:1596733239;'),
('65u4lg7i2svtnsluc7iek4kkbcircsim', '::1', '', 1596733320, '__ci_last_regenerate|i:1596733320;'),
('6rri9sncusk4fjlj9f04p1n5cbmkjinv', '::1', '', 1596733331, '__ci_last_regenerate|i:1596733330;'),
('8dm0un02ca3gteokln9urc6ij0pmhtkl', '::1', '', 1596733493, '__ci_last_regenerate|i:1596733493;'),
('n4r162k7fso65dmb9uj273hlu4kjdre4', '::1', '', 1596733502, '__ci_last_regenerate|i:1596733501;'),
('md17h6qeaodt8cvtkjhlvblt9jpkjcv4', '::1', '', 1596733514, '__ci_last_regenerate|i:1596733514;'),
('k4bod4b9lu7mt8ola64ggu0do9dc2g6u', '::1', '', 1596733525, '__ci_last_regenerate|i:1596733525;'),
('3m53j63boi5q4nukvbr0trnic99mg5bs', '::1', '', 1596733535, '__ci_last_regenerate|i:1596733534;'),
('u6l4ohhp9qucl0s6aq25legvlesfsgt0', '::1', '', 1596733537, '__ci_last_regenerate|i:1596733537;'),
('atkgdcatr6pltqf7n3koumkvla3jf2ol', '::1', '', 1596733539, '__ci_last_regenerate|i:1596733538;'),
('tf9qsuvmv8u35lcfd61aa3d6pis2m3fu', '::1', '', 1596733540, '__ci_last_regenerate|i:1596733540;'),
('qe2lhtdlkvjs1bduph9bf0g3buhju1vd', '::1', '', 1596733543, '__ci_last_regenerate|i:1596733543;'),
('gfakijrfvmecuhhk84fsift167tsqob0', '::1', '', 1596733547, '__ci_last_regenerate|i:1596733547;'),
('91j3do5i3nj9fk3ff8550npesp24io66', '::1', '', 1596733549, '__ci_last_regenerate|i:1596733549;'),
('ro0m0t5i47ioppn70pknsvj7bqp7mv71', '::1', '', 1596735053, '__ci_last_regenerate|i:1596735053;'),
('dfl4ma02i9ltv9jhmel09nirp6q66vrd', '::1', '', 1596735141, '__ci_last_regenerate|i:1596735141;'),
('0kqrqu7gvg0rf93svlkmvq9ot2jngp15', '::1', '', 1596735779, '__ci_last_regenerate|i:1596735779;'),
('tcpni1ck08u2pi1v8kr56s37bjmenb7p', '::1', '', 1596735838, '__ci_last_regenerate|i:1596735838;'),
('olpar5kjfap1p3bb3forrmht4us5j7u9', '::1', '', 1596735912, '__ci_last_regenerate|i:1596735912;'),
('16gf8vae6i547g58o8q2bo5k5ddcerup', '::1', '', 1596735916, '__ci_last_regenerate|i:1596735916;'),
('n2o4uff5mureoj0pr4j87mbpfdks1ntp', '::1', '', 1596735932, '__ci_last_regenerate|i:1596735932;'),
('3aq3uletbndvkhkfbdpddo6p9skdjn7h', '::1', '', 1596735939, '__ci_last_regenerate|i:1596735939;'),
('qolnoipb2a56cr3m8jdn00vv8v6ectit', '::1', '', 1596735952, '__ci_last_regenerate|i:1596735952;'),
('p5dgee59tosgoei7u1j8nm0mn46s6sg4', '::1', '', 1596736012, '__ci_last_regenerate|i:1596736012;'),
('gjsddtj4tltuidbf8ag8i7k7ivf2ntug', '::1', '', 1596736014, '__ci_last_regenerate|i:1596736014;'),
('82so911udfc0rb54gtpes4qo72i223tt', '::1', '', 1596736015, '__ci_last_regenerate|i:1596736015;'),
('vqhqckqkns6n9jjpf6hmp8v69svbb3ih', '::1', '', 1596736016, '__ci_last_regenerate|i:1596736016;'),
('mqukruooq00bt16ailb8p3tlpd86q6a3', '::1', '', 1596736017, '__ci_last_regenerate|i:1596736017;'),
('3kqp3gfbj378nbp21q8t5h55lt28sao8', '::1', '', 1596736018, '__ci_last_regenerate|i:1596736017;'),
('s174aqgo88deu6foti9j9397jt8sgakl', '::1', '', 1596736018, '__ci_last_regenerate|i:1596736018;'),
('fjm0vsvprm2n9nmdr2oub8dq1mcg2i6f', '::1', '', 1596736019, '__ci_last_regenerate|i:1596736019;'),
('m9ukb97kn5ckukidotia9kp5jj18l2nv', '::1', '', 1596736020, '__ci_last_regenerate|i:1596736020;'),
('4otgnt8dl7ud8qvl940s2dhies74gqv4', '::1', '', 1596736020, '__ci_last_regenerate|i:1596736020;'),
('srtmg2djoclbtqofi4e1u0m679ndl73d', '::1', '', 1596736021, '__ci_last_regenerate|i:1596736021;'),
('2rbs1ijqnsr8bp6i0blja06oqgeuc75j', '::1', '', 1596736022, '__ci_last_regenerate|i:1596736022;'),
('c8c3q0an4psd7ohbd99h5nnlk0lcea1k', '::1', '', 1596736022, '__ci_last_regenerate|i:1596736022;'),
('rqr2osbudvqgajtkq7f9mhq4m6tnimjc', '::1', '', 1596736023, '__ci_last_regenerate|i:1596736023;'),
('iuujov9dof4ilp48187kfc4kvccg8gs0', '::1', '', 1596736024, '__ci_last_regenerate|i:1596736024;'),
('91q28r2lq802je9rhmbtei0vmribajpm', '::1', '', 1596736024, '__ci_last_regenerate|i:1596736024;'),
('mlvv50ekl3rsvb350kch9evo5e7qki4n', '::1', '', 1596736025, '__ci_last_regenerate|i:1596736025;'),
('iava67tqcmar8hcsuda9f4uu2hqq60en', '::1', '', 1596736026, '__ci_last_regenerate|i:1596736025;'),
('0p3lr2qdshra6r2bq9jp9v0duf96ll5b', '::1', '', 1596736026, '__ci_last_regenerate|i:1596736026;'),
('375u6ujrblt2prfelguc5g616g1qnrst', '::1', '', 1596736027, '__ci_last_regenerate|i:1596736027;'),
('83goj35ccqj7svoonh6ojacpasb9ud6k', '::1', '', 1596736027, '__ci_last_regenerate|i:1596736027;'),
('amqq25kisjp7epedfikb6kp0u234rtlp', '::1', '', 1596736028, '__ci_last_regenerate|i:1596736028;'),
('h9tikbukfbe0dsgopo6mb04lqbjr2a5j', '::1', '', 1596736029, '__ci_last_regenerate|i:1596736028;'),
('n6djfltf7qvhgk0ea3kn2b7a0lvl59ie', '::1', '', 1596736031, '__ci_last_regenerate|i:1596736031;'),
('gl6721eih4igipdfr7326a3f7tf80ugt', '::1', '', 1596736033, '__ci_last_regenerate|i:1596736033;'),
('rrqj61q4v78cius4tpvvbe6pco147ojd', '::1', '', 1596736034, '__ci_last_regenerate|i:1596736034;'),
('6eu7s1v73c68012cq2no4ll2puu2jifa', '::1', '', 1596736034, '__ci_last_regenerate|i:1596736034;'),
('l4jnfjg7tgolg85ebinl9799pq23itg6', '::1', '', 1596736035, '__ci_last_regenerate|i:1596736035;'),
('11jvomd6umhne8h1qljbkrsuc7k89o93', '::1', '', 1596736036, '__ci_last_regenerate|i:1596736036;'),
('3386gcinmqtikch8os6valkolln91vb2', '::1', '', 1596736036, '__ci_last_regenerate|i:1596736036;'),
('4g0cicfpa24mheifvdun8ifav0dinfej', '::1', '', 1596736037, '__ci_last_regenerate|i:1596736037;'),
('ai5ehf8ofg3fu8iiqp3qdb9mljnur80m', '::1', '', 1596736039, '__ci_last_regenerate|i:1596736039;'),
('2df5svvrlrb12k3i8dllo44h042kaknq', '::1', '', 1596736042, '__ci_last_regenerate|i:1596736041;'),
('n1uusvkc7islff3baqal7sra1okh6t84', '::1', '', 1596736046, '__ci_last_regenerate|i:1596736045;'),
('q7huecbk0ta5q87ran6556h2bjeahdgn', '::1', '', 1596736065, '__ci_last_regenerate|i:1596736065;'),
('0jogq1gdrqnauqo63o9gvr4lvlbnhafb', '::1', '', 1596736069, '__ci_last_regenerate|i:1596736069;'),
('ol6qfkfofo14oudh5bveia872vk3b9jo', '::1', '', 1596736208, '__ci_last_regenerate|i:1596736208;'),
('qr7a8bo780fu4thpqj9cbtgsv39h5fec', '::1', '', 1596736246, '__ci_last_regenerate|i:1596736246;'),
('9t272ub9rq0jomglc1et3mv1ftj22e2f', '::1', '', 1596736255, '__ci_last_regenerate|i:1596736255;'),
('c87571a5229ltclmfh927d7dedjgrco6', '::1', '', 1596736402, '__ci_last_regenerate|i:1596736402;'),
('aos8d5b6pnfma4qkqv6vsta943la0deu', '::1', '', 1596736410, '__ci_last_regenerate|i:1596736410;'),
('r3pd7t926mt1vb689eh0i5f2680mjifh', '::1', '', 1596736412, '__ci_last_regenerate|i:1596736411;'),
('upvjng463joemd8ona5j2cgd6647fnap', '::1', '', 1596736519, '__ci_last_regenerate|i:1596736519;'),
('kqfubuoo9kb2jcdahs648cg9902r0k5p', '::1', '', 1596736534, '__ci_last_regenerate|i:1596736534;'),
('s2ehm5c899k7ibouftmlrjlmj2nh3pd3', '::1', '', 1596736536, '__ci_last_regenerate|i:1596736536;'),
('9s1a6kjhtttug88kp8087mk76503lpv4', '::1', '', 1596736546, '__ci_last_regenerate|i:1596736545;'),
('kq95m92shn6hp90tq44tesmjq5of12ps', '::1', '', 1596736581, '__ci_last_regenerate|i:1596736581;'),
('krga7eo0q6ge91uc0nk8hjk29vg2q1qu', '::1', '', 1596736582, '__ci_last_regenerate|i:1596736582;'),
('7nllq47cm7db6ovc74a3ab1bnubgg8f8', '::1', '', 1596736591, '__ci_last_regenerate|i:1596736591;'),
('43e67mbe5mq097dob5qvfc4m5n9l819q', '::1', '', 1596737243, '__ci_last_regenerate|i:1596737243;'),
('i08qq5qq0n04unhrue0vd326sjelcpg8', '::1', '', 1596737246, '__ci_last_regenerate|i:1596737246;'),
('dteiuiaa94e6oslh0um91dqkfvs7maj8', '::1', '', 1596737257, '__ci_last_regenerate|i:1596737256;'),
('k36gn3msmc003dfgne43sqmai9lqu0cl', '::1', '', 1596737355, '__ci_last_regenerate|i:1596737355;'),
('0idiuntr3u3lp1s8dlikcrcjeeeb12c6', '::1', '', 1596737366, '__ci_last_regenerate|i:1596737366;'),
('kakvluqao3r8h931a8ss42ngcu13ad19', '::1', '', 1596737373, '__ci_last_regenerate|i:1596737373;'),
('f1ljud47rfnuso23jv0lkrs4jfcukrqc', '::1', '', 1596737445, '__ci_last_regenerate|i:1596737445;'),
('le0uf306r2965f4kqdc6rojj9aot5kpp', '::1', '', 1596737449, '__ci_last_regenerate|i:1596737449;'),
('rdn7akpkd8vp1rugb0slpunibamgn771', '::1', '', 1596737465, '__ci_last_regenerate|i:1596737465;'),
('qpqo31vmhaua8eilma6p3m23jl629v7u', '::1', '', 1596737471, '__ci_last_regenerate|i:1596737471;'),
('qhjuq557p7lffekroropeli5b5aa6foj', '::1', '', 1596737474, '__ci_last_regenerate|i:1596737474;'),
('feuv7f5qa9be7h69lhlv5ukfpbc2jn0g', '::1', '', 1596737482, '__ci_last_regenerate|i:1596737482;'),
('l57ggraruqhccugm0b03lo2gc98bpm2u', '::1', '', 1596737485, '__ci_last_regenerate|i:1596737485;'),
('d4a4m6o2cju02actp81ede02kbi0aipk', '::1', '', 1596737490, '__ci_last_regenerate|i:1596737490;'),
('feij06i7dc5dnl6auolobjmj38lknerd', '::1', '', 1596737494, '__ci_last_regenerate|i:1596737494;'),
('ksf73rs8uggiv9ai06o0mmeu9bn1beqs', '::1', '', 1596737498, '__ci_last_regenerate|i:1596737498;'),
('psh5ts3fnbevo1agv8fako328u3lpl0e', '::1', '', 1596737517, '__ci_last_regenerate|i:1596737516;'),
('i9p2fbafckng7j0dq2v1gqq30qr32sul', '::1', '', 1596737521, '__ci_last_regenerate|i:1596737521;'),
('p1t1tca1vl7005sfafgqr8de4toavh2q', '::1', '', 1596796692, '__ci_last_regenerate|i:1596796690;'),
('3qb9esqja3aluihj76ha26smild6f52e', '::1', '', 1596814886, '__ci_last_regenerate|i:1596814884;'),
('e0ndp1oodepvvco5vgp489v2rqlcgdof', '::1', '', 1596880330, '__ci_last_regenerate|i:1596880330;'),
('3u85dchf76h0lu1inlq84pjdumfba81n', '::1', '', 1596989102, '__ci_last_regenerate|i:1596989102;'),
('vqvdlbmdoi22lm36lul2qi8k0eqe4ins', '::1', '', 1596992587, '__ci_last_regenerate|i:1596992586;'),
('jtr4n8movli8qpilqeg1t0iknlop9mom', '::1', '', 1596996388, '__ci_last_regenerate|i:1596996388;'),
('icbgpt46v2mgkb130j2bribcs4p7v2g8', '::1', '', 1597066742, '__ci_last_regenerate|i:1597066694;'),
('g3deg1c8f0o03jgp85e2sq561dih9dgu', '::1', '', 1597070025, '__ci_last_regenerate|i:1597070025;'),
('3fkkjbcjadb8v6j2cb2iohobaf8u6jr3', '::1', '', 1597070087, '__ci_last_regenerate|i:1597070087;'),
('5t8hf7kaqkqddl7sc15o8d8ehmfaqcff', '::1', '', 1597070111, '__ci_last_regenerate|i:1597070111;user_id|s:1:"1";is_logged_in|b:1;'),
('qsbdg29damji5bn219e4qcrnhf891ies', '::1', '', 1597070111, '__ci_last_regenerate|i:1597070111;'),
('54j53g3d4oa1s6ue937qt0qpci0rs3ps', '::1', '', 1597070163, '__ci_last_regenerate|i:1597070163;'),
('odeadq85el3qphn37sj75tre23gkd70e', '::1', '', 1597070168, '__ci_last_regenerate|i:1597070168;'),
('cnod41kvq3tuakkapesjrjnlpjor6oru', '::1', '', 1597158450, '__ci_last_regenerate|i:1597158446;'),
('krps3lakv218divapv5dapdja7fam1re', '::1', '', 1597161444, '__ci_last_regenerate|i:1597161444;'),
('c23sfh6hqdjv8mnc7mocjckff7sfl06v', '::1', '', 1597171630, '__ci_last_regenerate|i:1597171629;'),
('o4ma7vb0f3lgh8ntketagekmb21ujga4', '::1', '', 1597171646, '__ci_last_regenerate|i:1597171646;'),
('knd6m6p09a9cun48fn8dg1ks0632n3qh', '::1', '', 1597171697, '__ci_last_regenerate|i:1597171696;'),
('3571heaest870f7jbds8d148tbo0a7kb', '::1', '', 1597171697, '__ci_last_regenerate|i:1597171697;'),
('2q2kfm3sbdvfo781ra6ec3av2t4e4jfq', '::1', '', 1597171699, '__ci_last_regenerate|i:1597171698;'),
('1hf4d75pk65inavh4dq778j8sr8toce1', '::1', '', 1597171713, '__ci_last_regenerate|i:1597171713;'),
('hhtsj20id7j68jkehus5ujrcu06rt6ep', '::1', '', 1597171715, '__ci_last_regenerate|i:1597171715;'),
('avb9jaaf3umhes5vbluckfnl97rom3s8', '::1', '', 1597171715, '__ci_last_regenerate|i:1597171715;'),
('hq8v77k5e4351nk05q38vdtrhvelgk5v', '::1', '', 1597171719, '__ci_last_regenerate|i:1597171719;'),
('3us4jou31v3f0kpf8usftl2v64hsvmlv', '::1', '', 1597171729, '__ci_last_regenerate|i:1597171728;'),
('ne71v1im8kjnjaeiv2vr9tq88cqmg67k', '::1', '', 1597171751, '__ci_last_regenerate|i:1597171751;'),
('68csm58ik63sk8st4472fijgamgr1p9q', '::1', '', 1597171755, '__ci_last_regenerate|i:1597171755;'),
('6k7tdvfl5dv74aaqn2nef0o2vmgnntcs', '::1', '', 1597171755, '__ci_last_regenerate|i:1597171755;'),
('g59b9edq1a8010brkcefnqh3ddgp445m', '::1', '', 1597171758, '__ci_last_regenerate|i:1597171758;'),
('0nkp0hccipd5mnos7k62ejmmb59le6vi', '::1', '', 1597172470, '__ci_last_regenerate|i:1597172470;'),
('72juohhcgfdhg8anvss83u6nbv351o2l', '::1', '', 1597172475, '__ci_last_regenerate|i:1597172475;'),
('6bclo8b9bh4030qak71bbv241eqcd1jv', '::1', '', 1597172487, '__ci_last_regenerate|i:1597172487;'),
('fo1v49c86534l3bk1d3n77fqiktt44on', '::1', '', 1597172497, '__ci_last_regenerate|i:1597172497;'),
('o9hhgghudp0bqqvahin8bkkn46r8tru8', '::1', '', 1597172857, '__ci_last_regenerate|i:1597172857;'),
('bp7u2i2phv4n46ahbil9h3j3m207187g', '::1', '', 1597172858, '__ci_last_regenerate|i:1597172858;'),
('tk2mrgukihp9bl7tg8na3tedhr53t2au', '::1', '', 1597172922, '__ci_last_regenerate|i:1597172921;'),
('r8pc3plcn6gj9uu4ephlj48vbf6gb6dm', '::1', '', 1597172988, '__ci_last_regenerate|i:1597172988;user_id|s:1:"1";is_logged_in|b:1;'),
('k9hkeq27va3ndkhvkfbvfo8ep5n75ftc', '::1', '', 1597172988, '__ci_last_regenerate|i:1597172988;'),
('igscto8011qbfea6ld4kcu5ar1738mob', '::1', '', 1597172995, '__ci_last_regenerate|i:1597172995;'),
('up9gv1fgh2oi2pt5q1gi1jaje95de6c4', '::1', '', 1597172995, '__ci_last_regenerate|i:1597172995;'),
('b1qoklg2kigmjeq7nfmr14u827pe4l6r', '::1', '', 1597172995, '__ci_last_regenerate|i:1597172995;'),
('f3mi4psae28sbnkp0nq90gahsssbfu3i', '::1', '', 1597172995, '__ci_last_regenerate|i:1597172995;'),
('3v4jd3uptu2j1jrpcpaih74mojuaerc9', '::1', '', 1597172995, '__ci_last_regenerate|i:1597172995;'),
('e9nv3dcrc3e57kt6n2q5o9n06sgl54st', '::1', '', 1597172996, '__ci_last_regenerate|i:1597172996;'),
('tq766shjlcvdkoflucq5uam73f1lh2mq', '::1', '', 1597172996, '__ci_last_regenerate|i:1597172996;'),
('lcfpa7cnamj40i0tic8iarn2u2tofk3h', '::1', '', 1597173006, '__ci_last_regenerate|i:1597173006;'),
('foeggfdlctbrc6033tf7am1hmno59t9d', '::1', '', 1597173011, '__ci_last_regenerate|i:1597173011;'),
('omm8g3rj4rhsfrkf6sajb0b1avff9h99', '::1', '', 1597173016, '__ci_last_regenerate|i:1597173016;'),
('il8r8ees0toan8pd8e3ni2jc5u9us4l9', '::1', '', 1597173310, '__ci_last_regenerate|i:1597173057;'),
('1sg9ve6gnggjvj0nf1c72cutnmd7an2u', '::1', '', 1597173066, '__ci_last_regenerate|i:1597173066;'),
('mpc9c42herbpt8t582j2si7tdkpganus', '::1', '', 1597173129, '__ci_last_regenerate|i:1597173129;'),
('pj2bi16gclrdlajib8cheuq4aombsjcj', '::1', '', 1597173538, '__ci_last_regenerate|i:1597173425;'),
('l9hpp9a6loauh2iv893umb6aegtfpqij', '::1', '', 1597241644, '__ci_last_regenerate|i:1597241643;'),
('bgeurvdr5bgrkob7dnopta5367it3t4e', '::1', '', 1597241644, '__ci_last_regenerate|i:1597241643;'),
('djbiiupgct1oifqdaki0k6dqclut3d6m', '::1', '', 1597241644, '__ci_last_regenerate|i:1597241643;user_id|s:1:"1";is_logged_in|b:1;'),
('dam1aftjermsf3g1mhrlac5make2228k', '::1', '', 1597241644, '__ci_last_regenerate|i:1597241644;'),
('06jbich4gpt7fofbdtmc32eal4bs1s33', '::1', '', 1597241659, '__ci_last_regenerate|i:1597241659;'),
('cog1vi3iieadcdvn9gard8evtucaokbi', '::1', '', 1597241702, '__ci_last_regenerate|i:1597241702;'),
('tdbdarvofsqsmnejj9bbifan4p08r36i', '::1', '', 1597241711, '__ci_last_regenerate|i:1597241711;'),
('hn3be5pub6putkbf0vkbks03ooe24nut', '::1', '', 1597241720, '__ci_last_regenerate|i:1597241720;'),
('udls4b9pb5umd2qd03ppgsovkfmqjkh7', '::1', '', 1597241723, '__ci_last_regenerate|i:1597241723;'),
('ls1l67fbco0qr3q01c8gianumvrvhiq9', '::1', '', 1597241725, '__ci_last_regenerate|i:1597241725;'),
('o7hbfhddhimg45t1oj8um640572v53i0', '::1', '', 1597241733, '__ci_last_regenerate|i:1597241733;'),
('bgm2lqdcfqkv1enr0uqn4g4crjo2d957', '::1', '', 1597241744, '__ci_last_regenerate|i:1597241744;'),
('bsdq987f0vs1cv4g2hvoggcjjshqa5ps', '::1', '', 1597241778, '__ci_last_regenerate|i:1597241778;'),
('ri4t74jre7qcsec54m0up6dgm2u92fta', '::1', '', 1597241811, '__ci_last_regenerate|i:1597241811;'),
('sa4lhscnpg7fqkg9b888ue4b1bvimo7n', '::1', '', 1597241834, '__ci_last_regenerate|i:1597241834;'),
('sr3eo67dsfq4srobcflgcurd8v648ef8', '::1', '', 1597241837, '__ci_last_regenerate|i:1597241837;'),
('nalct6o8lq64a196nj26vu8tl9m9t2a1', '::1', '', 1597242074, '__ci_last_regenerate|i:1597242074;'),
('p5r5v08bprurgo2a92rqlvjsl68495q1', '::1', '', 1597242108, '__ci_last_regenerate|i:1597242108;user_id|s:1:"1";is_logged_in|b:1;'),
('8c0ujc8heqjoj4jqua3qtuuauv5k8grs', '::1', '', 1597242109, '__ci_last_regenerate|i:1597242109;'),
('ah7jfcth5e5kgg4gadrd0v3oaquld6i4', '::1', '', 1597242172, '__ci_last_regenerate|i:1597242172;'),
('8257deq8btcl9q8kt6s1prcnuj2gkjaf', '::1', '', 1597242191, '__ci_last_regenerate|i:1597242191;'),
('oo29dd2a1jmdqvdoe0hmta3u08ujne7f', '::1', '', 1597242456, '__ci_last_regenerate|i:1597242456;user_id|s:1:"1";is_logged_in|b:1;'),
('g8n64ei3louurbc568crev6dnvq0012i', '::1', '', 1597242456, '__ci_last_regenerate|i:1597242456;'),
('r2p7pv0p2iuu0163sn85a6ni78erqois', '::1', '', 1597242461, '__ci_last_regenerate|i:1597242461;'),
('n6cr5uppmj19qrid4h1cdp84p7a3rnog', '::1', '', 1597244581, '__ci_last_regenerate|i:1597244581;'),
('dglct5f9mr5bv4v6ajroji2cf2ok8slq', '::1', '', 1597244585, '__ci_last_regenerate|i:1597244585;'),
('uedd29qofdqi3jkne83093hgmgq6hr8t', '::1', '', 1597244617, '__ci_last_regenerate|i:1597244617;'),
('detij57tc79thmm5mq2nivaj8qohh760', '::1', '', 1597244624, '__ci_last_regenerate|i:1597244624;'),
('j53mngh3rtjgcsmj8jb19eghpjnkdnp6', '::1', '', 1597244810, '__ci_last_regenerate|i:1597244810;user_id|s:1:"1";is_logged_in|b:1;'),
('u3a62sr6ic1dhaaj01ljk027i23pqbl0', '::1', '', 1597244810, '__ci_last_regenerate|i:1597244810;'),
('a3nnqv2iqinpeivafcgneqr6roh44hov', '::1', '', 1597244990, '__ci_last_regenerate|i:1597244990;'),
('l28m4jegq8kh66du5el5kqjv04dje9cl', '::1', '', 1597244990, '__ci_last_regenerate|i:1597244990;'),
('bq8ppuhe0uo2vcaubir23vjk91a40h36', '::1', '', 1597245002, '__ci_last_regenerate|i:1597245002;'),
('kt1ae49ggqvt01cac46m9vm0jimd7pth', '::1', '', 1597245265, '__ci_last_regenerate|i:1597245265;'),
('srttgpg05vfi6u5o5o6mqtaimufedhrn', '::1', '', 1597245266, '__ci_last_regenerate|i:1597245266;'),
('liduhusktniaj1bo79i3vnobnl6aq767', '::1', '', 1597245274, '__ci_last_regenerate|i:1597245274;'),
('g58np79pkmlivi0jdtgmanm6o8474752', '::1', '', 1597245336, '__ci_last_regenerate|i:1597245336;'),
('qe0el3kkhl7o68ghhk6lkdemgbelbe2n', '::1', '', 1597245336, '__ci_last_regenerate|i:1597245336;'),
('ppdupfee4de7973cnra90n67t73uq3d0', '::1', '', 1597245343, '__ci_last_regenerate|i:1597245343;'),
('6flsi5ecrqvf6bo88idmcsitgkmtdiah', '::1', '', 1597245369, '__ci_last_regenerate|i:1597245369;'),
('0dba3s2f5i675fki6e67pe1g142o9917', '::1', '', 1597245370, '__ci_last_regenerate|i:1597245369;'),
('jgndf06q0j3355atpjqg44o460gb9etv', '::1', '', 1597245374, '__ci_last_regenerate|i:1597245374;'),
('fopvhplvn2e7g6p8qiiqaj8m6qot976h', '::1', '', 1597245422, '__ci_last_regenerate|i:1597245422;'),
('sundvc3gnii6q2m5b2s8pn2tiueioou2', '::1', '', 1597245423, '__ci_last_regenerate|i:1597245423;'),
('us00ani1f9a4dc619gk1df5p3h9c59pl', '::1', '', 1597245428, '__ci_last_regenerate|i:1597245428;'),
('6i06pj586be9kuo312brco5i5aus2opk', '::1', '', 1597245460, '__ci_last_regenerate|i:1597245460;'),
('ovt5rn2fpi31q7kg6inavb51ab3t8gql', '::1', '', 1597245460, '__ci_last_regenerate|i:1597245460;'),
('3a69qbjqumpts2scafqb8452k1j27v8q', '::1', '', 1597245464, '__ci_last_regenerate|i:1597245464;'),
('k6qpi1mseiavnmsjq6rje16afqtrelmj', '::1', '', 1597245524, '__ci_last_regenerate|i:1597245524;'),
('v1lmtcjfg9ed34lbqhpa6da55cafihmu', '::1', '', 1597245527, '__ci_last_regenerate|i:1597245527;'),
('00a3ao5d36ac9ujobggha5vtdf4e4fmo', '::1', '', 1597245584, '__ci_last_regenerate|i:1597245584;'),
('vbn3qa683gghttr25tu7dvmu3b9lmcss', '::1', '', 1597245584, '__ci_last_regenerate|i:1597245584;'),
('9p39fq1mgdrbajt3af1qo0ifj44g14vp', '::1', '', 1597245587, '__ci_last_regenerate|i:1597245587;'),
('mvnrmkeji41811bqm6p331676nbl56i9', '::1', '', 1597245599, '__ci_last_regenerate|i:1597245599;'),
('oumld2hh0t9dng6ca1s71c8g65pfavqo', '::1', '', 1597245599, '__ci_last_regenerate|i:1597245599;'),
('vmlo1p4iv8juten43slfseapsasiclof', '::1', '', 1597245604, '__ci_last_regenerate|i:1597245604;'),
('a7itm8u8hd3pqo1mae9g1198em8f6g5d', '::1', '', 1597245658, '__ci_last_regenerate|i:1597245658;'),
('8i3ihimbccnvalh36k6ngqq7ck2sleu5', '::1', '', 1597245658, '__ci_last_regenerate|i:1597245658;'),
('bdh401iavi8ruoie2qd73s82kl3vn5t7', '::1', '', 1597245661, '__ci_last_regenerate|i:1597245661;'),
('d21kpsnt53odp9p1jpac4eiokse2chdu', '::1', '', 1597245743, '__ci_last_regenerate|i:1597245743;'),
('0lbj0q6p8q0j6l9s04hg1g03vl7ipevb', '::1', '', 1597245743, '__ci_last_regenerate|i:1597245743;'),
('9h6m9gos2pu7feqfogr7k02rra8v5ls5', '::1', '', 1597245746, '__ci_last_regenerate|i:1597245746;'),
('7jt6gghqr50to2pmrer17ombdbh2lemk', '::1', '', 1597245780, '__ci_last_regenerate|i:1597245780;'),
('04pekq1h9eti512lpvvo8urrv869tot5', '::1', '', 1597245780, '__ci_last_regenerate|i:1597245780;'),
('ltdies1q1plc7t7sod3dcbh8mvcna2kk', '::1', '', 1597245783, '__ci_last_regenerate|i:1597245783;'),
('u648fvar6ju652b3srjl4hgse3740s9s', '::1', '', 1597245833, '__ci_last_regenerate|i:1597245833;'),
('hckp0d47nef21fod6kr4gmrsd3432l8g', '::1', '', 1597245840, '__ci_last_regenerate|i:1597245840;'),
('knjcp6q2pqdiu8q7f6v89ehm6l6pfb3u', '::1', '', 1597245895, '__ci_last_regenerate|i:1597245895;'),
('u4fenfp6kjj0dlip686fsmnnvahhsup2', '::1', '', 1597245895, '__ci_last_regenerate|i:1597245895;'),
('t3qm1l6u7e17tja7dke4couadabvflo8', '::1', '', 1597245900, '__ci_last_regenerate|i:1597245900;'),
('nggadvpcbm5m4lsupagvvbnlb59q2aqj', '::1', '', 1597245911, '__ci_last_regenerate|i:1597245911;'),
('9i63og7560e09ff7194b4l54l3msiqg4', '::1', '', 1597245911, '__ci_last_regenerate|i:1597245911;'),
('kp8de24evne5colclaud4r85kf36hkmu', '::1', '', 1597245919, '__ci_last_regenerate|i:1597245919;'),
('7stdmo36pto0etf7n5fndpuptf5o1cqe', '::1', '', 1597246067, '__ci_last_regenerate|i:1597246067;'),
('oaop9tu9r801sv01k1sbtj56qrbtvfpj', '::1', '', 1597246067, '__ci_last_regenerate|i:1597246067;'),
('1tdbj6cg6ufgivg91vjgmk8isi0fofe8', '::1', '', 1597246175, '__ci_last_regenerate|i:1597246175;'),
('0po23s2darupj3vopru4c315cd0k77vt', '::1', '', 1597246175, '__ci_last_regenerate|i:1597246175;'),
('u4cm85jb5qpok32708l139tbr0iueukt', '::1', '', 1597246199, '__ci_last_regenerate|i:1597246199;'),
('tk02nsa0e2m433ma67fj8onu6n7ao5b0', '::1', '', 1597246199, '__ci_last_regenerate|i:1597246199;'),
('nrag2v3gac9lhrvddoi45fldp8a49449', '::1', '', 1597246203, '__ci_last_regenerate|i:1597246203;'),
('odg86nsrhdbbg2ld4d0l1vuaee7v7moc', '127.0.0.1', '', 1597246240, '__ci_last_regenerate|i:1597246240;'),
('m8r31gbph641pb9s5hkqeecs9bsg51on', '127.0.0.1', '', 1597246245, '__ci_last_regenerate|i:1597246245;'),
('e1925158feilk9ju4qfa1i92329eeeh3', '127.0.0.1', '', 1597246254, '__ci_last_regenerate|i:1597246254;'),
('3ld5ctpi2pgfuq3lrnundgchicefcj7t', '127.0.0.1', '', 1597246285, '__ci_last_regenerate|i:1597246285;'),
('oug571d6mjorsehm2ukuk1aoliv5ju5p', '::1', '', 1597246285, '__ci_last_regenerate|i:1597246285;');
INSERT INTO `microsidd_ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('r5j6h3sjnlthr79ulngglop1t1fl9dop', '::1', '', 1597246286, '__ci_last_regenerate|i:1597246286;'),
('5rq7obss8h2e9786840vbe5ss67un96t', '127.0.0.1', '', 1597246379, '__ci_last_regenerate|i:1597246379;'),
('m4t34bfk6b2tdfko6unij5bhf40hiu4a', '::1', '', 1597246381, '__ci_last_regenerate|i:1597246381;'),
('g24eak874s7jco53qgilpk4ismce6brn', '::1', '', 1597246381, '__ci_last_regenerate|i:1597246381;'),
('97scktb2v9d7gurukqfj4kbk0olej12v', '127.0.0.1', '', 1597246417, '__ci_last_regenerate|i:1597246417;'),
('jddt6moi9bbpamebm1g292qs2d9k4nej', '::1', '', 1597246418, '__ci_last_regenerate|i:1597246418;'),
('k7j87ksrifjd5luuau3eq7tjqr9dgjod', '::1', '', 1597246418, '__ci_last_regenerate|i:1597246418;'),
('9rqa5j7nfukncpb32bbk688esprsth3q', '127.0.0.1', '', 1597246444, '__ci_last_regenerate|i:1597246444;'),
('f3geomtjl2l42h3b4qbuudltju03p8u7', '::1', '', 1597246445, '__ci_last_regenerate|i:1597246445;'),
('pb4d2q9mfh4lr9norcm4n501flnki3es', '::1', '', 1597246446, '__ci_last_regenerate|i:1597246445;'),
('1u6c62ro64673osrfck396ejp4cod50r', '::1', '', 1597246590, '__ci_last_regenerate|i:1597246590;'),
('h3440ujh8amt32ufjq2tk48lc6bgvn48', '::1', '', 1597246595, '__ci_last_regenerate|i:1597246594;'),
('urahlsul061ei2ucek2000j9ioa8m7af', '127.0.0.1', '', 1597246633, '__ci_last_regenerate|i:1597246633;'),
('t6rs1f22ih088v56hf0ho4g3lsrrc45f', '::1', '', 1597246634, '__ci_last_regenerate|i:1597246634;'),
('v7r1m7lpkvjqqfusr55u2va7quc5t4r2', '::1', '', 1597246634, '__ci_last_regenerate|i:1597246634;'),
('rkebu1i4l3e01g9ajpg86jmbkm672rd5', '::1', '', 1597246641, '__ci_last_regenerate|i:1597246641;'),
('o8d1ccckfas1mpo2d401pspvu6k0uh1q', '127.0.0.1', '', 1597246661, '__ci_last_regenerate|i:1597246661;'),
('j3f6t770lqmif0fos228djftdp4d5hlb', '::1', '', 1597246662, '__ci_last_regenerate|i:1597246662;'),
('7ap4334c9r1v7vkvt9ca15v0l3go3k0c', '::1', '', 1597246662, '__ci_last_regenerate|i:1597246662;'),
('bgiprd40ejtuffgp1j6asigb08uj6ds0', '::1', '', 1597246666, '__ci_last_regenerate|i:1597246666;'),
('nd6a86rieckim4c5o8l4r1mmi0bmlbfr', '127.0.0.1', '', 1597246676, '__ci_last_regenerate|i:1597246676;'),
('cs8440j5arrjjr7ihnglq9pb2qi7soip', '::1', '', 1597246677, '__ci_last_regenerate|i:1597246676;'),
('l6ljkmgmht6jsm5ms02lq151b0g27l7i', '::1', '', 1597246677, '__ci_last_regenerate|i:1597246677;'),
('fg4cdrrtlb5i6ap63elb8rhlljl87s0s', '::1', '', 1597246681, '__ci_last_regenerate|i:1597246681;'),
('6nrhcjhfa06m78r7meab0ev4kbh72002', '::1', '', 1597246690, '__ci_last_regenerate|i:1597246690;'),
('mfuu7mm2koc0vo9jan03s4sjlcj57r2s', '::1', '', 1597246697, '__ci_last_regenerate|i:1597246697;'),
('1frnfga6rid09d7q8j1jn6mqiiq80nqv', '127.0.0.1', '', 1597246761, '__ci_last_regenerate|i:1597246761;'),
('q49b5p6h68mmsnr5ob05499cnp7loei5', '::1', '', 1597246762, '__ci_last_regenerate|i:1597246762;'),
('1kvvdpkkfca7ffpu6itv0p827vj3i4h7', '::1', '', 1597246762, '__ci_last_regenerate|i:1597246762;'),
('20k80vnvqem0927i85regdvdoeko31v4', '127.0.0.1', '', 1597246836, '__ci_last_regenerate|i:1597246836;'),
('mql545cqirf51toeaue5g74ci4c350r0', '::1', '', 1597246837, '__ci_last_regenerate|i:1597246837;'),
('6p38kqku8e35juatu00i6am40r59pjc0', '::1', '', 1597246837, '__ci_last_regenerate|i:1597246837;'),
('cfsvape2ksmmvqptn1hk0a9mq7tue66r', '::1', '', 1597246843, '__ci_last_regenerate|i:1597246843;'),
('lp187m61f78ch9h0q1hf7hklkbk3122a', '127.0.0.1', '', 1597246861, '__ci_last_regenerate|i:1597246861;'),
('qs373uhn78jroegip9b01r67o9nh62nq', '::1', '', 1597246862, '__ci_last_regenerate|i:1597246862;'),
('psb83ptik0ujmmvan8mvn4cok581kl5h', '::1', '', 1597246862, '__ci_last_regenerate|i:1597246862;'),
('sd371tjq65p569nsch3m6hvelisnhr86', '::1', '', 1597246865, '__ci_last_regenerate|i:1597246865;'),
('6n6om10t6u6db79b1de3b3t50gcbis8r', '127.0.0.1', '', 1597246888, '__ci_last_regenerate|i:1597246888;'),
('f55st046b60a7alqcasc0bkd0mket8o3', '127.0.0.1', '', 1597246951, '__ci_last_regenerate|i:1597246951;'),
('05gle42010m30hqsqflfifl8u8v3f8v4', '::1', '', 1597246952, '__ci_last_regenerate|i:1597246952;'),
('2pcqjnj2e0skc4h1obvgrqmebcng78v2', '::1', '', 1597246952, '__ci_last_regenerate|i:1597246952;'),
('silc8915mhp4m2arv42n77a84qifo733', '127.0.0.1', '', 1597247002, '__ci_last_regenerate|i:1597247002;'),
('40faohlapt0kd4376hi1hsl3uu14ak05', '::1', '', 1597247003, '__ci_last_regenerate|i:1597247003;'),
('1pv1eqb3j3ogqan9io21q03b70rcror5', '::1', '', 1597247004, '__ci_last_regenerate|i:1597247003;'),
('av92p1qe3h2h3d5tfq1bgrp4aaqipobf', '127.0.0.1', '', 1597247042, '__ci_last_regenerate|i:1597247042;'),
('lcsm6l22dqbrb922lcb5mbvbtu63tqen', '::1', '', 1597247044, '__ci_last_regenerate|i:1597247044;'),
('0h3jeehr006964g54t2iqqfr95bnaig7', '::1', '', 1597247044, '__ci_last_regenerate|i:1597247044;'),
('fqqbkkge9dfpiitvmako76jtoeilg3t5', '127.0.0.1', '', 1597247242, '__ci_last_regenerate|i:1597247242;'),
('lde67bk6ad6ag5ghv9d50eubjt1e2lrr', '::1', '', 1597247243, '__ci_last_regenerate|i:1597247243;'),
('icfkcd741h1cd04em7mas6l5alg84isg', '::1', '', 1597247244, '__ci_last_regenerate|i:1597247244;'),
('9g49dgg84ija2u4si3mc5l5lcnegpblg', '::1', '', 1597248074, '__ci_last_regenerate|i:1597248074;'),
('j2jmm5evck9sqnn0rjipq5edllhpapk4', '::1', '', 1597248075, '__ci_last_regenerate|i:1597248075;'),
('70lhdle6hbe6pb6bni73jc55hqqc5e55', '127.0.0.1', '', 1597248076, '__ci_last_regenerate|i:1597248076;'),
('58mpr6q6b77g9fi8l37gt24gs1sudjub', '127.0.0.1', '', 1597248163, '__ci_last_regenerate|i:1597248163;'),
('bc9fjn1qvd9vfo36r8uo0sals0m1vftq', '127.0.0.1', '', 1597248225, '__ci_last_regenerate|i:1597248225;'),
('ivvp0q4rdvs5rd7jcos1uj9eafvpmh5a', '::1', '', 1597248226, '__ci_last_regenerate|i:1597248226;'),
('fg5e3crmh9as7gd5qove69pugdiqcv3e', '::1', '', 1597248226, '__ci_last_regenerate|i:1597248226;'),
('s9tj7u6f273jd6popcg5figjbcubl93k', '127.0.0.1', '', 1597248242, '__ci_last_regenerate|i:1597248242;'),
('8b7i90ftg7j6uougtvi0v17iukb56mbu', '::1', '', 1597248244, '__ci_last_regenerate|i:1597248244;'),
('n5ukklj12s38c6rjsg55lbebdghj8b9a', '::1', '', 1597248244, '__ci_last_regenerate|i:1597248244;'),
('do563ttohppfbj24me477urm1pgeamj8', '::1', '', 1597248259, '__ci_last_regenerate|i:1597248259;'),
('hfn9vaekp4m3v372kr1eataom8ljesu3', '127.0.0.1', '', 1597248297, '__ci_last_regenerate|i:1597248297;'),
('king4neicrfgigi9m3e180d9rgnr0ork', '::1', '', 1597248298, '__ci_last_regenerate|i:1597248298;'),
('l9eac14vc2br6qut8qmkbt6ol30ftnmt', '::1', '', 1597248298, '__ci_last_regenerate|i:1597248298;'),
('5ufhfl3q637jbseaodu5gdik1ckidgoe', '127.0.0.1', '', 1597248394, '__ci_last_regenerate|i:1597248394;'),
('vvhecrvcrdug4bc2kf9g0hh2o8v97av0', '::1', '', 1597248395, '__ci_last_regenerate|i:1597248395;'),
('5r1or38q0hnmufc4slif0lfb966lse3v', '::1', '', 1597248396, '__ci_last_regenerate|i:1597248396;'),
('4vjngbusijccnaanfd6ddms2cocpq395', '127.0.0.1', '', 1597248407, '__ci_last_regenerate|i:1597248407;'),
('t7kfme4ej8tmiif56nvrtgkk2tkddrrt', '::1', '', 1597248408, '__ci_last_regenerate|i:1597248408;'),
('pb8bmcf4uiafcl0ahg6vm6eodl7bvg9o', '::1', '', 1597248408, '__ci_last_regenerate|i:1597248408;'),
('idsuflscho4athqun8g1pqkn0scavn12', '127.0.0.1', '', 1597248611, '__ci_last_regenerate|i:1597248611;'),
('f1fpmqb1mve35j2oqmv04d39bu26kmdd', '::1', '', 1597248612, '__ci_last_regenerate|i:1597248612;'),
('gnhbici9s39jd35b8coeeogsipl7h345', '::1', '', 1597248612, '__ci_last_regenerate|i:1597248612;'),
('qvuaubpadsmj6k6bniq6ip0jo0uf0sko', '127.0.0.1', '', 1597248682, '__ci_last_regenerate|i:1597248682;'),
('khci5dafkf065e9ac8j2bpd9ar1nvq7e', '::1', '', 1597248683, '__ci_last_regenerate|i:1597248683;'),
('loc7fjpa4bfjsrg28q3p9kba02kt6bs3', '::1', '', 1597248683, '__ci_last_regenerate|i:1597248683;'),
('c6k9rtn0p1k9omtn86vlbspj01cfjin3', '127.0.0.1', '', 1597248731, '__ci_last_regenerate|i:1597248731;'),
('9ejciglgh3vrb5jrfo7agkmks9antrhk', '::1', '', 1597248732, '__ci_last_regenerate|i:1597248732;'),
('s6g3camf59kntmv3udqncup9faols04u', '::1', '', 1597248732, '__ci_last_regenerate|i:1597248732;'),
('vcmk89qd1f3qpm4la1hl1nm162is3o17', '::1', '', 1597248747, '__ci_last_regenerate|i:1597248747;'),
('0ogfps54c6ddkjad53r8o100bn7a7alo', '127.0.0.1', '', 1597248747, '__ci_last_regenerate|i:1597248747;'),
('6a8mjjso8udguc2158a3qbi02af4r1pn', '::1', '', 1597248748, '__ci_last_regenerate|i:1597248748;'),
('mgiacj5rf3mlqb38uhorjlq7a6p9qd0b', '127.0.0.1', '', 1597248797, '__ci_last_regenerate|i:1597248797;'),
('riuprok0u2es7p8oii9o7pp6fv153lre', '::1', '', 1597248798, '__ci_last_regenerate|i:1597248798;'),
('c72ntl2jkdnvf9uk2kseiid7h4vkr09b', '::1', '', 1597248799, '__ci_last_regenerate|i:1597248799;'),
('1p30angmso22hrjt8agsi7hlj8olqn7d', '127.0.0.1', '', 1597248880, '__ci_last_regenerate|i:1597248880;'),
('bju6hk04q7b09n45c92c3dkndd0b1lgu', '::1', '', 1597248881, '__ci_last_regenerate|i:1597248881;'),
('6p54g4tjs2pkjqlsmhtvbbl6hhcjm2nu', '::1', '', 1597248882, '__ci_last_regenerate|i:1597248882;'),
('l4utpb3n667db2knun6rk999a1l8c553', '127.0.0.1', '', 1597249158, '__ci_last_regenerate|i:1597249157;'),
('v4e6jro5qbutdp8jod1pq6n5k905gl30', '::1', '', 1597249158, '__ci_last_regenerate|i:1597249158;'),
('cnljei98840mkhinkv9pgqre7fs7jbs2', '::1', '', 1597249159, '__ci_last_regenerate|i:1597249159;'),
('6433ng4bu09fcl6eav7grkleemgd67up', '::1', '', 1597249164, '__ci_last_regenerate|i:1597249164;'),
('7supo14vm8u27cigji182ooiei2fo81v', '127.0.0.1', '', 1597249165, '__ci_last_regenerate|i:1597249165;'),
('r55n1gdgqlosb1co8eael2ve8k60v2db', '::1', '', 1597249166, '__ci_last_regenerate|i:1597249166;'),
('k7ucjqri809ahin7522sn9m858a0iutq', '127.0.0.1', '', 1597249240, '__ci_last_regenerate|i:1597249240;'),
('oee7bt0vdp6r4llf5j82u3n63vbl4ul0', '::1', '', 1597249241, '__ci_last_regenerate|i:1597249241;'),
('m745ffrp8i1vjcc9bv3pll8td2trhqmt', '::1', '', 1597249241, '__ci_last_regenerate|i:1597249241;'),
('tk82090k3vhrrrvniu5s20i2i1pqf49m', '127.0.0.1', '', 1597249447, '__ci_last_regenerate|i:1597249447;'),
('tvdecige8g3sr470mhqlflqls8tjmtc0', '::1', '', 1597249449, '__ci_last_regenerate|i:1597249449;'),
('cil7n0q020e3fu40ftfqv2v5dkpbdutv', '::1', '', 1597249449, '__ci_last_regenerate|i:1597249449;'),
('8c44dtddpgr9lomu3of11o9ivgosnhpr', '127.0.0.1', '', 1597249469, '__ci_last_regenerate|i:1597249469;'),
('4prm19h96jphj0gg4mavr2c0j4u9fgg8', '::1', '', 1597249469, '__ci_last_regenerate|i:1597249469;'),
('rtmkf8chbk262ghlcauhb5cabt7e5r3i', '::1', '', 1597249470, '__ci_last_regenerate|i:1597249470;'),
('6g9c3jufn8mu32b41nkopipcmsfabivh', '::1', '', 1597249514, '__ci_last_regenerate|i:1597249514;'),
('pr0m27iqf5k7uon0sbbd08tlajk4o6kb', '127.0.0.1', '', 1597249609, '__ci_last_regenerate|i:1597249608;'),
('2pcuc6vtbppbjr0m3j12fc0j2ec77s3f', '::1', '', 1597249609, '__ci_last_regenerate|i:1597249609;'),
('4otol1vag0amt2jsjk842f6jevbrub0v', '::1', '', 1597249610, '__ci_last_regenerate|i:1597249610;'),
('rsv5tb6ros6jgnkj4qiu600o1fpjudt4', '127.0.0.1', '', 1597249645, '__ci_last_regenerate|i:1597249645;'),
('sntjf5l3798rpjeb1a2nsmn2v77fd9bq', '::1', '', 1597249646, '__ci_last_regenerate|i:1597249646;'),
('btr3iip1pt8je1srdhdihpc3d3hi95et', '::1', '', 1597249647, '__ci_last_regenerate|i:1597249647;'),
('papeb81htoh28hlbhfd6gori43b4a2mm', '127.0.0.1', '', 1597249726, '__ci_last_regenerate|i:1597249726;'),
('no5r7dvfggfnq2u5h4r4r7ni2duibgn9', '::1', '', 1597249727, '__ci_last_regenerate|i:1597249727;'),
('j57i8svuhmqvkb6f4bc9dqgfqpjd92sg', '::1', '', 1597249728, '__ci_last_regenerate|i:1597249728;'),
('a4mlieckc3p87gj1gsvmuh7uvcpmbpkf', '127.0.0.1', '', 1597249775, '__ci_last_regenerate|i:1597249775;'),
('m4phh1973rqda8vlhnd5vpck0ft5f5ml', '::1', '', 1597249777, '__ci_last_regenerate|i:1597249777;'),
('mqfoi0gtu616qhtaod19mhi2k7la3ic3', '::1', '', 1597249777, '__ci_last_regenerate|i:1597249777;'),
('v79vt56l2flk0oesf7lspjb6h7ig749k', '127.0.0.1', '', 1597249822, '__ci_last_regenerate|i:1597249822;'),
('6clt84v2e5k2minmi058bgmlhfpl7q9h', '::1', '', 1597249823, '__ci_last_regenerate|i:1597249823;'),
('f65bcbppe9rd96ocm1ishjn4pp4rkk9s', '::1', '', 1597249824, '__ci_last_regenerate|i:1597249823;'),
('d5qh6go82c4d1mvv4gqru1vdcfnrltgh', '127.0.0.1', '', 1597249836, '__ci_last_regenerate|i:1597249836;'),
('d7uh6o4uakeau6qjnhu703sm639pl8d5', '::1', '', 1597249837, '__ci_last_regenerate|i:1597249837;'),
('c9h9a7va2gfn3alvtb6p6p0prma4ugv8', '::1', '', 1597249837, '__ci_last_regenerate|i:1597249837;'),
('pa26jlao6cgp6o998ea5cb0o4m5cmffb', '127.0.0.1', '', 1597249857, '__ci_last_regenerate|i:1597249857;'),
('r23mnspbnm4rep4ilep64ucsgptjmh3b', '::1', '', 1597249858, '__ci_last_regenerate|i:1597249858;'),
('6rjmfrtkieiu3n61i8fl4jaap0jlmdt7', '::1', '', 1597249860, '__ci_last_regenerate|i:1597249860;'),
('1vpnb8pah8lk5lk6ucr4h22v3h4gvgjl', '::1', '', 1597249904, '__ci_last_regenerate|i:1597249904;'),
('u1ik0fq86v4i9vk4jhmc5e47kr8cnqhg', '::1', '', 1597249905, '__ci_last_regenerate|i:1597249904;'),
('gq08cvuit9t0a44aiohf94l7nho8ovjg', '127.0.0.1', '', 1597249906, '__ci_last_regenerate|i:1597249906;'),
('hsc82e21gbjc8mh8038mbjcbgmemfgab', '127.0.0.1', '', 1597249920, '__ci_last_regenerate|i:1597249920;'),
('72lpu03bct7qti1qspi0mr2b2okptndm', '127.0.0.1', '', 1597249959, '__ci_last_regenerate|i:1597249959;'),
('ce2oukt3jjgnn8qug21lm5fsqc1us95f', '::1', '', 1597249959, '__ci_last_regenerate|i:1597249959;'),
('oircm6ei3d6lgr9vltpk8s9tp5sh91ft', '::1', '', 1597249960, '__ci_last_regenerate|i:1597249960;'),
('l1no6t8vj21mith7m4u33dbm6qqlegr3', '127.0.0.1', '', 1597249969, '__ci_last_regenerate|i:1597249969;'),
('4s6o3pr8r243b51pdletbmnkhc882rjr', '::1', '', 1597250105, '__ci_last_regenerate|i:1597250104;'),
('18gpjkv4n868257lonk41ms1cqi8vmke', '::1', '', 1597250216, '__ci_last_regenerate|i:1597250215;'),
('k6e51usvd4g16mb3haqm8lal1k7n1ev5', '::1', '', 1597250219, '__ci_last_regenerate|i:1597250219;'),
('jifbo89k2vpjhvg1nf91u7kpui2nnuuh', '::1', '', 1597250223, '__ci_last_regenerate|i:1597250223;'),
('654s8g59ufp2hes4dtdusgprmjm4s7ct', '::1', '', 1597250304, '__ci_last_regenerate|i:1597250303;'),
('d43geo75cgn2cll8ppoebnelmhs0tns8', '::1', '', 1597250304, '__ci_last_regenerate|i:1597250304;'),
('9m3grfubu2c1agp568kgvv1r20pnuuqc', '::1', '', 1597250306, '__ci_last_regenerate|i:1597250306;'),
('qdq9al6u8tql01vubfh4gp6jkev2emgi', '127.0.0.1', '', 1597250307, '__ci_last_regenerate|i:1597250307;'),
('34udmqa2vrs33aoffchignhnl6aonra1', '::1', '', 1597250333, '__ci_last_regenerate|i:1597250332;'),
('aq2brm134vn31rp0nkjl74lel4hbsiea', '::1', '', 1597250336, '__ci_last_regenerate|i:1597250336;'),
('fd6knof11ul7luj0c4ovfg9idh44qi6h', '::1', '', 1597250347, '__ci_last_regenerate|i:1597250347;'),
('ecfnqdfj1i5mk5ia77335o4ata6ml7km', '::1', '', 1597250351, '__ci_last_regenerate|i:1597250351;'),
('g6a2v0dme908haavj6ll1i2koqh95oq1', '::1', '', 1597250354, '__ci_last_regenerate|i:1597250354;'),
('nrn8hmtibne6g1c09nts8j222789shn8', '::1', '', 1597250358, '__ci_last_regenerate|i:1597250358;'),
('p26klamt3e9ilgva44hcgtp5m9dee8kt', '::1', '', 1597250379, '__ci_last_regenerate|i:1597250379;'),
('csb18r0strrkq46d70l228om377h8p4r', '::1', '', 1597250383, '__ci_last_regenerate|i:1597250383;'),
('snrpratb754e9vq8vgvllpidnmiip1eq', '::1', '', 1597250490, '__ci_last_regenerate|i:1597250490;'),
('tpak7iar20sv7jbv9ka5kmetugecgikj', '::1', '', 1597250512, '__ci_last_regenerate|i:1597250512;'),
('kfm6e5i2kmgog4iulk5p6oc9pooho4b4', '::1', '', 1597250515, '__ci_last_regenerate|i:1597250515;'),
('lf958a2sj68f29st7d2lqto09893ek2t', '127.0.0.1', '', 1597250529, '__ci_last_regenerate|i:1597250529;'),
('k2mcfvvlisjg7ahg1tifld6mgn45tro9', '127.0.0.1', '', 1597250583, '__ci_last_regenerate|i:1597250583;'),
('232jqlemtoqd2o17065fb6nfevnbsfvc', '::1', '', 1597250614, '__ci_last_regenerate|i:1597250614;'),
('q46bhr00bhc7r472m1jre7g9qqikd56c', '::1', '', 1597250643, '__ci_last_regenerate|i:1597250643;'),
('o72nu56573m558kid0ovf9lhbhqer1v2', '::1', '', 1597250654, '__ci_last_regenerate|i:1597250654;'),
('42np9jof2rdk2molt3nrpithelq0kt8t', '::1', '', 1597250657, '__ci_last_regenerate|i:1597250657;'),
('6qh5qpimpjh3a1hr6ot19tcg4qsbqoa7', '::1', '', 1597250760, '__ci_last_regenerate|i:1597250760;'),
('ai6kdragkj9dlfk5idecd02sclpubrro', '::1', '', 1597250792, '__ci_last_regenerate|i:1597250792;'),
('dsa7mrqte3mhgvqbg0feg597g1ei987q', '::1', '', 1597250795, '__ci_last_regenerate|i:1597250795;'),
('ucpfhp8p5o6f11n0t05qjpkgig261mr0', '::1', '', 1597250802, '__ci_last_regenerate|i:1597250802;'),
('28o5knat8eu7p6e2e3op5afqmhjm14vl', '::1', '', 1597250806, '__ci_last_regenerate|i:1597250805;'),
('tm9vl14t8sfhtu48s2p1mgngtvkdelq5', '::1', '', 1597250915, '__ci_last_regenerate|i:1597250915;'),
('ltfs5hcvakmpng36pgvtu02kep09kdhi', '::1', '', 1597250927, '__ci_last_regenerate|i:1597250927;'),
('motjtrfd8vr9i5tq7eiethpdm7gb3scm', '::1', '', 1597250941, '__ci_last_regenerate|i:1597250941;'),
('t10itj8o6mkc8cqgdii808eh6c6ign8p', '::1', '', 1597251141, '__ci_last_regenerate|i:1597251141;'),
('8oe3tkndrnfh88rd53krvnqq52b1cspr', '::1', '', 1597251238, '__ci_last_regenerate|i:1597251238;'),
('eqj6lb3toa5kgmc2cigepoqm5e78ns0c', '::1', '', 1597251251, '__ci_last_regenerate|i:1597251251;'),
('2u8ofdl7duuvulab6r80dc7rs2bk7gki', '::1', '', 1597251254, '__ci_last_regenerate|i:1597251254;'),
('e5rir75fmq973n7t0b9v7o91b9f6dlqj', '::1', '', 1597251263, '__ci_last_regenerate|i:1597251263;'),
('a5lu6q1apjegr3bdkpcurpq5f3hoqgrg', '::1', '', 1597251266, '__ci_last_regenerate|i:1597251266;'),
('0pep5u9akntk7qgp9and20b7tfb8koh2', '::1', '', 1597251268, '__ci_last_regenerate|i:1597251268;'),
('pmkhmb46o3k7oij1u010tbp2vo109eil', '::1', '', 1597251275, '__ci_last_regenerate|i:1597251275;'),
('9b19pg84rnbe85lkpjcv5487p6m874tl', '::1', '', 1597251278, '__ci_last_regenerate|i:1597251278;'),
('shub5qbmk43u4abp9lsvmulus37kipg5', '::1', '', 1597251286, '__ci_last_regenerate|i:1597251286;'),
('qio3un0rruo29dp28eovm3d76dhr2u4h', '::1', '', 1597251295, '__ci_last_regenerate|i:1597251295;'),
('il6hlot8fhdc1jstmbs6bqr1n00pgft0', '::1', '', 1597251298, '__ci_last_regenerate|i:1597251298;'),
('vtg2dljtaoof60k51ls8uan7dhp5olb8', '::1', '', 1597251302, '__ci_last_regenerate|i:1597251302;'),
('u1vmfcs7mgm25hrkfp1r81fdl3hs9rj4', '::1', '', 1597251308, '__ci_last_regenerate|i:1597251308;'),
('4a9iv30bg4vsvcp654a02ntsg7su2hvu', '::1', '', 1597251314, '__ci_last_regenerate|i:1597251314;'),
('25emdu4ej1ldqj10nuj9v50roi92gcbc', '::1', '', 1597251319, '__ci_last_regenerate|i:1597251319;'),
('6bno283qbqbrcph7be1drf4610jial83', '::1', '', 1597251328, '__ci_last_regenerate|i:1597251328;'),
('p72u26e9ssacb5h1k3vn0lefau03f8o5', '::1', '', 1597251335, '__ci_last_regenerate|i:1597251335;'),
('31ode6djh6f5hkuerqo537fqa5srjq3c', '::1', '', 1597251344, '__ci_last_regenerate|i:1597251344;'),
('nvd7gopq68du37qds398vur0lrmhni5i', '::1', '', 1597251350, '__ci_last_regenerate|i:1597251350;'),
('fv0js5l5rmvcqhhhp5nrlruvfdbpmtqq', '::1', '', 1597251356, '__ci_last_regenerate|i:1597251356;'),
('f16avrg8sc9a88ajsdv1nuelrkj3jr2j', '::1', '', 1597251359, '__ci_last_regenerate|i:1597251359;'),
('6j55efghcto5516g3j07avlc70u5r1t5', '::1', '', 1597251366, '__ci_last_regenerate|i:1597251366;'),
('ejl5pt5v5ts81kgrdev1nhi4hr2bdgqu', '::1', '', 1597251370, '__ci_last_regenerate|i:1597251370;'),
('pe3oelis2rk605ajiml1gk1l9l6amsig', '::1', '', 1597251376, '__ci_last_regenerate|i:1597251376;'),
('9uqalmfmo2oq7si2s19n3qd30bhk48e3', '::1', '', 1597251396, '__ci_last_regenerate|i:1597251395;'),
('otet0h7d6v3avlmnu40cgd5t99dctek4', '::1', '', 1597251398, '__ci_last_regenerate|i:1597251398;'),
('c5j9jfl0icanr4ev2f9hpiqd0sgf1ths', '::1', '', 1597251401, '__ci_last_regenerate|i:1597251401;'),
('copnr73qs0s0kqq2tq9q3gdqlm76fup4', '::1', '', 1597251422, '__ci_last_regenerate|i:1597251421;'),
('hqfgka3inhfqk4gmch9e5jun78b5vfbg', '::1', '', 1597251516, '__ci_last_regenerate|i:1597251516;'),
('1jgpompqa60aoca6otpv90odk2vlv7lq', '::1', '', 1597251533, '__ci_last_regenerate|i:1597251533;'),
('h8of83a5a146dfq92obb2rdklqnu5if1', '::1', '', 1597251593, '__ci_last_regenerate|i:1597251593;'),
('dmp0bona0o042jcau0ob5hde32gseu8q', '::1', '', 1597251597, '__ci_last_regenerate|i:1597251597;'),
('u0dhfdt0e3a7ogk0r88rs8alpftc0p6r', '::1', '', 1597251612, '__ci_last_regenerate|i:1597251612;'),
('v840816qr9gng6jq17e22mo4inp7m26e', '::1', '', 1597251630, '__ci_last_regenerate|i:1597251630;'),
('ahncm9r77arft04e7q00oi8t1gvp9slb', '::1', '', 1597251636, '__ci_last_regenerate|i:1597251636;'),
('botifs6orv3ppidlroo9i0gv48v36ggh', '::1', '', 1597251645, '__ci_last_regenerate|i:1597251645;'),
('o9tr99ajn7nifk50h68je27hqpl7j09f', '::1', '', 1597251649, '__ci_last_regenerate|i:1597251649;'),
('d3iefifn57tfss32oe1pns8d0l3qh1d2', '::1', '', 1597251659, '__ci_last_regenerate|i:1597251659;'),
('ds4apeac8plja5tkg866731cb4cktsar', '::1', '', 1597251682, '__ci_last_regenerate|i:1597251682;'),
('6ps7t932g9no4fln9tiktcbmcnjtpn2l', '::1', '', 1597251684, '__ci_last_regenerate|i:1597251684;'),
('3h05a0psrtl3nccg8hv5u1obvpmhsdaj', '::1', '', 1597251687, '__ci_last_regenerate|i:1597251687;'),
('0n9atr6q5l6sk7mk4v6aht6ln5qcv2ro', '::1', '', 1597251700, '__ci_last_regenerate|i:1597251699;'),
('ncamig13f8780tac4fi985l4cgaf5849', '::1', '', 1597251704, '__ci_last_regenerate|i:1597251704;'),
('f561numqleut4t2kapbn5b8p6nrues4o', '::1', '', 1597251708, '__ci_last_regenerate|i:1597251708;'),
('88entemaq745641ima9qe7e4ic446r43', '::1', '', 1597251721, '__ci_last_regenerate|i:1597251721;'),
('8h639gumslf0jdvc36abmp4redh7642m', '::1', '', 1597251723, '__ci_last_regenerate|i:1597251723;'),
('ev2omq0porv6k69pj99e20k84bmd6jjt', '::1', '', 1597251728, '__ci_last_regenerate|i:1597251728;'),
('u1t8glganmec2dq9m0oehjrggsr0seqe', '::1', '', 1597251732, '__ci_last_regenerate|i:1597251732;'),
('4ebc8anouq0qh6dpbs9qqt6kn2lmdb93', '::1', '', 1597251737, '__ci_last_regenerate|i:1597251737;'),
('s00tk55dg6c5m6674ahtg4e3d045mbc0', '::1', '', 1597251742, '__ci_last_regenerate|i:1597251742;'),
('3528igbv30lbqjaslm7hec158eh5587p', '::1', '', 1597251753, '__ci_last_regenerate|i:1597251753;'),
('a2stmed1khlgn4jvg235papc2tvq8o46', '::1', '', 1597251757, '__ci_last_regenerate|i:1597251757;'),
('5g7s9cacne1mfvtbeiadi8mbq30fv5gm', '::1', '', 1597251765, '__ci_last_regenerate|i:1597251765;'),
('8uvse8mq96jljhr85c03un8nulfcfdkr', '::1', '', 1597251770, '__ci_last_regenerate|i:1597251770;'),
('71g8jgauj4l89a5i2aiirs6e7jaoq2db', '::1', '', 1597251773, '__ci_last_regenerate|i:1597251773;'),
('capapo9p507rmuebtrs22urfe1pib25i', '::1', '', 1597251779, '__ci_last_regenerate|i:1597251779;'),
('tghosu4qsp37ngkbeo1b3dfkdu59h7k6', '::1', '', 1597251804, '__ci_last_regenerate|i:1597251804;'),
('k4oe0jt0psorrppav0salki9bo2felg4', '::1', '', 1597251816, '__ci_last_regenerate|i:1597251816;'),
('2qba4nm4dqofqfa5rvo47jequgddv56k', '::1', '', 1597251825, '__ci_last_regenerate|i:1597251825;'),
('klb940cfhku7bo367f5r75di94c5qcvk', '::1', '', 1597251830, '__ci_last_regenerate|i:1597251830;'),
('e3v7883ors4i5nhpduv7v7rt4a5jhe9f', '::1', '', 1597251850, '__ci_last_regenerate|i:1597251850;'),
('t73rlojgfh49in7nl29i0kbgtgagmcrs', '::1', '', 1597251858, '__ci_last_regenerate|i:1597251858;'),
('b5ai8a7lhfe835t9jstau94s2n4kslch', '::1', '', 1597251868, '__ci_last_regenerate|i:1597251868;'),
('lgddjg9rq8p7mn1j7cjpba118q9smk38', '::1', '', 1597251913, '__ci_last_regenerate|i:1597251913;'),
('i89sl4me7ib55k8p4op4lihp9kggf1ok', '::1', '', 1597251931, '__ci_last_regenerate|i:1597251931;'),
('bh38qmlkjge2mdikpm81ggqp4pr1i79n', '::1', '', 1597251933, '__ci_last_regenerate|i:1597251933;'),
('bhmoch2ibg1i6rj3ubbr2kkuams9ci4g', '::1', '', 1597251957, '__ci_last_regenerate|i:1597251957;'),
('1p3spanju1p9foog3jtnteolfuun2kbe', '::1', '', 1597251969, '__ci_last_regenerate|i:1597251969;'),
('eu8op4g1b73sar6janc66htrlakk3vf0', '::1', '', 1597251975, '__ci_last_regenerate|i:1597251975;'),
('1aftcadangkqi9s41h4q3dg2v8sn71ph', '::1', '', 1597251988, '__ci_last_regenerate|i:1597251988;'),
('3k119bqnfb1qcb83i1t4rg9dddih5724', '::1', '', 1597252033, '__ci_last_regenerate|i:1597252033;'),
('phf6vp78ncl0s43nae7povc89qtgp20l', '::1', '', 1597252037, '__ci_last_regenerate|i:1597252037;'),
('vm11nnokto3ldnco5ln9f261k90pm5lk', '::1', '', 1597252045, '__ci_last_regenerate|i:1597252045;'),
('4betud6kmsrlut0ba49742gr7hmstorh', '::1', '', 1597252052, '__ci_last_regenerate|i:1597252052;'),
('sm1b0oh67qeki82nhg53719194012j9i', '::1', '', 1597252057, '__ci_last_regenerate|i:1597252057;'),
('aodutoej940iu5pt78ulhilrs48t43jt', '::1', '', 1597252067, '__ci_last_regenerate|i:1597252067;'),
('c5l3tej6vune01evie60jktm3hdd3h9j', '::1', '', 1597252124, '__ci_last_regenerate|i:1597252124;'),
('chrcfm70j2u5st9vqter2cvjui9vfct7', '::1', '', 1597252127, '__ci_last_regenerate|i:1597252127;'),
('9ma0l7cmdqs5ojcjsljuln9h8tedb6tk', '::1', '', 1597252133, '__ci_last_regenerate|i:1597252133;'),
('ef4vcmbqeosn81i9vra2q7k8po203rhs', '::1', '', 1597252139, '__ci_last_regenerate|i:1597252139;'),
('rcompj6qsab3k575e8r8v2mda55ltetm', '::1', '', 1597252152, '__ci_last_regenerate|i:1597252152;'),
('6o8shgcjc6vg6q3aolo5dk0e04ska4v4', '::1', '', 1597252160, '__ci_last_regenerate|i:1597252160;'),
('couvp0qler0aav1ka6u1l7drijav7i6l', '127.0.0.1', '', 1597252184, '__ci_last_regenerate|i:1597252183;'),
('iv5cnhcd187ujcnh99e498sq43mol2ck', '::1', '', 1597252186, '__ci_last_regenerate|i:1597252186;'),
('21o2hlk97bpgufg4qnb7cimmpvk2cajt', '::1', '', 1597252193, '__ci_last_regenerate|i:1597252193;'),
('7v1mmnt8qnre2nvi83bckc1257v946gi', '::1', '', 1597252217, '__ci_last_regenerate|i:1597252216;'),
('5e74e5hbr4iva0blcog67587h8a8s2cm', '::1', '', 1597252218, '__ci_last_regenerate|i:1597252218;'),
('jn5oi2jlmpdppajf8g1psj5meb767ql1', '::1', '', 1597252226, '__ci_last_regenerate|i:1597252226;'),
('tko41c3k960kahksad1v47nrbm0dtehe', '::1', '', 1597252234, '__ci_last_regenerate|i:1597252234;'),
('obslfr4lesj8799itt0d2ffdpg9uq863', '::1', '', 1597252235, '__ci_last_regenerate|i:1597252235;'),
('r58lpkpha4tiqjd6fn9mvarduc6l3nne', '::1', '', 1597252240, '__ci_last_regenerate|i:1597252240;'),
('anmcu8irtg8t2arc15tnvmfuhoqt8e8o', '::1', '', 1597252247, '__ci_last_regenerate|i:1597252247;'),
('ghgm739n1of24evbn58o4pkebhherg0b', '::1', '', 1597252252, '__ci_last_regenerate|i:1597252252;'),
('0i1b240st3ftcv7d9toh4n3cusjblpqj', '::1', '', 1597252252, '__ci_last_regenerate|i:1597252252;'),
('dsi7cm4f9qbs0uqjrrld1a9epn7740du', '::1', '', 1597252257, '__ci_last_regenerate|i:1597252257;'),
('hggpj74rj06lq6ruvnr6ttg5p60o4vcn', '127.0.0.1', '', 1597252274, '__ci_last_regenerate|i:1597252274;'),
('5j8dv4hdpacha4v0sdivhb27mhd39otn', '::1', '', 1597252275, '__ci_last_regenerate|i:1597252275;'),
('acu57bce2gvlsbr9eobdlacr1es1vpqm', '::1', '', 1597252277, '__ci_last_regenerate|i:1597252277;'),
('nv0v80rlf0ccv3lpe3642q8v56hlf42c', '::1', '', 1597252283, '__ci_last_regenerate|i:1597252283;'),
('nk1kgdi5ma6o3dnlsdfogq30k4ta6kfm', '::1', '', 1597252288, '__ci_last_regenerate|i:1597252288;'),
('fd74l1904g3odbd98fifhjtnov35o95d', '::1', '', 1597252347, '__ci_last_regenerate|i:1597252347;'),
('m4plfsjjkaqi5u2in8vuf97amjemnkn1', '::1', '', 1597252351, '__ci_last_regenerate|i:1597252351;'),
('7npjpd239rt6fngi1e4oo2l5k64blh5g', '::1', '', 1597252369, '__ci_last_regenerate|i:1597252369;'),
('6oo6jra6csfjs5mpijo4sn6fpieuchde', '127.0.0.1', '', 1597252470, '__ci_last_regenerate|i:1597252470;'),
('jdmldvi0mqaf648qmg5nfg9ns17oiodq', '::1', '', 1597252470, '__ci_last_regenerate|i:1597252470;'),
('33itfp4ljbcv8ts8dbtmdrmfa0d1r6eg', '::1', '', 1597252472, '__ci_last_regenerate|i:1597252472;'),
('mucc1n7guouqc2g189ej9dgk6nlgftm0', '::1', '', 1597252476, '__ci_last_regenerate|i:1597252476;'),
('hhnd5ft2gjqm87hjctlqaidh7ls1ei18', '::1', '', 1597252491, '__ci_last_regenerate|i:1597252491;'),
('7lmliluregagih7phtc6dh8ef1jvc7h3', '::1', '', 1597252525, '__ci_last_regenerate|i:1597252525;'),
('m5u83bvuq68vao55dr9tml11539290h8', '::1', '', 1597252740, '__ci_last_regenerate|i:1597252740;'),
('kfv50ap21bsf6h2d92dld5ko920aaieh', '::1', '', 1597252743, '__ci_last_regenerate|i:1597252743;'),
('13uaa751ns7bd79oleslv1opkbsehfne', '::1', '', 1597252747, '__ci_last_regenerate|i:1597252747;'),
('rd5hess2gka2kpflsv1neq8pm12jv363', '::1', '', 1597252758, '__ci_last_regenerate|i:1597252758;'),
('istdakf2q9iaaookucqjtfn7ac42oinf', '::1', '', 1597252796, '__ci_last_regenerate|i:1597252796;'),
('mf4lrtv407n5n67u2letrt96ib9orqrp', '::1', '', 1597252799, '__ci_last_regenerate|i:1597252799;'),
('3kjraibtaalbk3eh4h3sb0rphjhl7vb8', '::1', '', 1597252803, '__ci_last_regenerate|i:1597252803;'),
('4krqejdigaml3gs82mdk6gmvh3am4vb3', '::1', '', 1597252818, '__ci_last_regenerate|i:1597252818;'),
('f1nq418bmnafshn0smujt5o05c3reiri', '::1', '', 1597252824, '__ci_last_regenerate|i:1597252824;'),
('0s06jpm80pqi4rp974b988kj95fqn07h', '::1', '', 1597252833, '__ci_last_regenerate|i:1597252833;'),
('1orrkhbj653471onvmg1928isdih2q8v', '::1', '', 1597252835, '__ci_last_regenerate|i:1597252835;'),
('mktehcimvih9q6h2vt76i848kmib4hf3', '::1', '', 1597252839, '__ci_last_regenerate|i:1597252839;'),
('fc6ml13bdgnkl049nqsr02lnekblkg2v', '::1', '', 1597252843, '__ci_last_regenerate|i:1597252843;'),
('efb90crdvs1lvr8eedm9cr6hh8vua7e1', '::1', '', 1597252880, '__ci_last_regenerate|i:1597252880;'),
('hla515qv55n1fann2eoo9v9sktgffii7', '::1', '', 1597256663, '__ci_last_regenerate|i:1597256658;'),
('f6p7vd3s2tvgbssvbhcojdskhp58hcg6', '::1', '', 1597256663, '__ci_last_regenerate|i:1597256661;'),
('mqglctglkcl5026g8ohgia8gqnvnrnsg', '::1', '', 1597256670, '__ci_last_regenerate|i:1597256670;'),
('6370imnvh38pj21ldbdrpru5utvauvdp', '::1', '', 1597256786, '__ci_last_regenerate|i:1597256786;'),
('soiioc575gitpe84ji8gbmb7jh54tu57', '::1', '', 1597256800, '__ci_last_regenerate|i:1597256800;'),
('csrmm5np5ifrv9kiu9a6hf75osindohv', '::1', '', 1597256812, '__ci_last_regenerate|i:1597256812;'),
('9chtimbmqe294hdavisv5u2osltuqlg8', '::1', '', 1597256819, '__ci_last_regenerate|i:1597256819;'),
('phfakp39qokmp87t4r05kq5mnqsn9b5o', '::1', '', 1597256829, '__ci_last_regenerate|i:1597256829;'),
('gjcrmb4qj6ukk0uus7lt4r8qe8tdrds7', '::1', '', 1597256839, '__ci_last_regenerate|i:1597256839;'),
('fmqqnvc6mqe8j903cki098gjt9cebndk', '::1', '', 1597257066, '__ci_last_regenerate|i:1597257066;'),
('gd4bf8e8uc38a7onlkkrp49ulqdnis79', '::1', '', 1597257087, '__ci_last_regenerate|i:1597257087;'),
('ersjh2bc6osa764ulabcf1tehv52imbq', '::1', '', 1597257088, '__ci_last_regenerate|i:1597257088;'),
('apoq70k1hlidh3808p8cnq1f92910al6', '::1', '', 1597257093, '__ci_last_regenerate|i:1597257093;'),
('mamfchbha6eobouodhc8d1qb67fgv9al', '::1', '', 1597257095, '__ci_last_regenerate|i:1597257095;'),
('1tkl55ur9vjuupei1r5qu2dp0e7bpccf', '::1', '', 1597257103, '__ci_last_regenerate|i:1597257103;'),
('0avjn3l6500okmm5in9ckvupb3kr85i0', '::1', '', 1597257110, '__ci_last_regenerate|i:1597257110;'),
('ifovuhcpolcrcq3tsjuodr5jba2sl3n5', '127.0.0.1', '', 1597259590, '__ci_last_regenerate|i:1597259587;'),
('n5l5k0qt7nv92t8385vf2hmhqi75uu4e', '::1', '', 1597259637, '__ci_last_regenerate|i:1597259637;'),
('e9n1ju0v8otbl2n4aour5lr0l701oejf', '::1', '', 1597259698, '__ci_last_regenerate|i:1597259698;'),
('dqoruceln6cdgmb7794hfcf6io6cgmhq', '127.0.0.1', '', 1597259700, '__ci_last_regenerate|i:1597259700;'),
('tknrokn5isjlfctcivbe05710c4se4au', '::1', '', 1597260253, '__ci_last_regenerate|i:1597260253;'),
('65ebp05a12p6f266qvpbsijr67mhe9rc', '127.0.0.1', '', 1597260253, '__ci_last_regenerate|i:1597260253;'),
('tfj7ktsmo1lm2ll5nuvvqhkg1a8opjt0', '::1', '', 1597260676, '__ci_last_regenerate|i:1597260640;'),
('qg76jdun11h50ddee553rgj5lg43kp3u', '::1', '', 1597261132, '__ci_last_regenerate|i:1597261131;'),
('560r10jokcic0n91ttq662shv9rt28u6', '127.0.0.1', '', 1597261132, '__ci_last_regenerate|i:1597261131;'),
('mair9mpnghs6jhvrud52kj9lbrc1ods0', '::1', '', 1597261255, '__ci_last_regenerate|i:1597261254;'),
('p91sgjkccmg0qjadh1ekctpoln8fcet1', '::1', '', 1597261256, '__ci_last_regenerate|i:1597261253;'),
('lh8728hl1lq5g6guvm2et5fk8km2ala0', '::1', '', 1597261298, '__ci_last_regenerate|i:1597261298;'),
('rf8uk5416idivtgjsp26d40voee2mldb', '::1', '', 1597261411, '__ci_last_regenerate|i:1597261411;'),
('dht23bmcq3mgb8nt92of3rjeitsbr0k2', '127.0.0.1', '', 1597261411, '__ci_last_regenerate|i:1597261411;'),
('t91psocsf2mna5sv39j1b5neao56bmi1', '::1', '', 1597261446, '__ci_last_regenerate|i:1597261446;'),
('t5rlj60n307elq7abk7gs81t12ri1mip', '::1', '', 1597261446, '__ci_last_regenerate|i:1597261446;'),
('1n62m7bb9afqnssavlg3kvg2bpopbh51', '127.0.0.1', '', 1597261554, '__ci_last_regenerate|i:1597261553;'),
('ronju29mktaml0scr1bekc8rg22qmqjp', '127.0.0.1', '', 1597261554, '__ci_last_regenerate|i:1597261554;'),
('fe9mh8sljdbuuhop7ijrbf4rilrntq7q', '::1', '', 1597261832, '__ci_last_regenerate|i:1597261832;'),
('n0of7kb12cg9kuke0hc27gq8bv6g4rhe', '::1', '', 1597262175, '__ci_last_regenerate|i:1597262175;'),
('vaki3j8s85ag4752s27koavr57iffe2t', '::1', '', 1597262175, '__ci_last_regenerate|i:1597262175;'),
('nttlhl5eq7eltmnoktgq9qoij281c5a3', '::1', '', 1597262351, '__ci_last_regenerate|i:1597262351;'),
('533qgqmc6mfsd0qfck12dnui1tejjr1i', '::1', '', 1597262424, '__ci_last_regenerate|i:1597262424;'),
('krv8cnvculq1mq40bprapiukulksmc87', '::1', '', 1597262445, '__ci_last_regenerate|i:1597262445;'),
('gj469bk43so1fmuung50u4a2ftppnglr', '::1', '', 1597262445, '__ci_last_regenerate|i:1597262445;'),
('4defi5sdq0huu6tg9jmo5qapuk29mi29', '::1', '', 1597262477, '__ci_last_regenerate|i:1597262477;'),
('e59vkt5e5k9jfqp7hgfndqhhbu92f0eu', '::1', '', 1597262522, '__ci_last_regenerate|i:1597262522;'),
('s1jojudnhagtrg58jh3kahjflm179k00', '::1', '', 1597262522, '__ci_last_regenerate|i:1597262522;'),
('rtvcjqk23ltgkmo7iupsmg37oeqs78hm', '::1', '', 1597262534, '__ci_last_regenerate|i:1597262534;'),
('1s2ra1o74fuq71ku23uf613isi7gptc1', '::1', '', 1597262566, '__ci_last_regenerate|i:1597262566;'),
('btd1tr0or01e5i69alqplmr7cap798fj', '::1', '', 1597262815, '__ci_last_regenerate|i:1597262577;'),
('cbihpp8vgjl9e5bik6n01o3pdj224flf', '::1', '', 1597262798, '__ci_last_regenerate|i:1597262797;'),
('5cm5mm96sfjtmad01gf9uva4i34v1ik6', '127.0.0.1', '', 1597267506, '__ci_last_regenerate|i:1597267504;'),
('vv1ijh1tv8mfv3qv4eejqt7t57me37qk', '127.0.0.1', '', 1597267582, '__ci_last_regenerate|i:1597267582;'),
('vlskcvd5vai80n84nl8oou3i5h9i38hm', '::1', '', 1597267658, '__ci_last_regenerate|i:1597267658;'),
('60a1712jrcpjdtc36j4rsf300jn1k1cg', '::1', '', 1597267670, '__ci_last_regenerate|i:1597267670;'),
('pfvf5ahtt0la7lpud7pifm1g4dn09hsn', '::1', '', 1597267745, '__ci_last_regenerate|i:1597267744;'),
('1aogm6kclcba00tqf1idas0snv5fuj5p', '::1', '', 1597268021, '__ci_last_regenerate|i:1597268020;'),
('mp6btkgmqrkhn92c0vli53kvuik3ej60', '::1', '', 1597268096, '__ci_last_regenerate|i:1597268096;'),
('4g2k20eq4ed6nda4q6rfocag790vcp2b', '::1', '', 1597308955, '__ci_last_regenerate|i:1597308940;'),
('uedq7mdbusuc2qscf1q1ueq4vr15u3q1', '::1', '', 1597313347, '__ci_last_regenerate|i:1597313347;'),
('kkd9o3r6gf8h8tf8721m9gac9kabjqds', '::1', '', 1597313460, '__ci_last_regenerate|i:1597313457;'),
('3p4j3don38fki3v3guhqrui18j4m8v2f', '::1', '', 1597314615, '__ci_last_regenerate|i:1597314614;'),
('5han9ojdtr40ddpspa4qnlq151cr107b', '::1', '', 1597315715, '__ci_last_regenerate|i:1597315714;'),
('3t4sirvdeuc7qjctvo996k1f6pu8ua3e', '127.0.0.1', '', 1597318464, '__ci_last_regenerate|i:1597318464;'),
('cll726j106hi6gcufbasqnmmlvp8lf6q', '::1', '', 1597318924, '__ci_last_regenerate|i:1597318924;'),
('165rq1gidkos7kgdqrnhtav7r2dabq6e', '::1', '', 1597319355, '__ci_last_regenerate|i:1597319355;'),
('3trb6i6p6i3qase42l6ghqrd16lj7fe9', '::1', '', 1597319514, '__ci_last_regenerate|i:1597319514;'),
('k6ebd3uumfttaej4103sgi24ve8gup39', '::1', '', 1597319642, '__ci_last_regenerate|i:1597319641;'),
('n2f1gqmm7rsaqdb9j0q1s5t8q9obot7e', '::1', '', 1597320848, '__ci_last_regenerate|i:1597320847;'),
('47evt37k9fuqf2ct5mrrs5n3ac6bsm1j', '::1', '', 1597320894, '__ci_last_regenerate|i:1597320893;'),
('85drsn8r48odagoh0ff7fimel6htgu7g', '::1', '', 1597321109, '__ci_last_regenerate|i:1597321109;'),
('7vfb0vnsqsk1ku0eanrbc1aehbatagc4', '::1', '', 1597321120, '__ci_last_regenerate|i:1597321120;'),
('jphoi0a819pte6j2690113htjurvkn0h', '::1', '', 1597321132, '__ci_last_regenerate|i:1597321132;'),
('fpim77s5grvkke0ije3md8aseu2dce7i', '::1', '', 1597321302, '__ci_last_regenerate|i:1597321302;'),
('1t6c5rl40mbnf5gd591vruhj8i9dvtgl', '::1', '', 1597321317, '__ci_last_regenerate|i:1597321317;'),
('cmnclvq6g0vkt35tuf3f5fk5t2q1cvl6', '::1', '', 1597321395, '__ci_last_regenerate|i:1597321395;'),
('umift7skqa15c1cuic8r03ogk95ntqsg', '::1', '', 1597321409, '__ci_last_regenerate|i:1597321409;'),
('8bsphnrbgguaa9n089ubgcodh9sh1ll1', '::1', '', 1597321447, '__ci_last_regenerate|i:1597321446;'),
('gnhqmd15jisdc9n98t9ce9l5fophnon2', '::1', '', 1597321550, '__ci_last_regenerate|i:1597321550;'),
('8e72oukvgh0iq1ldclbuehodoi6fdnji', '::1', '', 1597321561, '__ci_last_regenerate|i:1597321561;'),
('l1ed0u7canj68u959gkeidjc82vei1gt', '::1', '', 1597321582, '__ci_last_regenerate|i:1597321582;'),
('v695bs3fao2m5urncao20d8arl9vntj6', '::1', '', 1597321723, '__ci_last_regenerate|i:1597321723;'),
('q1jev57simbulb58rs49e8gts3gsn34p', '::1', '', 1597321736, '__ci_last_regenerate|i:1597321736;'),
('b6rh62jr18ou0jrb7oem56hm3r4v8le2', '::1', '', 1597321892, '__ci_last_regenerate|i:1597321892;'),
('p2cqt7m4mngedfp1m6hdtvfeg78ch4t8', '::1', '', 1597321907, '__ci_last_regenerate|i:1597321907;'),
('o4mom2c2hrednqccem6ggu5sooajh6ah', '::1', '', 1597321984, '__ci_last_regenerate|i:1597321983;'),
('s1ec8u4cu90cpd6cnrpn538fjummn26e', '::1', '', 1597321987, '__ci_last_regenerate|i:1597321987;'),
('jbfiemt3gnf92qjvvpah2jc5d0jr55vr', '::1', '', 1597321998, '__ci_last_regenerate|i:1597321998;'),
('c22oh4rqn67j52qucdf93phe14md55j3', '::1', '', 1597322002, '__ci_last_regenerate|i:1597322002;'),
('i9pva9vqfv1vjhdpmp5dgh64m3ka1qfe', '::1', '', 1597322010, '__ci_last_regenerate|i:1597322010;'),
('gg08s1u1cuu032cfcm3gee2ihptlcum8', '::1', '', 1597322013, '__ci_last_regenerate|i:1597322013;'),
('ln1971pum3ivij673joq9lo2ac5qerd2', '::1', '', 1597322046, '__ci_last_regenerate|i:1597322045;'),
('9gbg7ug5lg5f7g3nvso71ecf2ubbv247', '::1', '', 1597322443, '__ci_last_regenerate|i:1597322336;'),
('1spbphk4666rpsc1b8nmvi7t4ik1gvaa', '::1', '', 1597323068, '__ci_last_regenerate|i:1597323066;'),
('3m36k26o9rtua9momb921lkoph6td596', '::1', '', 1597330374, '__ci_last_regenerate|i:1597330373;'),
('0im19mupidgmr6tb1bg7ukv2b7mtnslf', '::1', '', 1597330416, '__ci_last_regenerate|i:1597330415;'),
('thrahhdkldqf36pg3emkihjic3vnqn73', '::1', '', 1597330775, '__ci_last_regenerate|i:1597330775;'),
('oh54nqi8ddosh10igi4kl8unht7euru5', '::1', '', 1597330839, '__ci_last_regenerate|i:1597330839;'),
('38rdj4u42el7mu240kh6ig3s5jt12i3a', '::1', '', 1597331295, '__ci_last_regenerate|i:1597331295;'),
('gt6uf7225si8kpiovrjmnasoe35v6r6s', '::1', '', 1597331346, '__ci_last_regenerate|i:1597331346;'),
('7t22fmtofckkfb8iad9lq26vf48m2oif', '::1', '', 1597331514, '__ci_last_regenerate|i:1597331514;'),
('0uog3iegggs4b7eria0arl5g50lojb5c', '::1', '', 1597331767, '__ci_last_regenerate|i:1597331767;'),
('pdpcl4hmdfflgvi14osvno0s9po73jco', '::1', '', 1597331894, '__ci_last_regenerate|i:1597331894;'),
('q7kfpojki43cs2kp3nr6kd9qkfq4s1mk', '::1', '', 1597331923, '__ci_last_regenerate|i:1597331923;'),
('j0emgeto6kt1b65st9kah4ngrrfraf7v', '::1', '', 1597332097, '__ci_last_regenerate|i:1597331940;'),
('lihv0drl79hb3o5eer2j7vnp55atvbg8', '::1', '', 1597331954, '__ci_last_regenerate|i:1597331954;'),
('apjcd2mma2rjf482slbq653s4f2lj112', '::1', '', 1597331970, '__ci_last_regenerate|i:1597331970;'),
('42fjb7dd7h1te4rp51u2s7t33mmara45', '::1', '', 1597331993, '__ci_last_regenerate|i:1597331993;'),
('f1tfeudliff7k5cd7pp5q16s7tuit6le', '::1', '', 1597332044, '__ci_last_regenerate|i:1597332043;'),
('j9ovundc0mvt47n33uc62887kricgaij', '::1', '', 1597332057, '__ci_last_regenerate|i:1597332057;'),
('k262jfe3r0m662r726jqrdmcboi27q6i', '::1', '', 1597332249, '__ci_last_regenerate|i:1597332249;'),
('32eqcimj9t2n4opufqefh4gn8qqsk9fs', '::1', '', 1597332284, '__ci_last_regenerate|i:1597332284;'),
('jc9pc6e5f9vcfah5pqo7dcf83p1ochj9', '::1', '', 1597332288, '__ci_last_regenerate|i:1597332288;'),
('bnnfdujpb97uenbji87gl1sv1j1ece2a', '::1', '', 1597332332, '__ci_last_regenerate|i:1597332332;'),
('0gvf2bm2lp81053l87r1mu5blfh5u5oh', '::1', '', 1597333251, '__ci_last_regenerate|i:1597333251;'),
('vofm4e2btepvo7m0ek6sqpdfa8mhgodv', '::1', '', 1597333257, '__ci_last_regenerate|i:1597333257;'),
('42b7qsqcl1o2djdvjfbsa3thf9ve5o3g', '::1', '', 1597333324, '__ci_last_regenerate|i:1597333324;'),
('70f2pjcb3ig6svnb2cp0soptgqo6ov1c', '::1', '', 1597333334, '__ci_last_regenerate|i:1597333333;'),
('goe1q8nsm6vbpt3tb19c2p1salnun5f7', '::1', '', 1597333412, '__ci_last_regenerate|i:1597333412;'),
('et8ocfqvribcqmp971n2oi77dm7pdjve', '::1', '', 1597333534, '__ci_last_regenerate|i:1597333534;'),
('bo1hfqn5183s3sjsuc9mftdegp0mifc9', '::1', '', 1597333541, '__ci_last_regenerate|i:1597333541;'),
('s8jq8qv13va4sco6re4s480v4stc13s8', '::1', '', 1597333707, '__ci_last_regenerate|i:1597333707;'),
('nbfsfvnc1h594d43s6u9ordtda8ni7lg', '::1', '', 1597333935, '__ci_last_regenerate|i:1597333935;'),
('86lb21oenj38mdbtl28ehsq4dpca4a8h', '::1', '', 1597336460, '__ci_last_regenerate|i:1597336459;'),
('odird70hno92pts2907scpbf8921h6gi', '::1', '', 1597337288, '__ci_last_regenerate|i:1597337288;'),
('cn8b6kgtbbqtqpa4a1c8uitqndjplj1p', '::1', '', 1597337303, '__ci_last_regenerate|i:1597337303;'),
('blgl1pqc4cvq8j9l3jgcop9faktqp4k4', '::1', '', 1597337359, '__ci_last_regenerate|i:1597337359;'),
('3k35veanf4jce12f00dscgjr386ho1jn', '::1', '', 1597337372, '__ci_last_regenerate|i:1597337372;'),
('b2thdl1ifjjg65o28truevbe5jri9brn', '::1', '', 1597337425, '__ci_last_regenerate|i:1597337425;'),
('q2u06hl36a956sudbg02qq2sin3gs9r1', '::1', '', 1597337450, '__ci_last_regenerate|i:1597337449;'),
('ii2060h7m8o0iopuil98jggnqqra516d', '::1', '', 1597337453, '__ci_last_regenerate|i:1597337453;'),
('rb91snl1o5rqvpnojtc5dddadl60j103', '::1', '', 1597337497, '__ci_last_regenerate|i:1597337497;'),
('ukvqntq87acuqqc6fetohfqkbntkd0m0', '::1', '', 1597337556, '__ci_last_regenerate|i:1597337542;'),
('4faa6psrhnlnd6eaft1ksuq1fhekj0jf', '::1', '', 1597337894, '__ci_last_regenerate|i:1597337894;'),
('2bdac9i8tr1r8rribdqtbu5dl483kq9j', '::1', '', 1597338302, '__ci_last_regenerate|i:1597338302;'),
('f378p4s1o35i83ab8ut1oic05ufl4rjb', '::1', '', 1597338317, '__ci_last_regenerate|i:1597338317;'),
('v8uvss43h4dspu7uhd4rsh6j0026p7p4', '::1', '', 1597338337, '__ci_last_regenerate|i:1597338337;'),
('e53sseq1bcc59f3u4nuvl0c5cbe01dc0', '::1', '', 1597341652, '__ci_last_regenerate|i:1597341652;'),
('rh2bu18cq3r8r73p7dq69uc8nroer9sd', '::1', '', 1597341824, '__ci_last_regenerate|i:1597341824;'),
('s2v1n974fg0c2vt99g002dgmepagihvv', '::1', '', 1597341824, '__ci_last_regenerate|i:1597341824;'),
('dgl9mta9nioupttnouka7vmpdpv6ipm2', '::1', '', 1597341836, '__ci_last_regenerate|i:1597341836;'),
('dv2mqflgp7frqqut485mrhdh8360lnsp', '::1', '', 1597341901, '__ci_last_regenerate|i:1597341901;'),
('maemltha3q4eeidcud8kv3dnclsun71k', '::1', '', 1597341927, '__ci_last_regenerate|i:1597341927;'),
('eeq8kjcri9shkkj8mq689gecpe996uhf', '::1', '', 1597341946, '__ci_last_regenerate|i:1597341946;'),
('nhhhujhsa5roc3ir6ip53c9ufatbamif', '::1', '', 1597341953, '__ci_last_regenerate|i:1597341953;'),
('ecj35b0puj9ho592sd5eticur3mm12da', '::1', '', 1597341967, '__ci_last_regenerate|i:1597341967;'),
('04h6t8a7ijplm7da8dsbpvo0uplhkou3', '::1', '', 1597350630, '__ci_last_regenerate|i:1597350629;'),
('pouopt573h92ib073rkjfh6ocum85b38', '::1', '', 1597350689, '__ci_last_regenerate|i:1597350689;'),
('hdt48quiksjeh7adlvln016uhh5cjqge', '::1', '', 1597350689, '__ci_last_regenerate|i:1597350689;'),
('lfoukjibq2ivaqnhl6gsmomrak69val1', '::1', '', 1597350709, '__ci_last_regenerate|i:1597350709;'),
('djsj7uuk3jvmkhc2l4fg6vfs6ffoe8km', '::1', '', 1597350727, '__ci_last_regenerate|i:1597350727;'),
('0t088mrj1882mvndhnnkq55rpq3094jt', '::1', '', 1597400022, '__ci_last_regenerate|i:1597400022;'),
('3nh3vpah28qdmv7vaamadh08c603de2l', '::1', '', 1597405704, '__ci_last_regenerate|i:1597405704;'),
('au18c3als77rqtugr6tmnfmh3pu71fmf', '::1', '', 1597406300, '__ci_last_regenerate|i:1597406298;'),
('athia9as5rteut8bgjvi40u78hs37e89', '::1', '', 1597406412, '__ci_last_regenerate|i:1597406412;'),
('7or9dgb3094cr6u8070d11ds9h3ng7id', '::1', '', 1597406530, '__ci_last_regenerate|i:1597406530;'),
('iksuhb8a3mp98fr4q4b347m9h1ikm8e7', '::1', '', 1597406532, '__ci_last_regenerate|i:1597406532;'),
('qrli3jphi7bnuplgkft3e2bnrghmf969', '::1', '', 1597406769, '__ci_last_regenerate|i:1597406769;'),
('7ktqvl5ktkvahol7dl46p1nbmqrburgj', '::1', '', 1597407061, '__ci_last_regenerate|i:1597407061;'),
('nug7akuibk5dq7tnn5nbe83l70dl68s5', '::1', '', 1597407398, '__ci_last_regenerate|i:1597407398;'),
('8agm4c08674p9rvhsdkr9pldhher5p5q', '::1', '', 1597407452, '__ci_last_regenerate|i:1597407452;'),
('821kbjtgvj153ok158lm8ud5frqe5c2s', '::1', '', 1597407511, '__ci_last_regenerate|i:1597407510;'),
('uhflc5ocnuo4fi390073j4uvangfmell', '::1', '', 1597408256, '__ci_last_regenerate|i:1597408256;'),
('1fc13mot7bur272sg6gdffgf9ev9poih', '::1', '', 1597408283, '__ci_last_regenerate|i:1597408283;'),
('4obg3qnfmejhnd3p5t2ke3s15b6l1i8o', '::1', '', 1597408309, '__ci_last_regenerate|i:1597408309;'),
('jjv4nfs9gjek8310lo3s7o5ql7cp1up0', '::1', '', 1597408337, '__ci_last_regenerate|i:1597408337;'),
('4aakjffi5pdjvvpnls2aip0tatgeq4s1', '::1', '', 1597408435, '__ci_last_regenerate|i:1597408435;'),
('1ehft82p1lgpqi5g0ueuhimktk50u61g', '::1', '', 1597408540, '__ci_last_regenerate|i:1597408540;'),
('2tpmo9orhthqdjtqeeadla5usg7qjp2n', '::1', '', 1597408546, '__ci_last_regenerate|i:1597408546;'),
('fc3e6gbu3pq0ddvf92pqjldlk1pd3mca', '::1', '', 1597408573, '__ci_last_regenerate|i:1597408572;'),
('kehahmjft30cg4c6jppqmfi9bh2shnse', '::1', '', 1597408590, '__ci_last_regenerate|i:1597408590;'),
('dheg46euvaq8phcigibfm3omqt0jctl0', '::1', '', 1597408596, '__ci_last_regenerate|i:1597408596;'),
('b611fprjg4e17npv837il83l9e6ciinj', '::1', '', 1597408734, '__ci_last_regenerate|i:1597408734;'),
('02tnl7q8g8b7iqoq4oo523k0i7i8iuth', '::1', '', 1597408734, '__ci_last_regenerate|i:1597408734;'),
('9m1natfg03s7o74p17rm9n41uun6bv4s', '::1', '', 1597408757, '__ci_last_regenerate|i:1597408757;'),
('mfhtcucvpol7pgs6cjt05p1f6q1luf5h', '::1', '', 1597409746, '__ci_last_regenerate|i:1597409746;'),
('evbqhbrm0urqu6115t96jehkld5ssh8k', '::1', '', 1597409829, '__ci_last_regenerate|i:1597409829;'),
('mc1o8sodqcv925nblj3icc8b0i0jn8v4', '::1', '', 1597409848, '__ci_last_regenerate|i:1597409848;'),
('gd6dot152sad05hp61o8pn183vhdlsnt', '::1', '', 1597409879, '__ci_last_regenerate|i:1597409879;'),
('p94266qepcj7u4iija7t6f86u544hrm6', '::1', '', 1597409879, '__ci_last_regenerate|i:1597409879;'),
('h6iqmnbrra9tpifjnhd8n0vnqv1u7q87', '::1', '', 1597409884, '__ci_last_regenerate|i:1597409884;'),
('cfrrj07agubq3ptf2g4sdjogpru7fibg', '::1', '', 1597409884, '__ci_last_regenerate|i:1597409884;'),
('i7jks3ii3eut6gok57j4mfjop5sce8sj', '::1', '', 1597409887, '__ci_last_regenerate|i:1597409887;'),
('6d65eocms3h9aev06icimeukefqaf0f5', '::1', '', 1597409887, '__ci_last_regenerate|i:1597409887;'),
('ga2lpl5dd8h4bd6npumsdqs2pgrm9t8g', '::1', '', 1597409905, '__ci_last_regenerate|i:1597409905;'),
('q994j0jm7e9v3he2t9ae7dbdjb1n9cq2', '::1', '', 1597409922, '__ci_last_regenerate|i:1597409922;'),
('2nernbd7ine5mgioavf59m7gaekdom3i', '::1', '', 1597409923, '__ci_last_regenerate|i:1597409923;'),
('b5tjfh5t5e5cepjuofuo3ep6o268qki9', '::1', '', 1597409944, '__ci_last_regenerate|i:1597409944;'),
('3evdd2rr3clpisq65iqjnojurealfotr', '::1', '', 1597410019, '__ci_last_regenerate|i:1597410019;'),
('7pltko2k529dhedrjarl3f7g3dgsu7ro', '::1', '', 1597410038, '__ci_last_regenerate|i:1597410038;'),
('tom6h79o9kmniud896kfdb9jhvsgrgm1', '::1', '', 1597410065, '__ci_last_regenerate|i:1597410065;'),
('5g2biu5i20c65ebtu94das4g07hkcp6f', '::1', '', 1597410082, '__ci_last_regenerate|i:1597410082;'),
('0n2s99clddtlmdqf121sl38hd8v6etqi', '::1', '', 1597410104, '__ci_last_regenerate|i:1597410104;'),
('hkopafvtv5v0av718tsi8d68m4qm9nno', '::1', '', 1597410119, '__ci_last_regenerate|i:1597410119;'),
('gkl3m0aaphl8pif8g3qfojnvkvchakcs', '::1', '', 1597410151, '__ci_last_regenerate|i:1597410151;'),
('k28edcgivibo266p8668eq2pgicj1jt3', '::1', '', 1597410168, '__ci_last_regenerate|i:1597410168;'),
('rb3b1c1isk8hlcjtij50ki62f2mi12dm', '::1', '', 1597410393, '__ci_last_regenerate|i:1597410393;'),
('ruq95qk7jflm3a2dps5ej9cn8ntls2co', '::1', '', 1597410393, '__ci_last_regenerate|i:1597410393;'),
('eaqogrk7tvhkvkojlbs6k9n35fi7n1dn', '::1', '', 1597410419, '__ci_last_regenerate|i:1597410419;'),
('mvpijag8tblio28cjll7pg4lmj3i6gna', '::1', '', 1597410656, '__ci_last_regenerate|i:1597410656;'),
('tbpi5gu42u7rk3e0thl21ea0pjhd2uic', '::1', '', 1597410657, '__ci_last_regenerate|i:1597410657;'),
('rrsj7rttr2mpuo5kkecgc1sb4rr64vq0', '::1', '', 1597410676, '__ci_last_regenerate|i:1597410676;'),
('r5luln4nnbss0hvath0r31kg4bse1v2v', '::1', '', 1597410739, '__ci_last_regenerate|i:1597410739;'),
('ae0jch31gjcgh67e28an6pfnu036eu5r', '::1', '', 1597410739, '__ci_last_regenerate|i:1597410739;'),
('0rej1368uu44ag3o6me5lfoj99bbm5ah', '::1', '', 1597410846, '__ci_last_regenerate|i:1597410846;'),
('69imffoddba6r8cf8vngh0p94magbfuj', '::1', '', 1597410902, '__ci_last_regenerate|i:1597410902;'),
('eas6k5kq92qhgaaqfrdd2pri4rfesoi2', '::1', '', 1597410902, '__ci_last_regenerate|i:1597410902;'),
('3eklag4t97le19lievai3m09bg9nabri', '::1', '', 1597410911, '__ci_last_regenerate|i:1597410911;'),
('dcsj2hbdn3fcmp7ns4rdpvnd5ucifrgr', '::1', '', 1597410911, '__ci_last_regenerate|i:1597410911;'),
('u7avduv92i9o51klqqh65885e45331hi', '::1', '', 1597410978, '__ci_last_regenerate|i:1597410977;'),
('0no2cu8imq6lvdeerdeq3l1454v8cvco', '::1', '', 1597410992, '__ci_last_regenerate|i:1597410992;'),
('bpgscclvi45urvigrfpli8hurhboimav', '::1', '', 1597411059, '__ci_last_regenerate|i:1597411059;'),
('nj2fcbq4otqvl4hlflo9hi2lqmpqgbgl', '::1', '', 1597411122, '__ci_last_regenerate|i:1597411122;'),
('n5915kk0bnt5u30fs6247dvl1qs7fnf2', '::1', '', 1597411127, '__ci_last_regenerate|i:1597411127;'),
('ukkrpg4arpret4mjcsm5pl41aagsv4sl', '::1', '', 1597411143, '__ci_last_regenerate|i:1597411143;'),
('n0rdqs39jn7396h3ko8tan5nmr681rmg', '::1', '', 1597411170, '__ci_last_regenerate|i:1597411170;'),
('50anm3uqv02mbe6mqq157fjkh6hde5gi', '::1', '', 1597411189, '__ci_last_regenerate|i:1597411189;'),
('qffumjfkdr4od6mtke92387jpgf8na0a', '127.0.0.1', '', 1597412261, '__ci_last_regenerate|i:1597412261;'),
('7qf30u30eavr6jptiabgrbue0b60bvh2', '::1', '', 1597413132, '__ci_last_regenerate|i:1597413132;'),
('h0l01293tlsiahq1aj4g64ka9sd8rpc2', '::1', '', 1597413177, '__ci_last_regenerate|i:1597413177;'),
('8j0ib3sfgssktdj1guv8bmd2orv697d4', '::1', '', 1597421576, '__ci_last_regenerate|i:1597421575;'),
('8u6ot5co4hpnot1s6sd6l46sjr9or7t1', '::1', '', 1597424617, '__ci_last_regenerate|i:1597424617;'),
('vfo49274lnbv95lv0snhov2efkor3mkv', '::1', '', 1597424692, '__ci_last_regenerate|i:1597424692;');
INSERT INTO `microsidd_ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('0p20k0maokeidadaqr7tkv1dt4qdqn9j', '::1', '', 1597424693, '__ci_last_regenerate|i:1597424692;'),
('e3noptfmqm3fj23hrrkodafbj1j21nmd', '::1', '', 1597424699, '__ci_last_regenerate|i:1597424699;'),
('acqjji22rd6dnmqff7ehvr1ra7f06tvt', '::1', '', 1597424707, '__ci_last_regenerate|i:1597424707;'),
('b2ieqm7okolvspasrg934se11n3011q3', '::1', '', 1597424719, '__ci_last_regenerate|i:1597424719;'),
('c5lot8vstlak46tr77vnl5u1ng0cpg9q', '::1', '', 1597424726, '__ci_last_regenerate|i:1597424726;'),
('f3fjp019age3tmnr2l1vq25unu2s23id', '::1', '', 1597424739, '__ci_last_regenerate|i:1597424739;'),
('qd09qhup31t6rsma0qegbl4fl3375nbh', '::1', '', 1597425151, '__ci_last_regenerate|i:1597425151;'),
('mi0t8d7adr2gee3a1v4srafbdpbqjc6e', '::1', '', 1597425165, '__ci_last_regenerate|i:1597425165;'),
('hfgl1rfocf52gk972o92ua4d96e9d9hj', '::1', '', 1597429101, '__ci_last_regenerate|i:1597429101;'),
('9d9jhfausliqv0g1dnmj1dem04v8le05', '::1', '', 1597429233, '__ci_last_regenerate|i:1597429233;'),
('irm8i20jc44s6rbc9plkvo439ctr7e21', '::1', '', 1597429268, '__ci_last_regenerate|i:1597429268;'),
('vk49qd0unr374eate6n8kfjtsqgh2r7s', '::1', '', 1597429296, '__ci_last_regenerate|i:1597429296;'),
('2njr9kv5ppfob91vk7jbrvguolvmore1', '::1', '', 1597429307, '__ci_last_regenerate|i:1597429307;pid|i:1597429307;'),
('2pqdam4drj8cpc3pm5h4msupnasdto0c', '::1', '', 1597429326, '__ci_last_regenerate|i:1597429326;pid|i:1597429326;'),
('8u2pjmoudpe0vlbi9c0gslrs7c21su5d', '::1', '', 1597429493, '__ci_last_regenerate|i:1597429493;'),
('4isr4q67hnonm5l2ujejiopai90bmic5', '::1', '', 1597432077, '__ci_last_regenerate|i:1597432069;'),
('450kr0pah0nbackvqgbo3pn0f7a10cfb', '::1', '', 1597432077, '__ci_last_regenerate|i:1597432070;'),
('5g08p7di9jurbfa1gh4t11t6o0fgdfeu', '::1', '', 1597432247, '__ci_last_regenerate|i:1597432247;'),
('b18sqvjlr01l8q1fn2st0gqa46llajba', '::1', '', 1597432247, '__ci_last_regenerate|i:1597432247;'),
('1v7mjcankcg6r97546ft2dt9736meuln', '::1', '', 1597432350, '__ci_last_regenerate|i:1597432347;'),
('pgorbe16h4aa4a47um9gdme4704u5o6u', '::1', '', 1597432390, '__ci_last_regenerate|i:1597432390;'),
('fjha1pdfil2375g4fnsjs0qk3fb8enmb', '::1', '', 1597432401, '__ci_last_regenerate|i:1597432401;'),
('dsnf1gd962dpndkuabqmvld226i62t16', '::1', '', 1597432431, '__ci_last_regenerate|i:1597432423;'),
('fsfrrtj824go3u7bjbekfngf30q5eva7', '::1', '', 1597432489, '__ci_last_regenerate|i:1597432489;'),
('ttdl50tlmmf9n18tqhe0tjh0unken855', '::1', '', 1597432561, '__ci_last_regenerate|i:1597432560;'),
('qh8hc6u6o46gna9cutjopru4pgvejkqa', '::1', '', 1597432595, '__ci_last_regenerate|i:1597432595;'),
('63fkdgjqs3r4q8fm3req2ktgp3k0smgr', '::1', '', 1597432608, '__ci_last_regenerate|i:1597432608;'),
('e7gvfoqintjgq6k9j24fproq9bbhg2mg', '127.0.0.1', '', 1597504491, '__ci_last_regenerate|i:1597504491;'),
('ocu8lhq4hockno80bsmu719v8vj0l80a', '127.0.0.1', '', 1597504531, '__ci_last_regenerate|i:1597504531;'),
('t19sd4nhb9ahnl819rtof0hp1nftbhdr', '::1', '', 1597504532, '__ci_last_regenerate|i:1597504532;'),
('13584m2acsqsjvq0pi334o22t36kkd7j', '::1', '', 1597504688, '__ci_last_regenerate|i:1597504687;'),
('ndfijfc3blpltvr77rl5p7k31cejtu34', '::1', '', 1597504692, '__ci_last_regenerate|i:1597504692;'),
('ojfr45579j5pq8s3e6ivhrp9qeere6ii', '::1', '', 1597504913, '__ci_last_regenerate|i:1597504913;'),
('1pfb69vff5qqv50rip4smdq7visjvfla', '::1', '', 1597504921, '__ci_last_regenerate|i:1597504921;'),
('4536b0r2tqv8drstvltoro6hrmo75pp5', '::1', '', 1597504921, '__ci_last_regenerate|i:1597504921;'),
('m4c9s1mn8hc3fovlth7bo4g6c8hj2201', '::1', '', 1597504949, '__ci_last_regenerate|i:1597504949;'),
('7o86pn3eul8h400gdbgn7243vt8ev7vg', '::1', '', 1597504978, '__ci_last_regenerate|i:1597504977;pid|i:1597504978;'),
('deqlugknul4vnah4l4t1g2b2r6bqtlma', '::1', '', 1597505032, '__ci_last_regenerate|i:1597505032;'),
('ouqat6q6fptsmkrviu0git7i8pdbclip', '::1', '', 1597505045, '__ci_last_regenerate|i:1597505045;pid|i:1597505045;'),
('tau51dldi4h3qpjam2d2ri3gfbacu6cb', '::1', '', 1597505703, '__ci_last_regenerate|i:1597505703;pid|i:1597505703;'),
('518rai5nnquhinutri4cm8sarq2hd3a3', '::1', '', 1597506759, '__ci_last_regenerate|i:1597506759;pid|i:1597506759;'),
('rfj0ehv8pf85afrqnbbsq9uqg54ir3jv', '::1', '', 1597506769, '__ci_last_regenerate|i:1597506769;pid|i:1597506769;'),
('q8u2tur6484a96akvroe3e19m0j9lcej', '::1', '', 1597506771, '__ci_last_regenerate|i:1597506771;'),
('k3jk9r6q4ic6p46oj597v3c397m9cb87', '::1', '', 1597507116, '__ci_last_regenerate|i:1597507116;'),
('j5bnr9br975pt25vkoj83am5mram6pbd', '::1', '', 1597507121, '__ci_last_regenerate|i:1597507121;'),
('uv73drh2f67a1k1lap2pr8s45v9tavuk', '::1', '', 1597507134, '__ci_last_regenerate|i:1597507134;pid|i:1597507134;'),
('p0622r3ovu3fadjldmc4krumpgi8elme', '::1', '', 1597508180, '__ci_last_regenerate|i:1597508180;'),
('46l6hg90tlhnlrv1b41sanoi6c7ccjr6', '::1', '', 1597508197, '__ci_last_regenerate|i:1597508197;pid|i:1597508197;'),
('lhs1lqfd95vivj27kl0vg7mc46m8r5ar', '::1', '', 1597508242, '__ci_last_regenerate|i:1597508242;pid|i:1597508242;'),
('ulbm0gct0igsa8nrc7oe32kb4m063ta1', '::1', '', 1597508267, '__ci_last_regenerate|i:1597508267;pid|i:1597508267;'),
('k0kamafmrdq1roseauce60edbcojntjo', '::1', '', 1597508333, '__ci_last_regenerate|i:1597508333;pid|i:1597508333;'),
('fm9rf7shnf3aq0tck4cbs2br5arnno47', '::1', '', 1597508348, '__ci_last_regenerate|i:1597508348;pid|i:1597508348;'),
('gvb6vbni0ihfb426b7hse0buh5sptfi0', '::1', '', 1597508431, '__ci_last_regenerate|i:1597508431;pid|i:1597508431;'),
('sn8vnj489ob2dhvaldelp7rom7s6c8ps', '::1', '', 1597508437, '__ci_last_regenerate|i:1597508437;pid|i:1597508437;'),
('s9h9nqa6lbcjsqdgtr0gbkqir9ajpg4f', '::1', '', 1597508441, '__ci_last_regenerate|i:1597508441;'),
('ntvf29g2k4qrt0610tc1tujbsecfdje1', '::1', '', 1597508465, '__ci_last_regenerate|i:1597508465;pid|i:1597508465;'),
('4odf2356lqilif5b6837g9h2507dg7rk', '::1', '', 1597508470, '__ci_last_regenerate|i:1597508470;pid|i:1597508470;'),
('ovct3cua9hpchg2qihr56auo5b9qaotp', '::1', '', 1597508577, '__ci_last_regenerate|i:1597508577;pid|i:1597508577;'),
('2r4nc9r4al87s2s9u8b2h9tmbtq5g6hg', '::1', '', 1597508586, '__ci_last_regenerate|i:1597508586;pid|i:1597508586;'),
('q96fgn4m6s77cmfevi3lo3m65i1q63np', '::1', '', 1597508649, '__ci_last_regenerate|i:1597508648;pid|i:1597508648;'),
('1jg0d041b1tc01fhr3v4ujurnmnjdfis', '::1', '', 1597508655, '__ci_last_regenerate|i:1597508655;pid|i:1597508655;'),
('fm0nj6gikssbgbhpr3oiv6qtg23c4lvo', '::1', '', 1597508779, '__ci_last_regenerate|i:1597508778;pid|i:1597508779;'),
('72j4epg1mg68buqmja82eq5r2d1f3lld', '::1', '', 1597508827, '__ci_last_regenerate|i:1597508827;pid|i:1597508827;'),
('oh7iuicmfp0494itceg9b7condqakogb', '::1', '', 1597508837, '__ci_last_regenerate|i:1597508837;pid|i:1597508837;'),
('6nt734mkv3qj6pipsgtdkn5gbe8v5k7i', '::1', '', 1597508861, '__ci_last_regenerate|i:1597508861;'),
('skc8vjuup9pvdm14qksjvmalktsst1p1', '::1', '', 1597508872, '__ci_last_regenerate|i:1597508872;'),
('erfeg9ohe4g436574rt6eboh84j31fj5', '::1', '', 1597508880, '__ci_last_regenerate|i:1597508880;'),
('kdb5vfteq73sohgnbvuifp267qviu283', '::1', '', 1597508947, '__ci_last_regenerate|i:1597508946;'),
('gdjhdpkquaretahg3u07tehs58kdgmne', '::1', '', 1597508981, '__ci_last_regenerate|i:1597508981;'),
('qkpgeplegd3mpocfsohrve9q42em18us', '::1', '', 1597508991, '__ci_last_regenerate|i:1597508991;'),
('jcb9dvn766afi27418c21ajo067eveb1', '::1', '', 1597509090, '__ci_last_regenerate|i:1597509090;'),
('055vqach27ecee4qc360h86ql5nbq6d1', '::1', '', 1597509104, '__ci_last_regenerate|i:1597509104;pid|i:1597509104;'),
('2jj3qt5b99a69g0jt5d8pqtgd5m0t8dg', '::1', '', 1597509116, '__ci_last_regenerate|i:1597509116;pid|i:1597509116;'),
('d0sksaglnpi91rv2g7kbh65gpnng12o4', '::1', '', 1597510528, '__ci_last_regenerate|i:1597510528;pid|i:1597510528;'),
('3ldbso2cov262v12eed5mg7v4nri9k54', '::1', '', 1597510585, '__ci_last_regenerate|i:1597510585;pid|i:1597510585;'),
('rl163ggf3cs7jpoe30mtfnsg9q49pmhl', '::1', '', 1597510592, '__ci_last_regenerate|i:1597510592;pid|i:1597510592;'),
('88k78k77jjvsg41ql2r7ig5l6i74n2i0', '::1', '', 1597510626, '__ci_last_regenerate|i:1597510626;pid|i:1597510626;'),
('qdlh128ocja8466soosirl7nnr43k582', '::1', '', 1597510637, '__ci_last_regenerate|i:1597510637;pid|i:1597510637;'),
('l2jdi7gt6pnegjj4vhh1h4uk72bui4is', '::1', '', 1597510638, '__ci_last_regenerate|i:1597510638;pid|i:1597510638;'),
('egkgvdm58m9q43bvp7tvt1cbe6bdej4e', '::1', '', 1597510661, '__ci_last_regenerate|i:1597510661;pid|i:1597510661;'),
('upo8n3b10sv186cp3cm19uujfsh94g25', '::1', '', 1597510683, '__ci_last_regenerate|i:1597510683;pid|i:1597510683;'),
('ptqp9l599o0ev2qffougtu6pt05ufv41', '::1', '', 1597510690, '__ci_last_regenerate|i:1597510690;pid|i:1597510690;'),
('t8i3cdrl2o1i3j06audaqkv7btqa2ab6', '::1', '', 1597510745, '__ci_last_regenerate|i:1597510745;pid|i:1597510745;'),
('avng8i1j0mmlhsi6iahh70jejjfa5pu1', '::1', '', 1597510750, '__ci_last_regenerate|i:1597510750;pid|i:1597510750;'),
('8s5u11ih421tls5iogdk8pefikirer6c', '::1', '', 1597510786, '__ci_last_regenerate|i:1597510786;pid|i:1597510786;'),
('o51fo93htbqi77agnefq2fj9pdrji1j4', '::1', '', 1597510797, '__ci_last_regenerate|i:1597510797;pid|i:1597510797;'),
('h8ksnomq6l85cmfnk8v2hqmljfuljl2c', '::1', '', 1597510997, '__ci_last_regenerate|i:1597510997;'),
('8jo4sgrjp89hp3aq1ke10h5eia0fac75', '::1', '', 1597511004, '__ci_last_regenerate|i:1597511004;pid|i:1597511004;'),
('jjvs7jk41dcondfnlghjbd9e4i7mkrg6', '::1', '', 1597511066, '__ci_last_regenerate|i:1597511066;pid|i:1597511066;'),
('01brcm4ijpam582c2fkbjrr9fnphpfe9', '::1', '', 1597511167, '__ci_last_regenerate|i:1597511167;pid|i:1597511167;'),
('crk4j9ntfmkjaoq7p3v86fg9uvkoi49t', '::1', '', 1597511174, '__ci_last_regenerate|i:1597511174;pid|i:1597511174;'),
('8cs08kt4jjofrcqn3vacn2qq0r76pcrk', '::1', '', 1597511363, '__ci_last_regenerate|i:1597511363;pid|i:1597511363;'),
('fau5l224om29ingi1oqgkerluv0vioji', '::1', '', 1597511371, '__ci_last_regenerate|i:1597511371;pid|i:1597511371;'),
('ifg7g4djeag36920n25404oog3silmdk', '::1', '', 1597511709, '__ci_last_regenerate|i:1597511709;'),
('h15bbvno3eqs363dhri84s3ojamt2cj0', '::1', '', 1597511869, '__ci_last_regenerate|i:1597511869;'),
('3blcfeu9h60s2185lend79nqrlseord5', '::1', '', 1597511900, '__ci_last_regenerate|i:1597511900;'),
('5g293t1irb21fg42ka90e6db53orfcqs', '::1', '', 1597512037, '__ci_last_regenerate|i:1597512037;'),
('ma3ssf95r2ujkjk0qr7ro8slje9gl3b5', '::1', '', 1597512143, '__ci_last_regenerate|i:1597512143;'),
('feeq8uq6dhl43e7hun43pampraaivug8', '::1', '', 1597512179, '__ci_last_regenerate|i:1597512179;'),
('8d64uoq2ndmrsfr01mmunt8s825t15ne', '::1', '', 1597512192, '__ci_last_regenerate|i:1597512191;'),
('joiso36bv0sk6881reacrucineo9aq4o', '::1', '', 1597595912, '__ci_last_regenerate|i:1597595911;'),
('cvv1vh1onh4lg2o5bqr1urv89bniqtck', '::1', '', 1597595996, '__ci_last_regenerate|i:1597595996;'),
('8338enugqgc8j15jhd1uocu7rvtckn08', '::1', '', 1597596112, '__ci_last_regenerate|i:1597596112;'),
('mitu4rgc60bje5l7uvdmnans9msijra1', '::1', '', 1597596150, '__ci_last_regenerate|i:1597596149;'),
('n0ip2b3hsg8vvqr4cerukveo49fi8iq8', '::1', '', 1597596197, '__ci_last_regenerate|i:1597596197;'),
('og88n0hpirilrvkdr073puqa7a8tqlkr', '::1', '', 1597596225, '__ci_last_regenerate|i:1597596225;'),
('hb32fuo8inqkgop2e6c9bj8b5481kncd', '::1', '', 1597596279, '__ci_last_regenerate|i:1597596279;'),
('7ued1k4mcr2fnt9i3lh0gct4617jrdl2', '::1', '', 1597596295, '__ci_last_regenerate|i:1597596295;pid|i:1597596295;'),
('1037fragp3ij9d2nr932hakrkcf7s9h2', '::1', '', 1597596408, '__ci_last_regenerate|i:1597596408;'),
('43vrh489qnnkr98ohhhq506kf24p253q', '::1', '', 1597596509, '__ci_last_regenerate|i:1597596509;pid|i:1597596509;'),
('cbslm9ln9mknsn5guc3o6prd6gns09fm', '::1', '', 1597596554, '__ci_last_regenerate|i:1597596554;'),
('lqruncqr75e1he5umq1b3a86jgc9o7dk', '::1', '', 1597596842, '__ci_last_regenerate|i:1597596842;'),
('nrdbgs0ec7dhgfv1deogfc0q0kc85lg2', '::1', '', 1597596976, '__ci_last_regenerate|i:1597596976;'),
('89b4ja0ckc1c5sgf77doj2mbq5n78mii', '::1', '', 1597596996, '__ci_last_regenerate|i:1597596996;'),
('pdnbh9qfro927u067o3b4gadkmphrh5t', '::1', '', 1597597004, '__ci_last_regenerate|i:1597597004;'),
('58jsvg5tl5jn5tsc5rr5s6m4rabdkod3', '::1', '', 1597597056, '__ci_last_regenerate|i:1597597056;'),
('nkqrtevbsg6n34o703f387c22om3622t', '::1', '', 1597597069, '__ci_last_regenerate|i:1597597069;pid|i:1597597069;'),
('poaohouigts8922p9m65c7udjpr015hm', '::1', '', 1597597178, '__ci_last_regenerate|i:1597597178;'),
('4ifvhub0g3oa4ghrmt0h03t7pnl1n5d1', '::1', '', 1597597346, '__ci_last_regenerate|i:1597597346;'),
('77t7d49j8m5i5obp64kpn3h4flt3ci5g', '::1', '', 1597597373, '__ci_last_regenerate|i:1597597372;'),
('idr8s0h1bc2qqun7asbo4vab8oc26qcn', '::1', '', 1597597469, '__ci_last_regenerate|i:1597597469;'),
('uvrniv7jtomas0f453g7b8grlp909lsd', '::1', '', 1597597486, '__ci_last_regenerate|i:1597597486;'),
('0rlbmno10llth0mhdimossv340l990nm', '::1', '', 1597597551, '__ci_last_regenerate|i:1597597551;'),
('6jboim1mk6q3l874n2anitv4gbo5ccme', '::1', '', 1597597565, '__ci_last_regenerate|i:1597597565;'),
('q2ohaukgjpo4q2d8pr46v3muaevlglpf', '::1', '', 1597597583, '__ci_last_regenerate|i:1597597583;'),
('2mmhtc6jfmepkcqnci3diknkncchv9ee', '::1', '', 1597597605, '__ci_last_regenerate|i:1597597605;'),
('v649a0up6a5no3le5aaid9nrkmrq71iv', '::1', '', 1597597619, '__ci_last_regenerate|i:1597597619;'),
('l37imcio95l4458taqo2l2h08inhviha', '::1', '', 1597597638, '__ci_last_regenerate|i:1597597638;'),
('023ncg68a4cu472ucm242egp2it6e32a', '::1', '', 1597597650, '__ci_last_regenerate|i:1597597650;'),
('uksaitmma0gpe03lpo5v9oj3fpgqb4fg', '::1', '', 1597597662, '__ci_last_regenerate|i:1597597662;'),
('opngbu99shido6jqdhgikr46gkj7ghmj', '::1', '', 1597597738, '__ci_last_regenerate|i:1597597738;'),
('1oqpsf9gbrf3hdah63nif2phkjt8dnk7', '::1', '', 1597597751, '__ci_last_regenerate|i:1597597751;'),
('n1hu8iiov0gpksrskeaqifo1cau4b97s', '::1', '', 1597597788, '__ci_last_regenerate|i:1597597788;'),
('njla2crp1m3dpdqmp8j488qnur8e0vrm', '::1', '', 1597597801, '__ci_last_regenerate|i:1597597801;'),
('clfoh3osic80din6f9du0nf458abl5to', '::1', '', 1597597824, '__ci_last_regenerate|i:1597597824;'),
('88adas1sukq9ss7bhk8br9tcrvufklh4', '::1', '', 1597597838, '__ci_last_regenerate|i:1597597838;'),
('qi6u7qrgfa9bp7gdv5n2ub2on1l9bq4c', '::1', '', 1597597869, '__ci_last_regenerate|i:1597597869;'),
('3gt0f2vjkiqdej0b5h0idlquu5mo7oic', '::1', '', 1597597884, '__ci_last_regenerate|i:1597597884;'),
('fktodt2s4aa4gm8gv874nna9711elc6o', '::1', '', 1597597975, '__ci_last_regenerate|i:1597597975;'),
('fssc6s6pp20eqtcn6afun7rmh88m15mm', '::1', '', 1597598079, '__ci_last_regenerate|i:1597598079;'),
('d2v5j6ajulm67ag605tv6vbr9l9t2oil', '::1', '', 1597598104, '__ci_last_regenerate|i:1597598103;'),
('ud7jkuj6m70ealrlfgn84m41qd5ffkad', '::1', '', 1597598189, '__ci_last_regenerate|i:1597598189;'),
('11dh30paabf5covqu1sphd342bn1uoio', '::1', '', 1597598206, '__ci_last_regenerate|i:1597598206;'),
('09atf39mkhlu2brt43bflud4987jv8ah', '::1', '', 1597598220, '__ci_last_regenerate|i:1597598220;'),
('882snutmi20tde5kqfcipdvnt52bglds', '::1', '', 1597598233, '__ci_last_regenerate|i:1597598233;'),
('l1ieo2gaa1sfip2lod15ufvn6bsbvodn', '::1', '', 1597598275, '__ci_last_regenerate|i:1597598275;'),
('a080psp43lo9kjp8qtch5nm8r4dk3b5u', '::1', '', 1597598289, '__ci_last_regenerate|i:1597598289;'),
('fmf3ikdv7gv41ktl71d73p3kk3gki53q', '::1', '', 1597598329, '__ci_last_regenerate|i:1597598329;'),
('dhi2ig94g04986261cm9e281em82bs8g', '::1', '', 1597598351, '__ci_last_regenerate|i:1597598351;'),
('imthurs7olu0inpfuak7bcact7q4ajcq', '::1', '', 1597598383, '__ci_last_regenerate|i:1597598383;'),
('iqksmf2b382h5nes01cidmu1l7lckdk9', '::1', '', 1597598454, '__ci_last_regenerate|i:1597598454;'),
('a50omde8vclevft3i9fmhr13umg5t05s', '::1', '', 1597598503, '__ci_last_regenerate|i:1597598503;'),
('9qvqc1leg4ja4sf3j22rkq53gido4g69', '::1', '', 1597598505, '__ci_last_regenerate|i:1597598505;'),
('q8esiurj4dnm19r8bhp0tsveagq1r2g3', '::1', '', 1597598527, '__ci_last_regenerate|i:1597598527;'),
('kmp44pke46tibi7c18idbu1dmvjv8i1q', '::1', '', 1597598539, '__ci_last_regenerate|i:1597598539;'),
('dfmr7kuk32e5k9cpldmehjdsno4lmj3j', '::1', '', 1597598611, '__ci_last_regenerate|i:1597598611;'),
('763kpilbi7005dn8e9jis38vf5gvnrq7', '::1', '', 1597598625, '__ci_last_regenerate|i:1597598625;'),
('6pp7dslcfv7fa3sjcfhh185mfbfvl7v7', '::1', '', 1597598732, '__ci_last_regenerate|i:1597598732;'),
('ban5ltdfsp27n8upbg0afk0tf11e2b2b', '::1', '', 1597598758, '__ci_last_regenerate|i:1597598758;'),
('ssdt9ae7875eguohokppjautj5ci8en1', '::1', '', 1597598778, '__ci_last_regenerate|i:1597598778;'),
('fh93biejutg8h5rlidail0q0kp4ogtea', '::1', '', 1597598786, '__ci_last_regenerate|i:1597598786;'),
('8elbnc2oht8glej9j5d7mkl4b6brud6j', '::1', '', 1597598804, '__ci_last_regenerate|i:1597598804;'),
('trp87a6fpt4nn2hq6tb56l7ghn5l1hnc', '::1', '', 1597598819, '__ci_last_regenerate|i:1597598819;'),
('oid5c7fdl4gksg40naale0oqgjvsr58q', '::1', '', 1597598846, '__ci_last_regenerate|i:1597598846;'),
('25rtj2u8tn3abbu99600nkm31u28g76k', '::1', '', 1597598858, '__ci_last_regenerate|i:1597598858;'),
('2nhhmqco78ctjijiedfjfsnrrpii9eg0', '::1', '', 1597598875, '__ci_last_regenerate|i:1597598874;'),
('tefffjof3hs0igqoa7o7b8hliacmrgfb', '::1', '', 1597598888, '__ci_last_regenerate|i:1597598888;'),
('89ov789qotln7k4ucf88vhgrfpmls74g', '::1', '', 1597599196, '__ci_last_regenerate|i:1597599196;'),
('tudfsfsin6qhlsguib1err7b989eafoe', '::1', '', 1597599196, '__ci_last_regenerate|i:1597599196;'),
('ajscajq47i9oi1c71lk3v6jtgeeqfc0p', '::1', '', 1597599363, '__ci_last_regenerate|i:1597599362;'),
('ocvq7e9902ntlg365ovkfdcj3pcuik3j', '::1', '', 1597599363, '__ci_last_regenerate|i:1597599363;'),
('qepnlitq0ijpinbp9kgnbsblq0enedta', '::1', '', 1597599491, '__ci_last_regenerate|i:1597599480;'),
('o1lqbba0sd4tn73s4a8k6shtsc2hmdf5', '::1', '', 1597599493, '__ci_last_regenerate|i:1597599486;'),
('7qfj0kse5v8o95n6uuntopcfsv7t8il4', '::1', '', 1597599640, '__ci_last_regenerate|i:1597599640;'),
('a5gv00f54r4smqbrm6kbcpvjoqit500g', '::1', '', 1597599730, '__ci_last_regenerate|i:1597599730;'),
('kpim0pi1mb160v19dfaf7aoiicjf3rkd', '::1', '', 1597599792, '__ci_last_regenerate|i:1597599792;'),
('j2pqpgm5d97etega5q3ea1da3bb7pvgr', '::1', '', 1597599793, '__ci_last_regenerate|i:1597599793;'),
('scsp02aa971p586m1naqgkk7874fg8vr', '::1', '', 1597599888, '__ci_last_regenerate|i:1597599888;'),
('s435ab9jkq9s5ela50h2d334vims6e3r', '::1', '', 1597599889, '__ci_last_regenerate|i:1597599888;'),
('55lo8q8257q0l7cvj6muces29un7mutm', '::1', '', 1597599931, '__ci_last_regenerate|i:1597599930;'),
('lada818uikog5r8l37kigml3h1dfgbbe', '::1', '', 1597601919, '__ci_last_regenerate|i:1597601919;'),
('fg971j4khmkvio2upelvb3mqga4agn06', '::1', '', 1597601920, '__ci_last_regenerate|i:1597601920;'),
('e6goob01e9783qorgfant07b35cnodq3', '::1', '', 1597601938, '__ci_last_regenerate|i:1597601938;'),
('bkss7nab49p75k0t862mc6og2pu79c61', '::1', '', 1597602293, '__ci_last_regenerate|i:1597602293;'),
('4au16iq7mh3epdb5786a1goano1ho4vh', '::1', '', 1597602293, '__ci_last_regenerate|i:1597602293;'),
('v08ap5b28lb0d44uene4p13apv5oskp5', '::1', '', 1597602348, '__ci_last_regenerate|i:1597602347;'),
('pjf30c1egfvdierll9uvj3ugmd9edmas', '::1', '', 1597602394, '__ci_last_regenerate|i:1597602394;'),
('7t3mefm1i35ccl45p2cc9398im2gl3fs', '::1', '', 1597602394, '__ci_last_regenerate|i:1597602394;'),
('3uqn2t3qt1b2aee566e8u0di62t336gr', '::1', '', 1597602442, '__ci_last_regenerate|i:1597602442;'),
('lta2g6j0nfg2jm0fu2jljaf83qdjkvf0', '::1', '', 1597602442, '__ci_last_regenerate|i:1597602442;'),
('vdpp8oph0m2f4vbqjvi5msjlkqlferch', '::1', '', 1597602499, '__ci_last_regenerate|i:1597602498;'),
('3vr31q9eqvsfp3brt8f37mflv992avc0', '::1', '', 1597602531, '__ci_last_regenerate|i:1597602531;'),
('4u00iup89960rid8ohelj2itn1og9k7f', '::1', '', 1597602533, '__ci_last_regenerate|i:1597602533;'),
('53uu02q7nfg6tslaso5ajlcuqq96lin3', '::1', '', 1597602654, '__ci_last_regenerate|i:1597602654;'),
('7b0atjbuit302g401ucah9pdv6n5ejb5', '::1', '', 1597602688, '__ci_last_regenerate|i:1597602688;'),
('ncgiqctepftrkt9nq8oqjmqqap9mbfcc', '::1', '', 1597602688, '__ci_last_regenerate|i:1597602688;'),
('t2l6jffdro7qm5imq9167v570mjoo641', '::1', '', 1597602801, '__ci_last_regenerate|i:1597602801;'),
('vcl0m7sppi4f4k2mgundv5s75qag9b7r', '::1', '', 1597602956, '__ci_last_regenerate|i:1597602956;'),
('d22ncs98fjs4rgj37sf9q0g2bbb90qo0', '::1', '', 1597602956, '__ci_last_regenerate|i:1597602956;'),
('uge5q0irqe85g5cdddaiet4ms7vb15cn', '::1', '', 1597602984, '__ci_last_regenerate|i:1597602984;'),
('ifgli3pv9831gmib15hsoupo6bneu1li', '::1', '', 1597602984, '__ci_last_regenerate|i:1597602984;'),
('gf7kimer0trngkqr2d8k61n9e4l7j137', '::1', '', 1597603056, '__ci_last_regenerate|i:1597603056;'),
('sfua2joku81ra39pik4srjqnsk4gh291', '::1', '', 1597603080, '__ci_last_regenerate|i:1597603080;'),
('26olrjm7kvrioqa77s739834er203aac', '::1', '', 1597603095, '__ci_last_regenerate|i:1597603095;'),
('ovak5554p59q1p1c1gea1m8i5ba7hhku', '::1', '', 1597603142, '__ci_last_regenerate|i:1597603142;'),
('907mqtv2cjj8p1aj38c0skfjo11622ec', '::1', '', 1597603158, '__ci_last_regenerate|i:1597603158;'),
('lh5mt27e7j9srg7vkh3mn34c1gvjivm3', '::1', '', 1597603236, '__ci_last_regenerate|i:1597603236;'),
('u581n2d280dpqi2pq2ctcs56vt0somnf', '::1', '', 1597603269, '__ci_last_regenerate|i:1597603269;'),
('shd49knvljgdsmok5a9fnr7nithcs3sm', '::1', '', 1597603306, '__ci_last_regenerate|i:1597603306;'),
('t5i3apj1ehvr5409a9g61b7v0vg5pmhp', '::1', '', 1597603321, '__ci_last_regenerate|i:1597603321;'),
('4ii3vruidpq2avmbbg0lkrig7b4luil7', '::1', '', 1597603391, '__ci_last_regenerate|i:1597603391;'),
('actcuc6oecfbd0qk1se1og4l9t8ddast', '::1', '', 1597603393, '__ci_last_regenerate|i:1597603393;'),
('s4rtq8d9c0tfdmne9jkp3q2fjb2v5a8m', '::1', '', 1597603423, '__ci_last_regenerate|i:1597603423;'),
('8a4akad6iu89jau2o6btlk2sjjlaaqbj', '::1', '', 1597603646, '__ci_last_regenerate|i:1597603646;'),
('r9i0028ngimuf7sjei59o74r2nube63j', '::1', '', 1597603676, '__ci_last_regenerate|i:1597603676;'),
('t20kqq5hsb1brkv4i6ma50g9un4ld29q', '::1', '', 1597603927, '__ci_last_regenerate|i:1597603927;'),
('ec0kqt1jsmdd9mi8p7h4g3hikok743s1', '::1', '', 1597603928, '__ci_last_regenerate|i:1597603928;'),
('rcu02f7jchgproukek5ptrk42rmullbv', '::1', '', 1597604466, '__ci_last_regenerate|i:1597604466;'),
('krbmvgqeu34unut05mb73e1u6bmkhv4h', '::1', '', 1597604512, '__ci_last_regenerate|i:1597604512;'),
('r85gpjrvsf1ltrte8mv6jinvshi6dtss', '::1', '', 1597604632, '__ci_last_regenerate|i:1597604632;'),
('2epuuabhjf5ld80k8ub3erars7f8jltv', '::1', '', 1597604896, '__ci_last_regenerate|i:1597604896;'),
('fvj9d4vfva1no9kurhlfh246ph9v0fqd', '::1', '', 1597611091, '__ci_last_regenerate|i:1597611091;'),
('k7cbbr6l741ao4c16msvs1ue129s78me', '::1', '', 1597611699, '__ci_last_regenerate|i:1597611694;'),
('lfpt75haok5l5odbhmn3iitt0h7v3vd1', '::1', '', 1597611708, '__ci_last_regenerate|i:1597611708;'),
('mvmiq973a633v3vvmjclakek5kelmede', '::1', '', 1597611764, '__ci_last_regenerate|i:1597611764;'),
('fgb1gp14mmek271p0abj9br4esnfvkga', '::1', '', 1597611953, '__ci_last_regenerate|i:1597611953;'),
('6fdbv7aa4kobrdur7dh0rbl160u5mg7a', '::1', '', 1597611973, '__ci_last_regenerate|i:1597611973;'),
('g6vcgvae9t7ata7vbnk226o1r4aghu0u', '::1', '', 1597612029, '__ci_last_regenerate|i:1597612029;'),
('vsfe0rt53van1u10h0bjbskqvvpidva8', '::1', '', 1597612072, '__ci_last_regenerate|i:1597612072;'),
('ho2f2v9u7hmedi1anvrrl2sveg3hbip7', '::1', '', 1597612094, '__ci_last_regenerate|i:1597612094;'),
('jkdaqi4jmq61el87t83aard07homi7qr', '::1', '', 1597612127, '__ci_last_regenerate|i:1597612127;'),
('8qqprkvakatn7nto15lhpsdh0lofuifr', '::1', '', 1597612245, '__ci_last_regenerate|i:1597612245;'),
('3lufnjfelun9ts3gp6rvjjf6n7b4r7mf', '::1', '', 1597612250, '__ci_last_regenerate|i:1597612250;'),
('tddn14av2erh7ikbe4po74a5ei1fiqus', '::1', '', 1597612271, '__ci_last_regenerate|i:1597612271;'),
('isimjifhpc2jk908jms2ucmu1n82feka', '::1', '', 1597612337, '__ci_last_regenerate|i:1597612337;'),
('9j16jcujo7iqb5h3i6kmeuiiftn2e3j1', '::1', '', 1597612356, '__ci_last_regenerate|i:1597612356;'),
('7jq73cnog70jbnert4o22h1hq1od5ekt', '::1', '', 1597612446, '__ci_last_regenerate|i:1597612445;'),
('komepoutsf5vtlv7f1vrpeprptqsmn41', '::1', '', 1597612467, '__ci_last_regenerate|i:1597612467;'),
('2g3ofetd5o7hgrqn3og5i7cni32i028p', '::1', '', 1597612504, '__ci_last_regenerate|i:1597612504;'),
('1e9gd6pf8p48pvc69j10ueemovipr1nq', '::1', '', 1597612552, '__ci_last_regenerate|i:1597612552;'),
('10j79m9ebfijr1sqnhk829c66nhdvpp5', '::1', '', 1597612586, '__ci_last_regenerate|i:1597612586;'),
('9kn0v76us48m9tk2pa90t8l1jafqc9nm', '::1', '', 1597612761, '__ci_last_regenerate|i:1597612761;'),
('uodnkhph8io9evbnesurcgclaj0k5iei', '::1', '', 1597612823, '__ci_last_regenerate|i:1597612823;'),
('onh1nhk35qphpmgo21tbv23vis3fe8e8', '::1', '', 1597612841, '__ci_last_regenerate|i:1597612841;'),
('tce2e4692jlb8ehfoutniunvlk25lcji', '::1', '', 1597612846, '__ci_last_regenerate|i:1597612846;'),
('p43uijv9984uit1qsk60dqsvo2a5tqm2', '::1', '', 1597612916, '__ci_last_regenerate|i:1597612916;'),
('7ve3119bv3u2t73ler8831r74pcg31fv', '::1', '', 1597612947, '__ci_last_regenerate|i:1597612947;'),
('lk874s5mksh8v9vdg75vuvhd98f543bp', '::1', '', 1597612962, '__ci_last_regenerate|i:1597612962;'),
('ro9rm1hu95j54ts3eemh35hsl1bps6mm', '::1', '', 1597613050, '__ci_last_regenerate|i:1597613050;'),
('3l1jqrs555kktmf19gl6haht4gfvuu6k', '::1', '', 1597613366, '__ci_last_regenerate|i:1597613365;'),
('9rgcu45laosukfgh5mabvb1u54epobj0', '::1', '', 1597613861, '__ci_last_regenerate|i:1597613861;'),
('5oateq4hcqrq4145lhq6pjqdko6nv4b9', '::1', '', 1597614092, '__ci_last_regenerate|i:1597614092;'),
('0n5eo0qnbfenmdsj4gklm3dij5fhj5uv', '::1', '', 1597614285, '__ci_last_regenerate|i:1597614285;'),
('5l2jsk2vgucamqu7ogtq4sikmvmkjfq5', '::1', '', 1597614376, '__ci_last_regenerate|i:1597614376;'),
('03ndl7ir82nbmqj1oake9nb55trbt5i3', '::1', '', 1597614400, '__ci_last_regenerate|i:1597614400;'),
('835agta6jei3nkcs7cd2ndjgk7pj270o', '::1', '', 1597614585, '__ci_last_regenerate|i:1597614585;'),
('3kqta5pl3or37754aethmnugddtausl1', '::1', '', 1597614637, '__ci_last_regenerate|i:1597614637;pid|i:1597614637;'),
('dnvm4jm3tinfee25o2tei7g17le6jgi0', '::1', '', 1597614638, '__ci_last_regenerate|i:1597614637;'),
('crpmptiqc7df0pmihbk87n0oqn7t5r38', '::1', '', 1597614704, '__ci_last_regenerate|i:1597614704;'),
('irf1qkj3v5k6fngf86e6bcosie3mr4ps', '::1', '', 1597614786, '__ci_last_regenerate|i:1597614786;'),
('7o9mpgo6k5i0r4mslvvfpu25q5t4fep2', '::1', '', 1597614836, '__ci_last_regenerate|i:1597614836;'),
('2hebkh0l4253nvmsnr5ujep9a1cbcj57', '::1', '', 1597614932, '__ci_last_regenerate|i:1597614931;'),
('7oanql8abaktueldlsojikrgpcuagbut', '127.0.0.1', '', 1597661424, '__ci_last_regenerate|i:1597661424;'),
('q4k7a118anbhg2ngejuinhba13a06njh', '127.0.0.1', '', 1597661433, '__ci_last_regenerate|i:1597661433;user_id|s:1:"1";is_logged_in|b:1;'),
('raojp21d1rip89tr70qbedvlrik869s4', '127.0.0.1', '', 1597661433, '__ci_last_regenerate|i:1597661433;'),
('mn37qjktu48qju27irsvb582njq0mjtd', '127.0.0.1', '', 1597661438, '__ci_last_regenerate|i:1597661438;'),
('kicm29qmtjeunr006gjcmn4qngao6fer', '127.0.0.1', '', 1597677950, '__ci_last_regenerate|i:1597677949;'),
('ptqo39kcffepsdnac9md3fs0geatt803', '::1', '', 1597852791, '__ci_last_regenerate|i:1597852791;'),
('lhg0jm8e9cgiie2pn1k1lv9s6c0ktst2', '127.0.0.1', '', 1597853286, '__ci_last_regenerate|i:1597853286;'),
('c8k783i2qdjumhvl3md58cjqrtph9t8a', '127.0.0.1', '', 1597853352, '__ci_last_regenerate|i:1597853352;'),
('2ra943370jdbh955lit65v4b87lkel27', '127.0.0.1', '', 1597853398, '__ci_last_regenerate|i:1597853398;user_id|s:1:"1";is_logged_in|b:1;'),
('va9kkd28q9r8p8fd35lr9vokakdfrfji', '127.0.0.1', '', 1597853399, '__ci_last_regenerate|i:1597853399;'),
('hnfttn5rqrih2jh9suqkemijs24dbqke', '127.0.0.1', '', 1597853563, '__ci_last_regenerate|i:1597853562;'),
('p9jcnlvledc4rld5q5rmalq1abqetbp6', '::1', '', 1597853608, '__ci_last_regenerate|i:1597853608;user_id|s:1:"1";is_logged_in|b:1;'),
('vgsvpk461lopvefrgo0ndg01l7nfo3ks', '::1', '', 1597853608, '__ci_last_regenerate|i:1597853608;'),
('uf7fif6groob8kl3jb3uhda4sm81schf', '127.0.0.1', '', 1597853659, '__ci_last_regenerate|i:1597853659;'),
('m7b5gdo3b8ldcukr9km41lomiabmr63d', '::1', '', 1597853660, '__ci_last_regenerate|i:1597853660;'),
('52g0j02bmi7ga9ebidun4ev52p01l1hn', '127.0.0.1', '', 1597853717, '__ci_last_regenerate|i:1597853717;'),
('l5bpksggcfe8jhfhd7i6a1k97rcecf66', '127.0.0.1', '', 1597853748, '__ci_last_regenerate|i:1597853747;'),
('l9nt95dmlbjrfg5ro6fvkfuv6oabmae7', '::1', '', 1597853748, '__ci_last_regenerate|i:1597853748;'),
('njmjdq8jp5nrfojkuk8c0j4po5guu1fs', '127.0.0.1', '', 1597853780, '__ci_last_regenerate|i:1597853780;'),
('afn4mtc624hnksbh3gu98c1m1ge5i5re', '::1', '', 1597853780, '__ci_last_regenerate|i:1597853780;'),
('75peiodup7qo8qblmmhkslutpgd4qsoa', '127.0.0.1', '', 1597853786, '__ci_last_regenerate|i:1597853785;'),
('mcvgkl12g11112846be5eeb5g7uupf6b', '127.0.0.1', '', 1597853829, '__ci_last_regenerate|i:1597853829;'),
('2o06gtvulf0np3lpbjnts443k54av3vl', '::1', '', 1597853829, '__ci_last_regenerate|i:1597853829;'),
('9v8927t097g66o4a97hkmfhbe2bmnf2a', '127.0.0.1', '', 1597853832, '__ci_last_regenerate|i:1597853832;'),
('valqt19eu142qjsepnpvdms1uqvaq1nc', '127.0.0.1', '', 1597853876, '__ci_last_regenerate|i:1597853876;'),
('fej3a9hq3f87f64dld3satrqg06b1k14', '::1', '', 1597854833, '__ci_last_regenerate|i:1597854832;'),
('lu2ocpmoktf768s6e0605cla6vhq6jqi', '::1', '', 1597854874, '__ci_last_regenerate|i:1597854874;'),
('maf0np9tvipui025f4oo8obb4fss3e5u', '127.0.0.1', '', 1597856432, '__ci_last_regenerate|i:1597856432;'),
('o2nqsrcm14ume0ni1jbt78fsr4e80eej', '127.0.0.1', '', 1597859403, '__ci_last_regenerate|i:1597859402;'),
('oamegrcp9pojlfrthub56a1io849jkhb', '127.0.0.1', '', 1597859542, '__ci_last_regenerate|i:1597859542;'),
('ot1u37pr8slgqbmmg1qhketkaofdi88v', '::1', '', 1597864030, '__ci_last_regenerate|i:1597864029;'),
('4anp0vmcna6s5510s6q18sq0k2nkg01r', '127.0.0.1', '', 1597864030, '__ci_last_regenerate|i:1597864029;'),
('rtaqs9fk828scpud0m54npdu0mk8s96g', '::1', '', 1597864094, '__ci_last_regenerate|i:1597864094;'),
('ftn6jhrvccj6agbb7l3t5gq6834s1r12', '127.0.0.1', '', 1597864094, '__ci_last_regenerate|i:1597864094;'),
('r0afgqn9l0i19ca8m5usi36ddntlpn06', '::1', '', 1597923088, '__ci_last_regenerate|i:1597923088;'),
('6vfje7tmmnjc5cc5egtiqibldcrp1h2o', '127.0.0.1', '', 1597923165, '__ci_last_regenerate|i:1597923165;'),
('g87u0n1lhg6q9k60hnelpj2t8bv7g73o', '127.0.0.1', '', 1597923182, '__ci_last_regenerate|i:1597923182;'),
('bvgnesrt39mpvp9ek3r3p319fi6nafrk', '127.0.0.1', '', 1597923182, '__ci_last_regenerate|i:1597923182;'),
('6o5qb4fa75m8i959b10mkh4khcudvkdq', '127.0.0.1', '', 1597923190, '__ci_last_regenerate|i:1597923190;'),
('cr25anirdkpqkor9ujeatojp53muutl2', '127.0.0.1', '', 1597923190, '__ci_last_regenerate|i:1597923190;'),
('1c09v79llvldvj298cu308vkhkqi1dar', '127.0.0.1', '', 1597923303, '__ci_last_regenerate|i:1597923303;'),
('gd8tnn42bnjrsiobfs3r4k5ka6d9p7ko', '127.0.0.1', '', 1597923481, '__ci_last_regenerate|i:1597923480;'),
('mgt7srgvginvnjc4sqf1i2ivsrvhdg9p', '127.0.0.1', '', 1597923488, '__ci_last_regenerate|i:1597923488;'),
('21lsj5gtg5nv2ji5oaa0fhp7g1s7l1un', '127.0.0.1', '', 1597923512, '__ci_last_regenerate|i:1597923512;'),
('kboe8lt412esvl616rtarjcbsdk6ejm5', '127.0.0.1', '', 1597923623, '__ci_last_regenerate|i:1597923623;'),
('6u2aeifa958vufr2akgsgn3gbcf70f7k', '127.0.0.1', '', 1597923646, '__ci_last_regenerate|i:1597923646;'),
('3q0rh2u6p80srk940lb1sdfaq2mre6vl', '::1', '', 1597923739, '__ci_last_regenerate|i:1597923739;user_id|s:1:"1";is_logged_in|b:1;'),
('3n6mllhhql3jjt9sgg8a09su6lfd3dlt', '::1', '', 1597923739, '__ci_last_regenerate|i:1597923739;'),
('3t19fh1jvkctbd34qc0f2918gm9v0ljb', '::1', '', 1597923802, '__ci_last_regenerate|i:1597923802;'),
('4qeqf7m6hdvjai6vsvlbr7debbdqubnm', '127.0.0.1', '', 1597923852, '__ci_last_regenerate|i:1597923852;'),
('mdc30oo6msrh08ie4diahk42npcj00hu', '127.0.0.1', '', 1597923917, '__ci_last_regenerate|i:1597923917;'),
('b0pklpnhs5vcq7kutor56tlo3s8p202s', '::1', '', 1597923937, '__ci_last_regenerate|i:1597923936;'),
('0a6hrpv366e7orrk4eel38k4n7r3bpeo', '::1', '', 1597923949, '__ci_last_regenerate|i:1597923949;'),
('fncbq1s87o2o1bb0he6qtdkl7veisnmm', '::1', '', 1597923968, '__ci_last_regenerate|i:1597923967;user_id|s:1:"1";is_logged_in|b:1;'),
('df4162p8vpvo5vu1qqkni4nldle2c63u', '::1', '', 1597923968, '__ci_last_regenerate|i:1597923968;'),
('vvsusabc4etsh0n92dvgpqi3r11fj85b', '::1', '', 1597924040, '__ci_last_regenerate|i:1597924040;'),
('3inkmohfk57vavemt51mr78gnpcdjjnd', '::1', '', 1597924072, '__ci_last_regenerate|i:1597924072;user_id|s:1:"1";is_logged_in|b:1;'),
('65gb61rfsos2a16fc4d7626qo6qnkge1', '::1', '', 1597924072, '__ci_last_regenerate|i:1597924072;'),
('jk21jevq7shvvjm6ma6mjfrqfmtqls7n', '127.0.0.1', '', 1597924292, '__ci_last_regenerate|i:1597924292;'),
('5llsgmlob5paeugcjq11j0aiimggfks0', '::1', '', 1597924582, '__ci_last_regenerate|i:1597924582;'),
('4ciq2rhp80p5j9pmdf5gersmgpk5740f', '127.0.0.1', '', 1597924583, '__ci_last_regenerate|i:1597924583;'),
('sssg110p3q6quavskih9dn1hkra4evqq', '::1', '', 1597924711, '__ci_last_regenerate|i:1597924711;'),
('7u54pg95bgvu0p64vmjrur5q758cl2os', '127.0.0.1', '', 1597924780, '__ci_last_regenerate|i:1597924755;'),
('2jjtdg97hnua2qabm32u6dj5546qb3uv', '127.0.0.1', '', 1597924896, '__ci_last_regenerate|i:1597924896;'),
('1in1rth9v4hn8nj0t4d1ckdh0g1v298j', '::1', '', 1597924902, '__ci_last_regenerate|i:1597924902;'),
('iq98nhkq25qpd7ols3j956g34op4p1f3', '::1', '', 1597924918, '__ci_last_regenerate|i:1597924918;'),
('kpphu3v3oakq5d4e6nk53j1af6v31oq8', '::1', '', 1597924955, '__ci_last_regenerate|i:1597924955;user_id|s:1:"1";is_logged_in|b:1;'),
('j1i8p79i4pe1vurl0aj1b98e0c44qti7', '::1', '', 1597924955, '__ci_last_regenerate|i:1597924955;'),
('9f6in8qlbfae3g23hbd8l0cpmvusk10c', '::1', '', 1597924980, '__ci_last_regenerate|i:1597924980;'),
('4pifff64ds8b3dot7k3l3au34kh16fkd', '::1', '', 1597925473, '__ci_last_regenerate|i:1597925473;user_id|s:1:"1";is_logged_in|b:1;'),
('h06q3fie2ej2diijc5u6ge8gpdh65bds', '::1', '', 1597925473, '__ci_last_regenerate|i:1597925473;'),
('7io2chq4mrts7s4d4a6aiqavmu0te933', '::1', '', 1597925857, '__ci_last_regenerate|i:1597925857;'),
('hb1vjc523ou50240bte4ph03eh19qla9', '::1', '', 1597925874, '__ci_last_regenerate|i:1597925874;'),
('p5b8aul01evd7gmq9bg75h86ov1st2vu', '::1', '', 1597925878, '__ci_last_regenerate|i:1597925877;'),
('kdqaned37cufp8kknjsr96bph1m5l6g1', '::1', '', 1597925886, '__ci_last_regenerate|i:1597925886;user_id|s:1:"1";is_logged_in|b:1;'),
('327qaqcuvo82j1kug0cleupuv7d76sre', '::1', '', 1597925886, '__ci_last_regenerate|i:1597925886;'),
('jiu8sbloufhd34471dnv6h8pilgumfad', '::1', '', 1597925977, '__ci_last_regenerate|i:1597925977;'),
('uc2ahi17aoohtk7bg7i0cm3qkmo3e0s7', '::1', '', 1597925987, '__ci_last_regenerate|i:1597925987;user_id|s:1:"1";is_logged_in|b:1;'),
('dtfr5kmfjd32254h0malbo7beocuh033', '::1', '', 1597925987, '__ci_last_regenerate|i:1597925987;'),
('q9ntepkbmh55qqsc0c192vhlofr3tol3', '::1', '', 1597926004, '__ci_last_regenerate|i:1597926004;'),
('kt2jh6eq4lf9l8d0vhaqr3gfhf92l19j', '::1', '', 1597926017, '__ci_last_regenerate|i:1597926017;'),
('8oiv60785ov5kgfa7uc4m7nho34f4e8m', '::1', '', 1597926494, '__ci_last_regenerate|i:1597926494;'),
('1qsp5nsdq1gb9e8o312pj7i5q72091b1', '127.0.0.1', '', 1597927242, '__ci_last_regenerate|i:1597927242;'),
('k24ptnto90h5b6nvk00ibm1suft93cq0', '127.0.0.1', '', 1597927250, '__ci_last_regenerate|i:1597927250;'),
('r40otctjcluips1cbbheeuik0fnsfnra', '127.0.0.1', '', 1597927256, '__ci_last_regenerate|i:1597927256;'),
('4rl315mtlusnq7g3i1gdcvluel3giskf', '::1', '', 1597947470, '__ci_last_regenerate|i:1597947469;'),
('b0eq68p13mufm1mmvv6n50fkgn01e52g', '::1', '', 1597947470, '__ci_last_regenerate|i:1597947466;'),
('t6ndfs7jp30ii5fphfqrvk9m8s2tlfo2', '::1', '', 1597949386, '__ci_last_regenerate|i:1597949386;'),
('r33bj2ff4ht2oajudvemf6vsp26c6obf', '127.0.0.1', '', 1598719561, '__ci_last_regenerate|i:1598719403;'),
('ofij8bv9bqieh08lthrh8uqin4iqgk2c', '127.0.0.1', '', 1598783040, '__ci_last_regenerate|i:1598783039;'),
('egmdgdel0smr2heh3flfm1o1h34cgp7b', '::1', '', 1598803383, '__ci_last_regenerate|i:1598803381;'),
('90qg1m7dko18ilmjlc1fsis3pkofsvt0', '::1', '', 1598803441, '__ci_last_regenerate|i:1598803441;'),
('r8avkmkk9ao7ujhkkpr6cqvqhj0a6r19', '::1', '', 1598803641, '__ci_last_regenerate|i:1598803641;user_id|s:1:"1";is_logged_in|b:1;'),
('qgoedf5jrgpnc12b0hh2e8opsngi0me3', '::1', '', 1598803649, '__ci_last_regenerate|i:1598803649;'),
('pm6kjfavp8s74rsovdn32ct1n2oo8ot0', '::1', '', 1598803714, '__ci_last_regenerate|i:1598803714;'),
('m6r4ua6m9evo5oo6f4vkbnvp5ur3cojr', '::1', '', 1598805955, '__ci_last_regenerate|i:1598805955;user_id|s:1:"1";is_logged_in|b:1;'),
('emtvss66up675dg2uemg0ma7e0j0una9', '::1', '', 1598806045, '__ci_last_regenerate|i:1598806045;user_id|s:1:"1";is_logged_in|b:1;'),
('5kr7jas0ks3oqteqse606vq0ob7a09k1', '::1', '', 1598806056, '__ci_last_regenerate|i:1598806056;'),
('7pqmlbak9hjiiob9qa6vmo3ffqd0e5ia', '::1', '', 1598806071, '__ci_last_regenerate|i:1598806071;'),
('p4bh9hekt22mb0nqc6ggiok68r35ngmr', '::1', '', 1598806080, '__ci_last_regenerate|i:1598806080;user_id|s:1:"1";is_logged_in|b:1;'),
('e0ca7ikkdnqpkqmpkd94ea4ai19d9l6c', '::1', '', 1598806083, '__ci_last_regenerate|i:1598806083;'),
('vnv80amgkvjgp4v18tooa89i447i8vnm', '::1', '', 1598806308, '__ci_last_regenerate|i:1598806308;'),
('vud4mg7gav5j9f3e8pgqjqkj14b5afat', '::1', '', 1598806309, '__ci_last_regenerate|i:1598806308;'),
('8n7otrse10eeqhufqi5d9ejbhq098k3h', '::1', '', 1598806315, '__ci_last_regenerate|i:1598806315;'),
('d4auaepd3sqqtgpna520tpitv8hvpv2k', '::1', '', 1598806350, '__ci_last_regenerate|i:1598806350;'),
('ubh6tivutrie5tpi0gcfpehggren5l1m', '::1', '', 1598806745, '__ci_last_regenerate|i:1598806744;user_id|s:1:"1";is_logged_in|b:1;'),
('048o2ue8pscqp773c1ir0nd1ikt1hv2r', '::1', '', 1598806749, '__ci_last_regenerate|i:1598806749;'),
('73djg8bl86h5n85hihdp7k3bg1k1s63n', '::1', '', 1598808588, '__ci_last_regenerate|i:1598808588;user_id|s:1:"1";is_logged_in|b:1;'),
('tn48mdgamricuapf2ro8qkijicj0m34g', '::1', '', 1598808590, '__ci_last_regenerate|i:1598808590;'),
('bvmesprvhccqmbi28o38bmql4g11qu42', '::1', '', 1598808644, '__ci_last_regenerate|i:1598808644;'),
('u2houib4uo05045hll1nvrjta8ipi8pe', '::1', '', 1598808662, '__ci_last_regenerate|i:1598808662;user_id|s:1:"1";is_logged_in|b:1;'),
('shksurv7is02j7vuv66u61gjvfmgk3tv', '::1', '', 1598808667, '__ci_last_regenerate|i:1598808667;'),
('lhbklvdulfcf23bq0ddov07hdik2lv6k', '::1', '', 1598808678, '__ci_last_regenerate|i:1598808678;'),
('091md4huo9ln5q8vqedf3989irbe7jm9', '::1', '', 1598808683, '__ci_last_regenerate|i:1598808683;'),
('o4q1jq1lp26a5leimng3jrlfl46gg5ja', '::1', '', 1598808691, '__ci_last_regenerate|i:1598808691;'),
('8ktff2br56itgu9nfnvqjd2alp7gmdp2', '::1', '', 1598808728, '__ci_last_regenerate|i:1598808728;user_id|s:1:"1";is_logged_in|b:1;'),
('4dpup33mvsnrfcbpe27ne16p1kd6us43', '::1', '', 1598808738, '__ci_last_regenerate|i:1598808738;'),
('ci0isfl4qnlclsrdvm305q5kn0smljt2', '::1', '', 1604728582, '__ci_last_regenerate|i:1604728365;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('2oql0ah42jjskle3v5k7l0p1ae55ebt1', '::1', '', 1604728570, '__ci_last_regenerate|i:1604728570;'),
('dsfnsjf6f8rvc8rldn1knr5cgn5qnmij', '::1', '', 1604728580, '__ci_last_regenerate|i:1604728573;'),
('87ros2n2he0kfiiafi5rnnhf69t44ic1', '::1', '', 1604728988, '__ci_last_regenerate|i:1604728782;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('02isu6buahrr8hbgt0g5vj5q445ecga6', '::1', '', 1604729392, '__ci_last_regenerate|i:1604729180;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('b5907prbipqp2uiuu94umtr87vj1etqq', '::1', '', 1604729604, '__ci_last_regenerate|i:1604729567;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('k87vtb7dhus1hcke4ncv0f0ie0n7cv11', '::1', '', 1604730074, '__ci_last_regenerate|i:1604729894;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('r92rj8gm6gueb6b2k1aag1gapcvrq78j', '::1', '', 1604730402, '__ci_last_regenerate|i:1604730317;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('htn3ko6hqch8988akj0ru0sk0amsd93n', '::1', '', 1604731143, '__ci_last_regenerate|i:1604730855;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('3o0trjjkj7ehhbfiuo6p9gsutuhrnmq4', '::1', '', 1604731479, '__ci_last_regenerate|i:1604731179;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('l08ia2rg96ice20j3h757suq8nm0690f', '::1', '', 1604731485, '__ci_last_regenerate|i:1604731483;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('s37ftl2bmdndsj03846ndt7nor0363e8', '::1', '', 1604732024, '__ci_last_regenerate|i:1604731855;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('h3kcgvuqr50dflprh0dat1071il5i8jm', '::1', '', 1604733040, '__ci_last_regenerate|i:1604732744;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('d3c9dthd3dgvr562h13cea4iflg5oag0', '::1', '', 1604733566, '__ci_last_regenerate|i:1604733294;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('bmhuvt2udurvvj6j780k7cpncg1h0b9n', '::1', '', 1604734484, '__ci_last_regenerate|i:1604734239;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('p9omss43o59q97kmni9sn2vticntb18g', '::1', '', 1604734757, '__ci_last_regenerate|i:1604734552;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('ot0gvhb5mudl1s908p24stokaqnmj66t', '::1', '', 1604735115, '__ci_last_regenerate|i:1604734879;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('svipf5v1db20fpvvdkoi94olkknsc5if', '::1', '', 1604735258, '__ci_last_regenerate|i:1604735190;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604728392;'),
('6qabm1492ek072btacjhmva4616844ml', '::1', '', 1604745435, '__ci_last_regenerate|i:1604745434;'),
('5di4634pbgpuppbnnd4dfidbt1g74jsm', '::1', '', 1604746448, '__ci_last_regenerate|i:1604746276;'),
('u3srn8lht2600amdv15u18q2cmn6kebn', '::1', '', 1604747000, '__ci_last_regenerate|i:1604746999;'),
('b71969ps0fonqld71tv9o55c2b364dk9', '::1', '', 1604747249, '__ci_last_regenerate|i:1604747101;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604747114;'),
('76g0g1t3tsli5e8d112r722nugal15mj', '::1', '', 1604752304, '__ci_last_regenerate|i:1604752244;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604747114;'),
('jhhr1q6455rp2rdh2si8q1fjail3ff28', '::1', '', 1604754563, '__ci_last_regenerate|i:1604754562;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604747114;'),
('pjomuam432eko37s28s6fmjdns64ua99', '::1', '', 1604756306, '__ci_last_regenerate|i:1604756306;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604747114;'),
('p5g2gbck62svf113k9soi0pgpjfdvnvv', '::1', '', 1604756760, '__ci_last_regenerate|i:1604756760;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604747114;'),
('d430bs0j3jkue7mamuk8907p23p5tj03', '::1', '', 1604903452, '__ci_last_regenerate|i:1604903451;'),
('dkacrs00iium61avng588due1cj1ldfj', '::1', '', 1604907550, '__ci_last_regenerate|i:1604907536;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1604907547;'),
('qvqmtpa5v9dle6v7vipkkrl65duvo8ip', '::1', '', 1604983571, '__ci_last_regenerate|i:1604983305;'),
('fvke0in96oa1o3bgl92tlau8ed2kb5jd', '::1', '', 1604984852, '__ci_last_regenerate|i:1604984852;'),
('dht1i0oh63pgibv0rh2fge1v2ajqo3rk', '::1', '', 1604994255, '__ci_last_regenerate|i:1604994255;'),
('6ppf8i1nrrjti037llijrsqgcu51vh9l', '::1', '', 1604997183, '__ci_last_regenerate|i:1604997183;'),
('4snbpce0dlbguq6snef6suofiml0r36i', '::1', '', 1605002782, '__ci_last_regenerate|i:1605002782;'),
('p237u3o726t37mnmdgh38nakgkutggvg', '::1', '', 1605003639, '__ci_last_regenerate|i:1605003631;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605003639;'),
('e36fdpgbq1q9nm12ai3nohlg4bukhi9p', '::1', '', 1605005028, '__ci_last_regenerate|i:1605005028;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605003639;'),
('md9ot08fsin03jq88nt91jt9vl9p1at7', '::1', '', 1605009385, '__ci_last_regenerate|i:1605009385;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605003639;'),
('8h5voq5p1p1f1itq8c79slpl1h3kglsl', '::1', '', 1605073579, '__ci_last_regenerate|i:1605073578;'),
('su5nvv3tik423puf5ucl1175bpc729t8', '::1', '', 1605078608, '__ci_last_regenerate|i:1605078596;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605078607;'),
('pk0va3jrlb4t47gqml0oujckju2o0dr3', '::1', '', 1605194212, '__ci_last_regenerate|i:1605194191;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605194200;'),
('qstop8r09aa1bgpfuidj5ammm1rjoddj', '::1', '', 1605194646, '__ci_last_regenerate|i:1605194531;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605194200;'),
('jn17a4sibmkme917keripooa4hog8a9o', '::1', '', 1605195242, '__ci_last_regenerate|i:1605195138;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605194200;'),
('1b339vp2vk2e427d3eadec6cmnsc8ght', '::1', '', 1605253445, '__ci_last_regenerate|i:1605253405;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605253438;'),
('ajgkd7jqdmegqliaar22jkl1a7bbvn09', '::1', '', 1605254388, '__ci_last_regenerate|i:1605254222;'),
('7b3bi2f9v67486ad8ppdl8npfbsc6h8e', '::1', '', 1605254499, '__ci_last_regenerate|i:1605254349;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605254349;'),
('4n5jjn5ou3j8cspgt703lko7dl6u0c15', '::1', '', 1605254595, '__ci_last_regenerate|i:1605254426;'),
('ensrhkvl9m0ij59u4uegelbb44i854p8', '::1', '', 1605254621, '__ci_last_regenerate|i:1605254618;'),
('mt9c6frickgp2urdbdu87p6h97crc9tl', '::1', '', 1605254692, '__ci_last_regenerate|i:1605254684;'),
('msno74sp1hdt78ehj90qcjh3vvdlccos', '::1', '', 1605255447, '__ci_last_regenerate|i:1605255446;admin_user_name|s:5:"admin";admin_id|s:1:"1";admin_type|s:1:"0";is_logged_in|b:1;res_id|i:1605254349;'),
('f0hr94ao4ko0pbk77lfmeakomdqpeb0d', '::1', '', 1605256400, '__ci_last_regenerate|i:1605256101;'),
('e7uba8tmfp44pnbs28eqql6v6up09qfn', '::1', '', 1605256482, '__ci_last_regenerate|i:1605256402;'),
('qd3bvmen5vknga0ckbg75sugdunag9m0', '::1', '', 1605256446, '__ci_last_regenerate|i:1605256439;'),
('tr63fgvcn4tsqo7ehv617eel1686nk19', '::1', '', 1605256811, '__ci_last_regenerate|i:1605256511;'),
('gdvku5kgsga0p6l0on86mele14231cpk', '::1', '', 1605257114, '__ci_last_regenerate|i:1605256813;'),
('df40pub0s32ejl76f6o6q4qcrs9tlr4f', '::1', '', 1605257414, '__ci_last_regenerate|i:1605257114;'),
('in2go2m4e03rnl06sosf0jm85kjje7gp', '::1', '', 1605257714, '__ci_last_regenerate|i:1605257415;'),
('oh2qcl0dr5f1qk6jq0piadn765408aai', '::1', '', 1605258015, '__ci_last_regenerate|i:1605257716;'),
('2p5b6ofhktt0ubktoplkbs1721qiu70e', '::1', '', 1605257716, '__ci_last_regenerate|i:1605257716;'),
('ms7q7mlopo24fvatc3u0j4ndatndvqih', '::1', '', 1605258317, '__ci_last_regenerate|i:1605258017;'),
('toklkuc9m3fus13pngp2vs88iqumar7a', '::1', '', 1605258616, '__ci_last_regenerate|i:1605258318;'),
('njsgnvfaco3947s94rbffbjfu4gsbcq8', '::1', '', 1605258327, '__ci_last_regenerate|i:1605258327;'),
('984931660n44fla4rg3n3mc2takait00', '::1', '', 1605258919, '__ci_last_regenerate|i:1605258620;'),
('plmc8rmfesud3075giujutr0shrkcin7', '::1', '', 1605258620, '__ci_last_regenerate|i:1605258620;'),
('6k1pp83mt0qvqroig3i9pa3fjtv1c61o', '::1', '', 1605258923, '__ci_last_regenerate|i:1605258922;'),
('ajqptuo0vrukthe3v78u7up0j1n6m9l8', '::1', '', 1605259223, '__ci_last_regenerate|i:1605258923;'),
('1e69uvmmvbso5s9c34atags7cmqti3ec', '::1', '', 1605259524, '__ci_last_regenerate|i:1605259224;'),
('g2ov6sqrarf6keja65pqvc47vsb6cmam', '::1', '', 1605259745, '__ci_last_regenerate|i:1605259527;'),
('ido7qorll0ima0hbqkaukn109ughaisb', '::1', '', 1605350900, '__ci_last_regenerate|i:1605350670;'),
('836je6l4ba1540pv82lhaalf66kif87d', '::1', '', 1605351744, '__ci_last_regenerate|i:1605351744;'),
('dbbv88fvpjumia327it4jrvi1uacojkk', '::1', '', 1605352032, '__ci_last_regenerate|i:1605352032;'),
('h33ivhe2cv307sglbirjmo59urm0dq40', '::1', '', 1605357595, '__ci_last_regenerate|i:1605357409;'),
('a8an61k49qpldss2mg5u18g62v9cahjn', '::1', '', 1605370492, '__ci_last_regenerate|i:1605370243;'),
('no68gtfrjpgsbjh6gvu61iv4smu8dl6a', '::1', '', 1605449968, '__ci_last_regenerate|i:1605449948;'),
('sb6v3vec66mkbs28i4o5p5imk1j6gd96', '::1', '', 1605467288, '__ci_last_regenerate|i:1605467286;'),
('jkveiudv39mce6s8btg6r5rn1bbultf5', '::1', '', 1605511611, '__ci_last_regenerate|i:1605511611;'),
('1f1pfokcmsavbdlrgalh2v9dvcl3enms', '::1', '', 1605511611, '__ci_last_regenerate|i:1605511611;'),
('lrvv1u6jpn3c87h5tafq93p42a2lpdsh', '::1', '', 1605528383, '__ci_last_regenerate|i:1605528377;'),
('9j5btuf8m7cogbu83j2tmfhfsu910nro', '::1', '', 1605619131, '__ci_last_regenerate|i:1605619131;'),
('3nr2mmdu3a5rjmv2bgm0gi0tlp04smpj', '::1', '', 1605619131, '__ci_last_regenerate|i:1605619131;'),
('hb5s4uui9j3hfjit2ak0v0ki7rkj61s1', '::1', '', 1605620967, '__ci_last_regenerate|i:1605620959;');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_comment`
--

CREATE TABLE `microsidd_comment` (
  `comment_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `news_title` varchar(150) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_comment`
--

INSERT INTO `microsidd_comment` (`comment_id`, `news_id`, `user_id`, `comment`, `news_title`, `comment_date`, `comment_status`) VALUES
(1, 35, 1, 'good jjoob', 'dsfsdfsdf', '2019-01-26', 'Active'),
(2, 35, 1, 'great', 'sdfsdfsdf', '2019-01-26', 'Active'),
(3, 35, 1, 'hello', 'fgdfgdfgdfg', '2019-01-26', 'Active'),
(4, 34, 1, 'fghfghfgh', 'gfgh', '2019-01-26', 'Active'),
(5, 32, 54, '', '', '2019-01-26', 'Active'),
(6, 31, 54, '', '', '2019-01-28', 'Active'),
(7, 31, 54, '', '', '2019-01-28', 'Active'),
(8, 31, 54, '', '', '2019-01-28', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_countries`
--

CREATE TABLE `microsidd_countries` (
  `country_id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `microsidd_countries`
--

INSERT INTO `microsidd_countries` (`country_id`, `countryCode`, `countryName`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Ãƒâ€¦land'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint BarthÃƒÂ©lemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czechia'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'RÃƒÂ©union'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'SÃƒÂ£o TomÃƒÂ© and PrÃƒÂ­ncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_discount`
--

CREATE TABLE `microsidd_discount` (
  `discount_id` int(11) NOT NULL,
  `discount_for_user` int(11) DEFAULT '0',
  `discount_name` varchar(255) NOT NULL,
  `discount_type` enum('flat','percentage') NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `discount_value` int(10) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `no_of_uses` int(10) DEFAULT NULL,
  `discount_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_gallery`
--

CREATE TABLE `microsidd_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(150) NOT NULL,
  `gallery_text` text NOT NULL,
  `gallery_image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_gallery`
--

INSERT INTO `microsidd_gallery` (`gallery_id`, `gallery_name`, `gallery_text`, `gallery_image`, `status`) VALUES
(1, 'Glucometer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', '1548251425_1.jpg', 'Active'),
(2, 'Strips', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', '1548251468_2.jpg', 'Active'),
(3, 'Glucose Strip', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', '1548251516_3.jpg', 'Active'),
(4, 'Leather Belt', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251548_4.jpg', 'Active'),
(5, 'Diastolic Meter', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251588_5.jpg', 'Active'),
(6, 'Leather Walet', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251625_6.jpg', 'Active'),
(7, 'Card Holder', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251660_7.jpg', 'Active'),
(8, 'Tethescope', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251694_8.jpg', 'Active'),
(9, 'Nebulizer', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251734_10.jpg', 'Active'),
(10, 'Air Bed', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251768_10.jpg', 'Active'),
(11, 'Orthopedic Tools', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251809_11.jpg', 'Active'),
(12, 'BP Pulse Oxomiter', '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.<br></p>', '1548251849_12.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_gift_cards`
--

CREATE TABLE `microsidd_gift_cards` (
  `gift_card_id` int(11) NOT NULL,
  `gift_card_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gift_card_price` float(7,2) NOT NULL,
  `details` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_gift_card_order`
--

CREATE TABLE `microsidd_gift_card_order` (
  `id` int(11) NOT NULL,
  `gift_order_id` varchar(20) NOT NULL,
  `sender_id` int(20) NOT NULL,
  `gift_card_code` varchar(20) NOT NULL,
  `gift_card_price` float(7,2) NOT NULL,
  `order_id` int(20) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_used` int(1) NOT NULL DEFAULT '0',
  `status` enum('Paid','Non Paid') NOT NULL DEFAULT 'Non Paid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `microsidd_gift_card_order`
--

INSERT INTO `microsidd_gift_card_order` (`id`, `gift_order_id`, `sender_id`, `gift_card_code`, `gift_card_price`, `order_id`, `order_date`, `receiver_name`, `receiver_email`, `message`, `is_used`, `status`) VALUES
(1, '1549098525', 85, 'GIFT1445', 2000.00, 0, '2019-02-02', 'Priyanka', 'priyankahazra152@gmail.com', 'This is a small gift for you!!!', 1, 'Paid'),
(2, '1549116979', 85, 'GIFT5860', 5000.00, 1549117438, '2019-02-02', 'Priyanka', 'priyankahazra1520@gmail', 'Thank you so much!!', 1, 'Paid'),
(3, '1550134455', 57, 'GIFT8225', 1000.00, 0, '', 'Priyanka', 'priyankahazra1520@gmail.com', 'This is for you!!', 0, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_gift_card_temp_order`
--

CREATE TABLE `microsidd_gift_card_temp_order` (
  `id` int(11) NOT NULL,
  `gift_order_id` int(20) NOT NULL,
  `sender_id` int(20) NOT NULL,
  `gift_card_code` varchar(20) NOT NULL,
  `gift_card_price` float(7,2) NOT NULL,
  `order_id` int(20) NOT NULL,
  `order_date` date NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_used` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `microsidd_gift_card_temp_order`
--

INSERT INTO `microsidd_gift_card_temp_order` (`id`, `gift_order_id`, `sender_id`, `gift_card_code`, `gift_card_price`, `order_id`, `order_date`, `receiver_name`, `receiver_email`, `message`, `is_used`) VALUES
(1, 1568970298, 54, 'GIFT3241', 1000.00, 0, '0000-00-00', 'tapan das', 'abc@ltd.com', 'fgsds', 0),
(2, 1568971823, 54, 'GIFT3460', 1000.00, 0, '0000-00-00', 'tapan das', 'abc@ltd.com', 'fgsds', 0),
(3, 1568975512, 54, 'GIFT3374', 1000.00, 0, '0000-00-00', 'tapan das', 'abc@ltd.com', 'fgsds', 0);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_image_temp`
--

CREATE TABLE `microsidd_image_temp` (
  `id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `mainimg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_mail_body`
--

CREATE TABLE `microsidd_mail_body` (
  `mail_id` int(11) NOT NULL,
  `mail_title` varchar(255) NOT NULL,
  `mail_key` text NOT NULL,
  `mail_body` text NOT NULL,
  `mail_subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `microsidd_mail_body`
--

INSERT INTO `microsidd_mail_body` (`mail_id`, `mail_title`, `mail_key`, `mail_body`, `mail_subject`) VALUES
(1, 'Inbox', 'Cashback-mail', 'Dear ###receiver_name###,<p>You have won Rs.###cashback_amount### cashback.Please login with your account and get your cashback.<P>Thank you.</p>', 'Microsidd: Cashback for you.'),
(2, 'Inbox', 'Discount-coupon-mail', 'Congratulations,<p>You get ####divisor#### excellent discount coupons having codes ####coupon_code####.Please login to your account and get your discount.<P>Thank You.</p>', 'Microsidd: You have won discount coupons.'),
(3, 'Inbox', 'Order-information-mail', 'This is the information of your current order.', 'Microsidd: Order information '),
(4, 'Inbox', 'Gift-Card-mail', 'Dear ###receiver_name###,<p>You got a gift card from ###sender_name### worth Rs.###gift_card_price###.Your gift card code is ###gift_card_code###.Use this code at the time of your purchase to avail the gift.<p>Sender Message: ###msg###</p>', 'Microsidd: You got a gift card');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_main_image`
--

CREATE TABLE `microsidd_main_image` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `mainimg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_main_image`
--

INSERT INTO `microsidd_main_image` (`image_id`, `product_id`, `image_name`, `mainimg`) VALUES
(4, 2, '1547549556_1547549556.jpeg', 1),
(5, 3, '1547549925_1547549925.jpeg', 1),
(6, 4, '1547550066_1547550066.jpeg', 1),
(14, 8, '1547553349_1547553349.jpg', 1),
(15, 9, '1547553435_1547553435.jpg', 1),
(16, 10, '1547553501_1547553501.jpg', 1),
(17, 11, '1547553582_1547553582.jpeg', 1),
(18, 12, '1547553657_1547553657.jpeg', 1),
(22, 23, '1547814939_1547814939.jpeg', 1),
(23, 24, '1547816723_1547816723.png', 1),
(25, 19, '1547891544_1547891544.png', 0),
(26, 19, '1547891560_1547891560.png', 1),
(27, 13, '1547892212_1547892212.png', 1),
(28, 7, '1547892487_1547892487.png', 1),
(29, 6, '1547892605_1547892605.png', 1),
(30, 5, '1547892723_1547892723.png', 1),
(31, 20, '1550218331_1550218331.jpg', 1),
(32, 21, '1550221131_1550221131.jpeg', 1),
(33, 22, '1550235056_1550235056.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_meta_tag`
--

CREATE TABLE `microsidd_meta_tag` (
  `meta_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `meta_tag` text NOT NULL,
  `meta_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_news`
--

CREATE TABLE `microsidd_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_description` text NOT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `news_post_date` datetime NOT NULL,
  `news_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_news`
--

INSERT INTO `microsidd_news` (`news_id`, `news_title`, `news_description`, `featured`, `news_post_date`, `news_status`) VALUES
(31, 'Pregnancy Test Kit Special Offer', 'Pregnancy Test Kit Special Offer Minimum buying 5 cards Visit the Nearest Microsidd Franchisee Store to get this Offer', NULL, '2019-01-26 10:59:39', 'Active'),
(32, 'Oxygen Humidifier Bottle', 'microsiddindiaOxygen Humidifier Bottle Compatible with almost all oxygen concentrators buy at best price free shipping all india', NULL, '2019-01-26 11:01:36', 'Active'),
(33, 'Another Surgeon turned Entreprenuer shares Values', 'Dr Ritesh Malik had a lucrative medical career in front of him with lots of opportunities as a house surgeon. But, he chose to do something which very few people dare. While studying medical science he realised that his true passion resided in entrepreneurship, and that’s what he did. He neglected most of his medical lectures, and attended courses related to marketing. He founded a company in 2012; since then there was no looking back.', NULL, '2019-01-26 11:03:33', 'Active'),
(34, 'Thank You Amazon', 'Microsidd India became best online seller and ranked no1 online retailer on amazon india for medical equipment instruments and medical accessories.Microsidd India became best online seller and ranked no1 online retailer on amazon india for medical equipment instruments and medical accessories', NULL, '2019-01-26 11:03:59', 'Active'),
(35, 'Microsidd Opens New Supply Store', '<p>\r\n\r\nThis is to inform you with Happiness that Microsidd India has inaugurated new Medical Supply store at Malleshwaram - Bangalore 560003 .\r\n\r\nThis is to inform you with Happiness that Microsidd India has inaugurated new Medical Supply store at Malleshwaram - Bangalore 560003\r\n\r\n<br></p>', NULL, '2019-01-26 11:04:30', 'Active'),
(36, 'Microsidd India presents Business Opportunity', 'Microsidd India became best online seller and ranked no1 online retailer on amazon india for medical equipment instruments and medical accessories.Microsidd India became best online seller and ranked no1 online retailer on amazon india for medical equipment instruments and medical accessories', NULL, '2019-01-26 11:05:18', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_order_details`
--

CREATE TABLE `microsidd_order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ship_fname` varchar(255) NOT NULL,
  `ship_lname` varchar(255) NOT NULL,
  `ship_phoneno` varchar(255) NOT NULL,
  `ship_company` varchar(255) NOT NULL,
  `ship_email` varchar(255) NOT NULL,
  `ship_address` varchar(255) NOT NULL,
  `ship_address2` varchar(255) NOT NULL,
  `ship_city` varchar(255) NOT NULL,
  `ship_country` varchar(255) NOT NULL,
  `ship_state` varchar(255) NOT NULL,
  `ship_zipcode` varchar(20) NOT NULL,
  `bill_fname` varchar(255) NOT NULL,
  `bill_lname` varchar(255) NOT NULL,
  `bill_email` varchar(255) NOT NULL,
  `bill_phoneno` int(20) NOT NULL,
  `bill_company` varchar(255) NOT NULL,
  `bill_state` varchar(255) NOT NULL,
  `bill_city` varchar(255) NOT NULL,
  `bill_country` varchar(255) NOT NULL,
  `bill_address1` varchar(255) NOT NULL,
  `bill_address2` varchar(255) NOT NULL,
  `bill_zipcode` int(20) NOT NULL,
  `subtotal` float(7,2) NOT NULL,
  `tax_amount` float(7,2) NOT NULL,
  `wrapping_price` float(7,2) DEFAULT NULL,
  `discount_amount` float(7,2) DEFAULT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `gift_card_code` varchar(255) NOT NULL,
  `gift_card_price` float(7,2) NOT NULL,
  `gift_order_id` int(20) NOT NULL,
  `shipping_amount` float(7,2) NOT NULL,
  `shipping_time` int(10) NOT NULL,
  `total_amount` float(7,2) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_status` enum('Not paid','Paid','Pending') NOT NULL,
  `order_status` enum('New','Processing','Shipped','Complete') NOT NULL,
  `payment_date` date NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `track_id` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_order_details`
--

INSERT INTO `microsidd_order_details` (`id`, `order_id`, `user_id`, `ship_fname`, `ship_lname`, `ship_phoneno`, `ship_company`, `ship_email`, `ship_address`, `ship_address2`, `ship_city`, `ship_country`, `ship_state`, `ship_zipcode`, `bill_fname`, `bill_lname`, `bill_email`, `bill_phoneno`, `bill_company`, `bill_state`, `bill_city`, `bill_country`, `bill_address1`, `bill_address2`, `bill_zipcode`, `subtotal`, `tax_amount`, `wrapping_price`, `discount_amount`, `discount_code`, `gift_card_code`, `gift_card_price`, `gift_order_id`, `shipping_amount`, `shipping_time`, `total_amount`, `transaction_id`, `payment_status`, `order_status`, `payment_date`, `ip_address`, `track_id`, `note`) VALUES
(1, '1549098602', 78, 'r6ui', 'gjlk', '2147483647', '', 'priyankahazra1520@gmail', '6', 'sdfsfsdf', 'jmjgmj', '14', 'fghhxf', '0', 'r6ui', 'gjlk', '2147483647', 0, '', 'fghhxf', 'jmjgmj', '14', '6', 'sdfsfsdf', 0, 8000.00, 80.00, 20.00, 808.00, 'ST8271NS53', 'GIFT1445', 0.00, 1549098525, 30.00, 10, 5292.00, '', 'Paid', 'Shipped', '2019-02-02', '::1', '1110', '<p>Thank you for shopping with us!!!</p>'),
(2, '1549109012', 78, 'r6ui', 'gjlk', '2147483647', '', 'priyankahazra1520@gmail', '6', 'sdfsfsdf', 'jmjgmj', '14', 'fghhxf', '0', 'r6ui', 'gjlk', '2147483647', 0, '', 'fghhxf', 'jmjgmj', '14', '6', 'sdfsfsdf', 0, 10200.00, 102.00, 20.00, 1030.20, 'ST8271NS53', 'GIFT1445', 2000.00, 1549098525, 30.00, 10, 7291.80, '', 'Paid', 'New', '2019-02-02', '::1', '', ''),
(3, '1549117438', 78, 'r6ui', 'gjlk', '2147483647', '', 'priyankahazra1520@gmail', '6', 'sdfsfsdf', 'jmjgmj', '14', 'fghhxf', '0', 'r6ui', 'gjlk', '2147483647', 0, '', 'fghhxf', 'jmjgmj', '14', '6', 'sdfsfsdf', 0, 26000.00, 260.00, 20.00, 2626.00, 'ST8271NS53', 'GIFT5860', 5000.00, 1549116979, 30.00, 10, 18654.00, '', 'Paid', 'New', '2019-02-02', '::1', '', ''),
(4, '1549979683', 57, 'fgbbn', 'fgnbf', '566545455', '', 'gnfnngf', '10', 'bfghsf', 'fdsgbgsf', '13', 'bgngsf', '51645645', 'fgbbn', 'fgnbf', '566545455', 0, '', 'bgngsf', 'fdsgbgsf', '13', '10', 'bfghsf', 51645645, 3995.00, 39.95, 0.00, 0.00, '', '', 0.00, 0, 30.00, 10, 4034.95, '', 'Paid', 'New', '2019-02-12', '::1', '', ''),
(5, '1549979683', 57, 'fgbbn', 'fgnbf', '566545455', '', 'gnfnngf', '10', 'bfghsf', 'fdsgbgsf', '13', 'bgngsf', '51645645', 'fgbbn', 'fgnbf', '566545455', 0, '', 'bgngsf', 'fdsgbgsf', '13', '10', 'bfghsf', 51645645, 7500.00, 75.00, 0.00, 0.00, '', '', 0.00, 0, 30.00, 10, 7575.00, '', 'Paid', 'New', '2019-02-12', '::1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_pagecontent`
--

CREATE TABLE `microsidd_pagecontent` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_subtitle` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_products`
--

CREATE TABLE `microsidd_products` (
  `product_id` int(11) NOT NULL,
  `maincat_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `features` text NOT NULL,
  `product_price` float(7,2) NOT NULL,
  `original_price` float(7,2) NOT NULL,
  `meta_tags` text NOT NULL,
  `created` varchar(255) NOT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `product_keywords` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_product_order`
--

CREATE TABLE `microsidd_product_order` (
  `pro_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` float(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_product_order`
--

INSERT INTO `microsidd_product_order` (`pro_order_id`, `order_id`, `product_id`, `quantity`, `product_price`) VALUES
(6, 1548831965, 8, 2, 3000.00),
(7, 1548832136, 8, 2, 3000.00),
(8, 1548832253, 8, 2, 3000.00),
(9, 1548832897, 8, 2, 3000.00),
(10, 1548833148, 9, 2, 998.00),
(11, 1548842989, 4, 2, 1400.00),
(12, 1548938696, 10, 2, 1598.00),
(13, 1549098602, 8, 4, 1500.00),
(14, 1549098602, 2, 1, 2000.00),
(15, 1549109012, 13, 4, 300.00),
(16, 1549109012, 8, 6, 1500.00),
(17, 1549117438, 12, 100, 260.00),
(18, 1549979683, 10, 2, 799.00),
(19, 1549979683, 10, 5, 799.00),
(20, 1549979683, 8, 5, 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_product_order_temp`
--

CREATE TABLE `microsidd_product_order_temp` (
  `temp_ord_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `subtotal` float(7,2) NOT NULL,
  `tax_amount` float(7,2) NOT NULL,
  `wrapping_price` float(7,2) DEFAULT NULL,
  `discount_amount` float(7,2) NOT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `gift_card_code` varchar(255) NOT NULL,
  `gift_card_price` float(7,2) NOT NULL,
  `gift_order_id` int(20) NOT NULL,
  `shipping_amount` float(7,2) NOT NULL,
  `shipping_time` varchar(100) NOT NULL,
  `total_amount` float(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_product_order_temp`
--

INSERT INTO `microsidd_product_order_temp` (`temp_ord_id`, `user_id`, `order_id`, `fname`, `lname`, `email`, `phoneno`, `company`, `state`, `city`, `country`, `address1`, `address2`, `date`, `zipcode`, `subtotal`, `tax_amount`, `wrapping_price`, `discount_amount`, `discount_code`, `gift_card_code`, `gift_card_price`, `gift_order_id`, `shipping_amount`, `shipping_time`, `total_amount`) VALUES
(13, 78, '', 'r6ui', 'gjlk', 'priyankahazra1520@gmail', '2147483647', '', 'fghhxf', 'jmjgmj', '14', 'hgjmngh', 'sdfsfsdf', '2019-02-02', '0', 0.00, 0.00, NULL, 0.00, NULL, '', 0.00, 0, 0.00, '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_product_rating`
--

CREATE TABLE `microsidd_product_rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate_score` float(4,1) DEFAULT NULL,
  `rate_title` varchar(255) NOT NULL,
  `rate_review` varchar(255) NOT NULL,
  `rate_date` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_product_rating`
--

INSERT INTO `microsidd_product_rating` (`rating_id`, `user_id`, `product_id`, `rate_score`, `rate_title`, `rate_review`, `rate_date`, `status`) VALUES
(1, 78, 10, 2.5, 'fggfggfjnf', 'rgyjhnfyjhn', '2019-01-31', 'Active'),
(2, 78, 8, 4.0, 'gtuyjhmgh', 'hk,h', '2019-01-31', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_product_shop_temp`
--

CREATE TABLE `microsidd_product_shop_temp` (
  `temp_id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(7,2) NOT NULL,
  `subtotal` float(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_product_shop_temp`
--

INSERT INTO `microsidd_product_shop_temp` (`temp_id`, `order_id`, `user_id`, `product_id`, `quantity`, `price`, `subtotal`) VALUES
(1, '1549291770', 0, 8, 2, 1500.00, 3000.00),
(2, '1549291770', 0, 13, 6, 300.00, 1800.00),
(3, '1549291909', 0, 9, 5, 499.00, 2495.00),
(4, '1549291909', 0, 12, 5, 260.00, 1300.00),
(11, '1549453285', 0, 0, 1, 0.00, 0.00),
(12, '1549453285', 0, 8, 2, 1500.00, 520.00),
(16, '1549453285', 0, 12, 2, 260.00, 520.00),
(17, '1550126800', 0, 11, 10, 560.00, 5600.00),
(18, '1581754759', 0, 8, 1, 1500.00, 1500.00),
(19, '1581754759', 0, 5, 1, 100.00, 100.00),
(20, '1581754759', 0, 6, 1, 868.00, 868.00),
(21, '1581754759', 0, 6, 1, 868.00, 868.00),
(22, '1595523495', 0, 2, 1, 2000.00, 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_product_view`
--

CREATE TABLE `microsidd_product_view` (
  `view_id` int(11) NOT NULL,
  `product_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `no_of_views` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_product_view`
--

INSERT INTO `microsidd_product_view` (`view_id`, `product_id`, `date`, `ip_address`, `no_of_views`) VALUES
(1, 8, '2019-02-15', '::1', 0),
(2, 11, '2019-02-15', '::1', 0),
(3, 8, '2019-02-18', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_setting`
--

CREATE TABLE `microsidd_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_setting`
--

INSERT INTO `microsidd_setting` (`setting_id`, `setting_key`, `setting_value`) VALUES
(1, 'admin_email', 'pom.meing@gmail.com'),
(5, 'header_contact_no', '(416) 543 9876'),
(24, 'contact_address', '<p>MICROSIDD INDIA PVT LTD.<br>\r\n#3048/14, 3rd Floor, MKK Road, Gayatrinagar, Bengaluru 560021, Karnataka, India</p>'),
(31, 'map location', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.5940380400593!2d77.55717631430458!3d12.997797217820953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3d885e8bfac7%3A0xe984b7a58edf3dc8!2sMicrosidd+India!5e0!3m2!1sen!2sin!4v1548685937779" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(32, 'location', '<p class="loca">abcd Road150</p>\n <p class="loca">Lasvegas, USA</p>'),
(35, 'paypal_txtemail', 'webhaw_1353494307_per@gmail.com'),
(36, 'paypal_business_id', 'webhawksmerchant@webhawkstechnology.com'),
(37, 'site_email', ' info@misterrepair.ca'),
(38, 'skyep_link', 'Microsidd\r\nMicrosidd_support'),
(39, 'twitter_link', 'https://twitter.com/'),
(40, 'contact_no', '+91-80-23120199'),
(44, 'from_email', 'donotreply@microsidd.com'),
(46, 'Registration-mail-text', 'Dear ###Userid###, <br><br><p> Your registration with Micosidd Team is successfully done.</p>'),
(47, 'Standard Shipping Price', '30'),
(48, 'Standard Shipping Time', '10'),
(49, 'Premium Shipping Price', '50'),
(50, 'Premium Shipping time', '5'),
(51, 'first_oder_no_of_cashback', '5'),
(52, 'cashback_hierarchy_percentage', '10,5,5,2,2,2,1,1,1,1'),
(53, 'validation_of_discount_coupons', '90'),
(54, 'months', 'January,February,March,April,May,June,July,August,September,October,November,December'),
(55, 'map location   \r\n', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.5940380400593!2d77.55717631430458!3d12.997797217820953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3d885e8bfac7%3A0xe984b7a58edf3dc8!2sMicrosidd+India!5e0!3m2!1sen!2sin!4v1548685937779" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(56, 'Gift wrapping price', '20'),
(57, 'Tax percentage', '10');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_shipping_address`
--

CREATE TABLE `microsidd_shipping_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` int(20) NOT NULL,
  `company` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_shipping_address`
--

INSERT INTO `microsidd_shipping_address` (`id`, `user_id`, `fname`, `lname`, `email`, `phoneno`, `company`, `country`, `state`, `city`, `zipcode`, `address1`, `address2`) VALUES
(1, 1, 'Dipanjan', 'Saha', 'webhawks@india.com', 282828282, '', '115', 'West Bengal', 'Kolkaa', 2147483647, 'Jadavgarh', ''),
(2, 1, 'Dipanjan', 'Saha', 'webhawks@india.com', 282828282, '', '115', 'West Bengal', 'Kolkaa', 2147483647, 'Jadavgarh', ''),
(3, 1, 'Dipanjan', 'Saha', 'webhawks@india.com', 282828282, '', '115', 'West Bengal', 'Kolkaa', 2147483647, 'Jadavgarh', ''),
(4, 54, 'Priyanka', 'Hazra', 'priyankahazra1520@gmail.com', 2147483647, '', '105', 'Wb', 'Kolkata', 700012, 'Sealdah', 'M.G Road'),
(5, 76, 'bdfgdg', 'dsg', 'piku14@gmail.com', 2147483647, '', '16', 'bgdsfgb', 'fdgvbd', 54511152, 'dfgbdf', 'dgbfdfg'),
(6, 78, 'r6ui', 'gjlk', 'priyankahazra1520@gmail', 2147483647, '', '14', 'fghhxf', 'jmjgmj', 0, 'hgjmngh', 'sdfsfsdf'),
(7, 79, 'sdfvsdg', 'sdgf', 'dasbanti@gmail.com', 2147483647, '', '13', 'snvcshbdvbh', 'sdjhbusdh', 4754555, 'hbyhhbhbhb', 'svhhbsdvv'),
(8, 80, 'zdfgvzdf', 'dfgbfh', 'sahaa.priyasmita@gmail.com', 2147483647, '', '13', 'dzgbjzdgjnb', 'zgjijgkdjk', 4854555, 'jnjjndfnj', 'gmkbmkgbmk'),
(9, 84, 'jgkhkhkhk', 'ghgg', 'piku3@gmail.com', 2147483647, '', '14', 'sdfgg', 'dfghdfdfh', 25522525, 'hfnfnj', 'fgnfnnj'),
(10, 57, 'fgbbn', 'fgnbf', 'gnfnngf', 566545455, '', '13', 'bgngsf', 'fdsgbgsf', 51645645, 'bgsfvs', 'bfghsf');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_slider`
--

CREATE TABLE `microsidd_slider` (
  `slider_id` int(255) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_text` text NOT NULL,
  `slider_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_subscription`
--

CREATE TABLE `microsidd_subscription` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_subscription`
--

INSERT INTO `microsidd_subscription` (`id`, `email_id`, `date`, `status`) VALUES
(1, 'dfgd@gamil.com', '2019-01-28', 'Active'),
(2, 'susmita@gmail.com', '2019-02-11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_user`
--

CREATE TABLE `microsidd_user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `_wysihtml5_mode` varchar(255) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `forget_pass_id` varchar(255) NOT NULL,
  `activation_id` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `token_id` varchar(255) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime NOT NULL,
  `status` enum('Active','Pending') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `microsidd_user`
--

INSERT INTO `microsidd_user` (`user_id`, `fname`, `lname`, `username`, `email`, `address`, `dob`, `company_name`, `country`, `phoneno`, `password`, `city`, `state`, `_wysihtml5_mode`, `zipcode`, `profile_image`, `forget_pass_id`, `activation_id`, `otp`, `token_id`, `register_date`, `login_date`, `status`) VALUES
(2, 'tapas', 'tewary', 'tapas', '', '', '', '', '', '9563159408', '$2b$10$6aPFC7Sy6Qslj8yXx8ZfZO1Inv8A2HewF2oEu/nAU02VnpD1CzUkS', '', '', '', '', '', '', '', 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active'),
(3, 'tapas', 'tewary', 'tapa1', '', '', '', '', '', '9563159408', '$2b$10$dgJQyeAgcSdXU0egkqv3m.1rei87Z45BSfTFmjZvYvWsINkUG2c5K', '', '', '', '', '', '', '', 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `microsidd_wishlist`
--

CREATE TABLE `microsidd_wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `microsidd_wishlist`
--

INSERT INTO `microsidd_wishlist` (`wishlist_id`, `user_id`, `product_id`, `date`) VALUES
(15, 1, 4, '2019-01-22'),
(16, 1, 3, '2019-01-22'),
(19, 1, 8, '2019-01-25'),
(20, 1, 10, '2019-01-25'),
(24, 54, 5, '2019-01-26'),
(25, 54, 4, '2019-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `microsidd_admin_login`
--
ALTER TABLE `microsidd_admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `microsidd_cashback`
--
ALTER TABLE `microsidd_cashback`
  ADD PRIMARY KEY (`cashback_id`);

--
-- Indexes for table `microsidd_category`
--
ALTER TABLE `microsidd_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `microsidd_ci_sessions`
--
ALTER TABLE `microsidd_ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity_idx` (`timestamp`);

--
-- Indexes for table `microsidd_comment`
--
ALTER TABLE `microsidd_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `microsidd_countries`
--
ALTER TABLE `microsidd_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `microsidd_discount`
--
ALTER TABLE `microsidd_discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `microsidd_gallery`
--
ALTER TABLE `microsidd_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `microsidd_gift_cards`
--
ALTER TABLE `microsidd_gift_cards`
  ADD PRIMARY KEY (`gift_card_id`);

--
-- Indexes for table `microsidd_gift_card_order`
--
ALTER TABLE `microsidd_gift_card_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_gift_card_temp_order`
--
ALTER TABLE `microsidd_gift_card_temp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_image_temp`
--
ALTER TABLE `microsidd_image_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_mail_body`
--
ALTER TABLE `microsidd_mail_body`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `microsidd_main_image`
--
ALTER TABLE `microsidd_main_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `microsidd_meta_tag`
--
ALTER TABLE `microsidd_meta_tag`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `microsidd_news`
--
ALTER TABLE `microsidd_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `microsidd_order_details`
--
ALTER TABLE `microsidd_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_pagecontent`
--
ALTER TABLE `microsidd_pagecontent`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `microsidd_products`
--
ALTER TABLE `microsidd_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `microsidd_product_order`
--
ALTER TABLE `microsidd_product_order`
  ADD PRIMARY KEY (`pro_order_id`);

--
-- Indexes for table `microsidd_product_order_temp`
--
ALTER TABLE `microsidd_product_order_temp`
  ADD PRIMARY KEY (`temp_ord_id`);

--
-- Indexes for table `microsidd_product_rating`
--
ALTER TABLE `microsidd_product_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `microsidd_product_shop_temp`
--
ALTER TABLE `microsidd_product_shop_temp`
  ADD PRIMARY KEY (`temp_id`);

--
-- Indexes for table `microsidd_product_view`
--
ALTER TABLE `microsidd_product_view`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `microsidd_setting`
--
ALTER TABLE `microsidd_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `microsidd_shipping_address`
--
ALTER TABLE `microsidd_shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_slider`
--
ALTER TABLE `microsidd_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `microsidd_subscription`
--
ALTER TABLE `microsidd_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsidd_user`
--
ALTER TABLE `microsidd_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `microsidd_wishlist`
--
ALTER TABLE `microsidd_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `microsidd_admin_login`
--
ALTER TABLE `microsidd_admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `microsidd_cashback`
--
ALTER TABLE `microsidd_cashback`
  MODIFY `cashback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `microsidd_category`
--
ALTER TABLE `microsidd_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_comment`
--
ALTER TABLE `microsidd_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `microsidd_countries`
--
ALTER TABLE `microsidd_countries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `microsidd_discount`
--
ALTER TABLE `microsidd_discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_gallery`
--
ALTER TABLE `microsidd_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `microsidd_gift_cards`
--
ALTER TABLE `microsidd_gift_cards`
  MODIFY `gift_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_gift_card_order`
--
ALTER TABLE `microsidd_gift_card_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `microsidd_gift_card_temp_order`
--
ALTER TABLE `microsidd_gift_card_temp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `microsidd_image_temp`
--
ALTER TABLE `microsidd_image_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_mail_body`
--
ALTER TABLE `microsidd_mail_body`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `microsidd_main_image`
--
ALTER TABLE `microsidd_main_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `microsidd_meta_tag`
--
ALTER TABLE `microsidd_meta_tag`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_news`
--
ALTER TABLE `microsidd_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `microsidd_order_details`
--
ALTER TABLE `microsidd_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microsidd_pagecontent`
--
ALTER TABLE `microsidd_pagecontent`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_products`
--
ALTER TABLE `microsidd_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_product_order`
--
ALTER TABLE `microsidd_product_order`
  MODIFY `pro_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `microsidd_product_order_temp`
--
ALTER TABLE `microsidd_product_order_temp`
  MODIFY `temp_ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `microsidd_product_rating`
--
ALTER TABLE `microsidd_product_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `microsidd_product_shop_temp`
--
ALTER TABLE `microsidd_product_shop_temp`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `microsidd_product_view`
--
ALTER TABLE `microsidd_product_view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `microsidd_setting`
--
ALTER TABLE `microsidd_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `microsidd_shipping_address`
--
ALTER TABLE `microsidd_shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `microsidd_slider`
--
ALTER TABLE `microsidd_slider`
  MODIFY `slider_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `microsidd_subscription`
--
ALTER TABLE `microsidd_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `microsidd_user`
--
ALTER TABLE `microsidd_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `microsidd_wishlist`
--
ALTER TABLE `microsidd_wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
