-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 01:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesories_wardrobe`
--

CREATE TABLE `accesories_wardrobe` (
  `ID` int(11) NOT NULL,
  `houseid` int(11) NOT NULL,
  `accName` varchar(128) NOT NULL DEFAULT 'None',
  `accModel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `Salt` varchar(65) DEFAULT NULL,
  `Email` varchar(32) DEFAULT 'server@test.com',
  `PhoneNumber` varchar(24) DEFAULT '085722222222',
  `IP` varchar(17) DEFAULT '127.0.0.1',
  `LeaveIP` varchar(17) DEFAULT '0.0.0.0',
  `Banned` int(4) DEFAULT 0,
  `Admin` int(4) DEFAULT 0,
  `AdminDuty` int(4) DEFAULT 0,
  `AdminHide` int(4) DEFAULT 0,
  `RegisterDate` int(32) DEFAULT 0,
  `LoginDate` int(32) DEFAULT 0,
  `AdminRankName` varchar(32) DEFAULT 'None',
  `VerifyCode` varchar(32) DEFAULT 'UG-0000',
  `Influencer` int(11) DEFAULT 0,
  `ReportPoint` int(11) DEFAULT NULL,
  `AdminDutyTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `VerifyEmailToken` varchar(64) NOT NULL DEFAULT '0',
  `NextSendEmailToken` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ForgotPassToken` varchar(64) NOT NULL DEFAULT '0',
  `NextSendForgotPassToken` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AdminAcceptReport` int(11) NOT NULL DEFAULT 0,
  `AdminDeniedReport` int(11) NOT NULL DEFAULT 0,
  `AdminAcceptStuck` int(11) NOT NULL DEFAULT 0,
  `AdminDeniedStuck` int(11) NOT NULL DEFAULT 0,
  `AdminBanned` int(11) NOT NULL DEFAULT 0,
  `AdminUnbanned` int(11) NOT NULL DEFAULT 0,
  `AdminJail` int(11) NOT NULL DEFAULT 0,
  `AdminAnswer` int(11) NOT NULL DEFAULT 0,
  `DiscordID` varchar(60) NOT NULL,
  `Code` int(4) NOT NULL DEFAULT 0,
  `Active` int(2) NOT NULL DEFAULT 0,
  `Registered` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `Username`, `Password`, `Salt`, `Email`, `PhoneNumber`, `IP`, `LeaveIP`, `Banned`, `Admin`, `AdminDuty`, `AdminHide`, `RegisterDate`, `LoginDate`, `AdminRankName`, `VerifyCode`, `Influencer`, `ReportPoint`, `AdminDutyTime`, `VerifyEmailToken`, `NextSendEmailToken`, `ForgotPassToken`, `NextSendForgotPassToken`, `AdminAcceptReport`, `AdminDeniedReport`, `AdminAcceptStuck`, `AdminDeniedStuck`, `AdminBanned`, `AdminUnbanned`, `AdminJail`, `AdminAnswer`, `DiscordID`, `Code`, `Active`, `Registered`) VALUES
(23033, 'vyn', NULL, NULL, 'server@test.com', '085722222222', '127.0.0.1', '0.0.0.0', 0, 0, 0, 0, 0, 0, 'None', 'CPRP-4639', 0, NULL, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '784643292788817931', 0, 0, 0),
(23034, 'Akira', 'C9C430CF471B0B2A56A2959BC8495B5D8F693E8D851955045AFA0DF8FA4C316D', 'p1pV[Ah_bxxX7AX<r{XqWD3j;nXMjKqy@4]SeYVdX^>7t<xvCqF7Ai>rbIxn}vjs', 'server@test.com', '085722222222', '103.105.28.173', '103.105.28.173', 0, 10, 0, 0, 1653785222, 1653765153, 'None', 'ELRP-1019', 0, 0, 6, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '865839493474418700', 0, 1, 1),
(23035, 'Ervan', '7E6AC930728261C9FB74E17BD22FAC2F37F82066FA7C9394A944FE5A791403D7', 'f2\\s1>J@M47M2G0^`HjAs3>Bxuut]OSNW4|iAT}E8=gfGNK1Rvu/WSylU\\IrBVf/', 'server@test.com', '085722222222', '180.244.161.179', '180.244.161.179', 0, 10, 0, 0, 1653785545, 1653769439, 'Scripter', 'ELRP-9127', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '903525828007174194', 0, 1, 1),
(23036, 'Aditya', 'D9550966802D618AF7A1A6AE0EC67584699D19C52C951019D9E6ECBF89B76318', 'o>\\Nkv32B0rv:YNA5r|Snz;]iWJg;y>fiY`TzakhwqQA_9qhxc@FI8rAfUB<O[_`', 'server@test.com', '085722222222', '114.122.168.241', '114.122.168.241', 0, 0, 0, 0, 1653767535, 1653793564, 'None', 'ELRP-5714', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '977719859263705098', 0, 1, 1),
(23037, 'Jordan', '40B7627968EDB4676EA8CB567A5B78B738C42AC2086D4E14CD8C86D751F323D7', '?Zm1Rx88H[GUc0Su:Sw<FiZfh`tfXu|C|/gTylM:Cbx?G}G/s4qD9vbnL[7y[^XU', 'server@test.com', '085722222222', '120.188.81.234', '120.188.81.234', 0, 0, 0, 0, 1653767998, 0, 'None', 'ELRP-7921', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '979687261136367626', 0, 1, 1),
(23038, 'Yogzz', NULL, NULL, 'server@test.com', '085722222222', '127.0.0.1', '0.0.0.0', 0, 0, 0, 0, 0, 0, 'None', 'ELRP-1865', 0, NULL, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '591270224704045079', 0, 0, 0),
(23039, 'Zorra', 'BDE5FC8F39F582F6EA433E0AC93CD365F6F40D667B3D05D3CAE0E2E416BCDC6A', ']rSzF:n[:pfT`Sc4Sq2ulijXV?W@BJ9bnngnoA[M?5^`XQptL]L8HyK8_P?=VjdV', 'server@test.com', '085722222222', '112.215.174.208', '112.215.174.208', 0, 0, 0, 0, 1653790763, 1653792257, 'None', 'ELRP-9233', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '966117014877921330', 0, 1, 1),
(23040, 'Kenzo', '6B4DE550CA82B6C37228F461889D28B77B7BDCE95BD3906D909583519E350FE8', '9TcRdMFgd8ZqTbUeBUS5>XydLwME}\\MCRBAV[4pi]u{_=<OnY[i|Ta:^[U_O4TLf', 'server@test.com', '085722222222', '140.213.42.211', '140.213.42.211', 0, 0, 0, 0, 1653792152, 1653794276, 'None', 'ELRP-5026', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '954071211762143282', 0, 1, 1),
(23041, 'Marceline', '2172F5AE60DD931E81EBB83F987016439F5FCEDF7FE81303B09C9E8816B4396F', '23s?33\\y/:KvKBs_YterA`<iafPc;FKA0z<pWaSvfD;cAhJ`]|F4kp4j]zSG}LRU', 'server@test.com', '085722222222', '103.105.33.106', '103.105.33.106', 0, 0, 0, 0, 1653790844, 1653794686, 'None', 'ELRP-5582', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '823127628957483008', 0, 1, 1),
(23042, 'Roberts', '0FEB495DC2569420BBFDF9EA59CAE8D0A07787501B107EA8FDD3C4579C166AD8', 'OqhWf{o3ofboF{v=1_DzgI^xc2K8<PdxRV_6TGJ@a\\z?Fo/^RMEiCIqUxDpMHp[x', 'server@test.com', '085722222222', '103.83.93.223', '103.83.93.223', 0, 0, 0, 0, 1653791071, 1653792758, 'None', 'ELRP-4551', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '952559716507205632', 0, 1, 1),
(23043, 'RenzZ', NULL, NULL, 'server@test.com', '085722222222', '127.0.0.1', '0.0.0.0', 0, 0, 0, 0, 0, 0, 'None', 'ELRP-3320', 0, NULL, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '977186997011632188', 0, 0, 0),
(23044, 'Brendzz', 'D1E872927A1BCD597D60790234FCB6C1F987B1BF115BC6163AC75AF93132D337', '5B?OBXRmDlE3[M1nLz7|DV89[Jm5VV`mETaVeo?2YzAz^8w6HA}Rb|`fv@77l9Ul', 'server@test.com', '085722222222', '36.68.219.208', '36.68.219.208', 0, 0, 0, 0, 1653791588, 1653793746, 'None', 'ELRP-2313', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '964067301278232577', 0, 1, 1),
(23045, 'Romsito', '006E61D7C9460231EE3ED8B52BEBC277323EE4861D5B45A375544D50851957DF', '`2BGFPdj9?3}MY7QGlaJ5vmDdHGsxF8Gnw[rkFwLvkSZ6GR4TAh]7\\\\ONZU=Y]Bx', 'server@test.com', '085722222222', '103.83.93.223', '103.83.93.223', 0, 0, 0, 0, 1653792242, 0, 'None', 'ELRP-4403', 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '958547345451134996', 0, 1, 1),
(23046, 'Ryden', 'FB43576DA250973F954087102AFA5CE63A7E3658B4A7E57326BED16E50A01B96', '_5{yBU{2|8vn9dJaBBxruB:ZR3kXnT/=b:0XY[=<uhSypF7MqEq\\j0cevQyOH1\\t', 'server@test.com', '085722222222', '103.108.21.127', '0.0.0.0', 0, 0, 0, 0, 1653793693, 0, 'None', 'ELRP-4788', 0, NULL, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '868657558896934932', 0, 1, 1),
(23047, 'ReanZz', 'F175C1404BABECF5B2C45C0B9A4CB9187DB0E1448B7855206612B01B5C747633', '7bHMQvtIqfN1x0;2/j=}7SrD0|k2}r9M\\OLfT=4Zx;iT|hZNe[vnE8N_u\\Thdc9R', 'server@test.com', '085722222222', '116.206.31.64', '0.0.0.0', 0, 0, 0, 0, 1653794574, 0, 'None', 'ELRP-9670', 0, NULL, 0, '0', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '955804551338938468', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actorID` int(11) NOT NULL,
  `actorName` varchar(24) NOT NULL DEFAULT 'Stranger',
  `actorModel` int(11) NOT NULL DEFAULT 2,
  `actorX` float NOT NULL DEFAULT 0,
  `actorY` float NOT NULL DEFAULT 0,
  `actorZ` float NOT NULL DEFAULT 0,
  `actorA` float NOT NULL DEFAULT 0,
  `actorInterior` int(11) NOT NULL DEFAULT 0,
  `actorVirtualWorld` int(11) NOT NULL DEFAULT 0,
  `actorType` int(11) NOT NULL DEFAULT 0,
  `actorCash` int(11) NOT NULL DEFAULT 15000,
  `actorAnimLib` varchar(128) NOT NULL DEFAULT '',
  `actorAnimName` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_activities`
--

CREATE TABLE `admin_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('unknown','accept_report','deny_report','accept_stuck','deny_stuck','ban','unban','jail','answer') NOT NULL,
  `issuer` int(11) NOT NULL,
  `receiver` int(12) NOT NULL,
  `issuer_ip_address` varchar(32) NOT NULL,
  `receiver_ip_address` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Jam ini dalam UTC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_duty_times`
--

CREATE TABLE `admin_duty_times` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ended_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_duty_times`
--

INSERT INTO `admin_duty_times` (`id`, `account`, `started_at`, `ended_at`, `created_at`, `updated_at`) VALUES
(10943, 23035, '2022-05-28 19:11:21', '2022-05-28 19:11:28', '2022-05-28 19:11:21', '2022-05-28 19:11:28'),
(10944, 23034, '2022-05-28 19:17:09', '2022-05-28 19:25:11', '2022-05-28 19:17:09', '2022-05-28 19:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `aksesoris`
--

CREATE TABLE `aksesoris` (
  `ID` int(11) NOT NULL,
  `accID` int(11) DEFAULT NULL,
  `Model` int(11) DEFAULT NULL,
  `Bone` int(11) DEFAULT NULL,
  `Show` int(11) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `Color1` varchar(128) DEFAULT NULL,
  `Color2` varchar(128) DEFAULT NULL,
  `Offset` varchar(24) DEFAULT NULL,
  `Rot` varchar(72) DEFAULT NULL,
  `Scale` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Model` int(10) NOT NULL DEFAULT 19315,
  `Health` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `Time` int(10) NOT NULL DEFAULT 3600,
  `Pos` varchar(255) NOT NULL DEFAULT '0.0000|0.0000|0.0000',
  `Rot` varchar(255) NOT NULL DEFAULT '0.0000|0.0000|0.0000',
  `Potong` int(255) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`ID`, `Model`, `Health`, `Time`, `Pos`, `Rot`, `Potong`) VALUES
(53, 19315, 100, 3600, '0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apartmentID` int(11) NOT NULL,
  `apartmentType` int(11) NOT NULL DEFAULT 0,
  `apartmentName` varchar(128) NOT NULL DEFAULT 'Real Estate',
  `apartmentExteriorInt` int(11) NOT NULL DEFAULT 0,
  `apartmentExteriorWorld` int(11) NOT NULL DEFAULT 0,
  `apartmentExteriorPosX` float NOT NULL DEFAULT 0,
  `apartmentExteriorPosY` float NOT NULL DEFAULT 0,
  `apartmentExteriorPosZ` float NOT NULL DEFAULT 0,
  `apartmentExteriorPosA` float NOT NULL DEFAULT 0,
  `apartmentInteriorInt` int(11) NOT NULL DEFAULT 0,
  `apartmentInteriorWorld` int(11) NOT NULL DEFAULT 0,
  `apartmentInteriorPosX` float NOT NULL DEFAULT 0,
  `apartmentInteriorPosY` float NOT NULL DEFAULT 0,
  `apartmentInteriorPosZ` float NOT NULL DEFAULT 0,
  `apartmentInteriorPosA` float NOT NULL DEFAULT 0,
  `apartmentParkingPosX` float NOT NULL DEFAULT 0,
  `apartmentParkingPosY` float NOT NULL DEFAULT 0,
  `apartmentParkingPosZ` float NOT NULL DEFAULT 0,
  `apartmentParkingPosA` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_room`
--

CREATE TABLE `apartment_room` (
  `apartmentRoomID` int(11) NOT NULL,
  `apartmentID` int(11) NOT NULL DEFAULT -1,
  `apartmentRoomOwner` int(11) NOT NULL DEFAULT -1,
  `apartmentRoomPrice` int(11) NOT NULL DEFAULT 200000,
  `apartmentRoomOwnerName` varchar(128) NOT NULL DEFAULT 'Real Estate',
  `apartmentRoomName` varchar(128) NOT NULL DEFAULT 'None',
  `apartmentRoomInterior` int(11) NOT NULL DEFAULT 0,
  `apartmentRoomWorld` int(11) NOT NULL DEFAULT 0,
  `apartmentExteriorRoomPosX` float NOT NULL DEFAULT 0,
  `apartmentExteriorRoomPosY` float NOT NULL DEFAULT 0,
  `apartmentExteriorRoomPosZ` float NOT NULL DEFAULT 0,
  `apartmentExteriorRoomPosA` float NOT NULL DEFAULT 0,
  `apartmentInteriorRoomPosX` float NOT NULL DEFAULT 0,
  `apartmentInteriorRoomPosY` float NOT NULL DEFAULT 0,
  `apartmentInteriorRoomPosZ` float NOT NULL DEFAULT 0,
  `apartmentInteriorRoomPosA` float NOT NULL DEFAULT 0,
  `apartmentRoomLock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_storage`
--

CREATE TABLE `apartment_storage` (
  `itemID` int(11) NOT NULL,
  `apartmentRoomID` int(11) NOT NULL DEFAULT -1,
  `itemName` varchar(255) NOT NULL DEFAULT 'None',
  `itemModel` int(11) NOT NULL DEFAULT 0,
  `itemQuantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `arrestID` int(11) NOT NULL,
  `arrestX` float NOT NULL DEFAULT 0,
  `arrestY` float NOT NULL DEFAULT 0,
  `arrestZ` float NOT NULL DEFAULT 0,
  `arrestInterior` int(11) NOT NULL DEFAULT 0,
  `arrestWorld` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL,
  `atmX` float NOT NULL DEFAULT 0,
  `atmY` float NOT NULL DEFAULT 0,
  `atmZ` float NOT NULL DEFAULT 0,
  `atmA` float NOT NULL DEFAULT 0,
  `atmInterior` int(11) NOT NULL DEFAULT 0,
  `atmWorld` int(11) NOT NULL DEFAULT 0,
  `atmCap` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`atmID`, `atmX`, `atmY`, `atmZ`, `atmA`, `atmInterior`, `atmWorld`, `atmCap`) VALUES
(148, 1637.68, -2335.28, 13.546, 350.136, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `backpackitems`
--

CREATE TABLE `backpackitems` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backpacks`
--

CREATE TABLE `backpacks` (
  `backpackID` int(12) NOT NULL,
  `backpackPlayer` int(12) DEFAULT 0,
  `backpackX` float DEFAULT 0,
  `backpackY` float DEFAULT 0,
  `backpackZ` float DEFAULT 0,
  `backpackInterior` int(12) DEFAULT 0,
  `backpackWorld` int(12) DEFAULT 0,
  `backpackHouse` int(12) DEFAULT 0,
  `backpackVehicle` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billboards`
--

CREATE TABLE `billboards` (
  `bbID` int(12) NOT NULL,
  `bbExists` int(12) DEFAULT 0,
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT 0,
  `bbPrice` int(12) NOT NULL DEFAULT 0,
  `bbRange` int(12) DEFAULT 10,
  `bbPosX` float DEFAULT 0,
  `bbPosY` float DEFAULT 0,
  `bbPosZ` float DEFAULT 0,
  `bbMessage` varchar(230) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bizwarn`
--

CREATE TABLE `bizwarn` (
  `ID` int(10) NOT NULL,
  `bizID` int(10) NOT NULL,
  `bwarnBy` varchar(35) CHARACTER SET utf8 NOT NULL,
  `bwarnReason` varchar(35) CHARACTER SET utf8 NOT NULL,
  `bwarnDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `Characters` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` int(10) UNSIGNED DEFAULT NULL,
  `Temp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `bizID` int(12) NOT NULL,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT 0,
  `bizType` int(12) DEFAULT 0,
  `bizPrice` int(12) DEFAULT 0,
  `bizPosX` float DEFAULT 0,
  `bizPosY` float DEFAULT 0,
  `bizPosZ` float DEFAULT 0,
  `bizPosA` float DEFAULT 0,
  `bizIntX` float DEFAULT 0,
  `bizIntY` float DEFAULT 0,
  `bizIntZ` float DEFAULT 0,
  `bizIntA` float DEFAULT 0,
  `bizInterior` int(12) DEFAULT 0,
  `bizExterior` int(12) DEFAULT 0,
  `bizExteriorVW` int(12) DEFAULT 0,
  `bizLocked` int(4) DEFAULT 0,
  `bizVault` int(12) DEFAULT 0,
  `bizProducts` int(12) DEFAULT 0,
  `bizPrice1` int(12) DEFAULT 0,
  `bizPrice2` int(12) DEFAULT 0,
  `bizPrice3` int(12) DEFAULT 0,
  `bizPrice4` int(12) DEFAULT 0,
  `bizPrice5` int(12) DEFAULT 0,
  `bizPrice6` int(12) DEFAULT 0,
  `bizPrice7` int(12) DEFAULT 0,
  `bizPrice8` int(12) DEFAULT 0,
  `bizPrice9` int(12) DEFAULT 0,
  `bizPrice10` int(12) DEFAULT 0,
  `bizSpawnX` float DEFAULT 0,
  `bizSpawnY` float DEFAULT 0,
  `bizSpawnZ` float DEFAULT 0,
  `bizSpawnA` float DEFAULT 0,
  `bizDeliverX` float DEFAULT 0,
  `bizDeliverY` float DEFAULT 0,
  `bizDeliverZ` float DEFAULT 0,
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT 0,
  `bizPrice12` int(12) DEFAULT 0,
  `bizPrice13` int(12) DEFAULT 0,
  `bizPrice14` int(12) DEFAULT 0,
  `bizPrice15` int(12) DEFAULT 0,
  `bizPrice16` int(12) DEFAULT 0,
  `bizPrice17` int(12) DEFAULT 0,
  `bizPrice18` int(12) DEFAULT 0,
  `bizPrice19` int(12) DEFAULT 0,
  `bizPrice20` int(12) DEFAULT 0,
  `bizShipment` int(4) DEFAULT 0,
  `bizSeal` int(11) NOT NULL DEFAULT 0,
  `bOwnerName` varchar(225) NOT NULL DEFAULT 'None',
  `bizCargo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bizLastVisited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bizJob` int(5) NOT NULL DEFAULT 0,
  `bizWarn` int(5) NOT NULL DEFAULT 0,
  `bizLink` varchar(128) NOT NULL DEFAULT 'None',
  `bizDurability` int(10) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`bizID`, `bizName`, `bizOwner`, `bizType`, `bizPrice`, `bizPosX`, `bizPosY`, `bizPosZ`, `bizPosA`, `bizIntX`, `bizIntY`, `bizIntZ`, `bizIntA`, `bizInterior`, `bizExterior`, `bizExteriorVW`, `bizLocked`, `bizVault`, `bizProducts`, `bizPrice1`, `bizPrice2`, `bizPrice3`, `bizPrice4`, `bizPrice5`, `bizPrice6`, `bizPrice7`, `bizPrice8`, `bizPrice9`, `bizPrice10`, `bizSpawnX`, `bizSpawnY`, `bizSpawnZ`, `bizSpawnA`, `bizDeliverX`, `bizDeliverY`, `bizDeliverZ`, `bizMessage`, `bizPrice11`, `bizPrice12`, `bizPrice13`, `bizPrice14`, `bizPrice15`, `bizPrice16`, `bizPrice17`, `bizPrice18`, `bizPrice19`, `bizPrice20`, `bizShipment`, `bizSeal`, `bOwnerName`, `bizCargo`, `bizLastVisited`, `bizJob`, `bizWarn`, `bizLink`, `bizDurability`) VALUES
(192, 'Electronic Store', 0, 8, 1, 1940.01, -2115.98, 13.6953, 85.8404, 1940.21, -2116.14, 13.6953, 75.8125, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1940.01, -2115.98, 13.6953, 85.8404, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 100, 0, 0, 0, '', 100);

-- --------------------------------------------------------

--
-- Table structure for table `business_employe`
--

CREATE TABLE `business_employe` (
  `ID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `Business` int(11) NOT NULL DEFAULT -1,
  `Name` varchar(255) NOT NULL DEFAULT 'Stranger',
  `DutyHour` int(11) NOT NULL DEFAULT 0,
  `Time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_queue`
--

CREATE TABLE `business_queue` (
  `Username` varchar(24) NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `Message` varchar(32) NOT NULL,
  `Date` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cardestroy`
--

CREATE TABLE `cardestroy` (
  `destroyBy` varchar(24) NOT NULL,
  `destroyModel` int(10) UNSIGNED NOT NULL,
  `destroyOwner` varchar(24) NOT NULL,
  `destroyTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `product` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `posX` float DEFAULT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `posA` float DEFAULT NULL,
  `expired` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carstorage`
--

CREATE TABLE `carstorage` (
  `itemID` int(11) NOT NULL,
  `itemVehicle` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) UNSIGNED DEFAULT 0,
  `itemQuantity` int(12) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL,
  `salt` varchar(65) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Admin` int(11) DEFAULT NULL,
  `Created` int(4) DEFAULT 0,
  `Gender` int(4) DEFAULT 0,
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int(12) DEFAULT 0,
  `Glasses` int(12) DEFAULT 0,
  `Hat` int(12) DEFAULT 0,
  `Bandana` int(12) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `Interior` int(12) DEFAULT 0,
  `World` int(12) DEFAULT 0,
  `Hospital` int(12) DEFAULT -1,
  `HospitalInt` int(12) DEFAULT 0,
  `Money` int(12) DEFAULT 500,
  `BankMoney` int(12) DEFAULT 1000,
  `OwnsBillboard` int(12) DEFAULT -1,
  `Savings` int(12) DEFAULT 0,
  `JailTime` int(12) DEFAULT 0,
  `Muted` int(4) DEFAULT 0,
  `CreateDate` int(12) DEFAULT 0,
  `LastLogin` varchar(40) DEFAULT 'None',
  `Tester` int(4) DEFAULT 0,
  `Gun1` int(12) DEFAULT 0,
  `Gun2` int(12) DEFAULT 0,
  `Gun3` int(12) DEFAULT 0,
  `Gun4` int(12) DEFAULT 0,
  `Gun5` int(12) DEFAULT 0,
  `Gun6` int(12) DEFAULT 0,
  `Gun7` int(12) DEFAULT 0,
  `Gun8` int(12) DEFAULT 0,
  `Gun9` int(12) DEFAULT 0,
  `Gun10` int(12) DEFAULT 0,
  `Gun11` int(12) DEFAULT 0,
  `Gun12` int(12) DEFAULT 0,
  `Gun13` int(12) DEFAULT 0,
  `Ammo1` int(12) DEFAULT 0,
  `Ammo2` int(12) DEFAULT 0,
  `Ammo3` int(12) DEFAULT 0,
  `Ammo4` int(12) DEFAULT 0,
  `Ammo5` int(12) DEFAULT 0,
  `Ammo6` int(12) DEFAULT 0,
  `Ammo7` int(12) DEFAULT 0,
  `Ammo8` int(12) DEFAULT 0,
  `Ammo9` int(12) DEFAULT 0,
  `Ammo10` int(12) DEFAULT 0,
  `Ammo11` int(12) DEFAULT 0,
  `Ammo12` int(12) DEFAULT 0,
  `Ammo13` int(12) DEFAULT 0,
  `GunStatus13` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus1` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus2` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus3` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus4` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus5` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus6` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus7` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus8` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus9` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus10` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus11` smallint(5) UNSIGNED DEFAULT NULL,
  `GunStatus12` smallint(5) UNSIGNED DEFAULT NULL,
  `House` int(12) DEFAULT -1,
  `Business` int(12) DEFAULT -1,
  `Phone` int(12) DEFAULT 0,
  `Lottery` int(12) DEFAULT 0,
  `Hunger` float DEFAULT 100,
  `Bladder` float DEFAULT 100,
  `Energy` float DEFAULT 100,
  `PlayingHours` int(12) DEFAULT 0,
  `Minutes` int(12) DEFAULT 0,
  `ArmorStatus` float DEFAULT 0,
  `Entrance` int(12) DEFAULT 0,
  `Job` int(12) DEFAULT 0,
  `Faction` int(12) DEFAULT -1,
  `FactionRank` int(12) DEFAULT 0,
  `FactionDiv` int(12) DEFAULT 0,
  `Prisoned` int(4) DEFAULT 0,
  `Warrants` int(12) DEFAULT 0,
  `Injured` int(4) DEFAULT 0,
  `Health` float DEFAULT 0,
  `Channel` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT 0,
  `Warnings` int(12) DEFAULT 0,
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `MaskID` int(12) DEFAULT 0,
  `FactionMod` int(12) DEFAULT 0,
  `Capacity` int(12) DEFAULT 35 COMMENT 'kapasitas inventory karakter',
  `AdminHide` int(4) DEFAULT 0,
  `LotteryB` int(11) DEFAULT 0,
  `SpawnPoint` int(11) DEFAULT 0,
  `aname` varchar(24) NOT NULL DEFAULT 'none',
  `pScore` int(11) DEFAULT 1,
  `reputasi` int(11) DEFAULT NULL,
  `JailReason` varchar(225) NOT NULL DEFAULT 'Unknown Reason',
  `RankName` varchar(35) NOT NULL DEFAULT 'none',
  `reputasiadmin` int(11) DEFAULT NULL,
  `MinutesRep` int(11) DEFAULT NULL,
  `CanRep` int(11) DEFAULT NULL,
  `JobLeave` int(11) DEFAULT 0,
  `JobTime` int(11) DEFAULT NULL,
  `JobSide` int(11) DEFAULT NULL,
  `FactionDuty` int(11) DEFAULT 0,
  `LoginSkin` int(11) DEFAULT NULL,
  `Paycheck` int(11) DEFAULT NULL,
  `DrivingLicense` int(10) UNSIGNED DEFAULT 0,
  `DrivingLicenseExpired` int(11) DEFAULT 0,
  `Played` varchar(64) DEFAULT NULL,
  `Alias` varchar(24) DEFAULT 'Player',
  `Work` int(11) NOT NULL DEFAULT 0,
  `DelayFishing` int(11) UNSIGNED DEFAULT 0,
  `DelayTruck` int(11) DEFAULT 0,
  `LoginDate` varchar(50) DEFAULT NULL,
  `RegisterDate` varchar(50) DEFAULT '0',
  `IP` varchar(32) DEFAULT NULL,
  `SkinFaction` int(10) UNSIGNED DEFAULT 0,
  `Component` int(10) UNSIGNED DEFAULT NULL,
  `Fish0` varchar(24) DEFAULT NULL,
  `Fish1` varchar(24) DEFAULT NULL,
  `Fish2` varchar(24) DEFAULT NULL,
  `Fish3` varchar(24) DEFAULT NULL,
  `Fish4` varchar(24) DEFAULT NULL,
  `Fish5` varchar(24) DEFAULT NULL,
  `Fish6` varchar(24) DEFAULT NULL,
  `Fish7` varchar(24) DEFAULT NULL,
  `Fish8` varchar(24) DEFAULT NULL,
  `Fish9` varchar(24) DEFAULT NULL,
  `Fish10` varchar(24) DEFAULT NULL,
  `Fish11` varchar(24) DEFAULT NULL,
  `Fish12` varchar(24) DEFAULT NULL,
  `Fish13` varchar(24) DEFAULT NULL,
  `Fish14` varchar(24) DEFAULT NULL,
  `Fish15` varchar(24) DEFAULT NULL,
  `Fish16` varchar(24) DEFAULT NULL,
  `Fish17` varchar(24) DEFAULT NULL,
  `Fish18` varchar(24) DEFAULT NULL,
  `Fish19` varchar(24) DEFAULT NULL,
  `Fish20` varchar(24) DEFAULT NULL,
  `Fish21` varchar(24) DEFAULT NULL,
  `Fish22` varchar(24) DEFAULT NULL,
  `Fish23` varchar(24) DEFAULT NULL,
  `Fish24` varchar(24) DEFAULT NULL,
  `WoodDelay` int(10) UNSIGNED DEFAULT 0,
  `BusinessLicense` int(10) UNSIGNED DEFAULT 0,
  `BusinessLicenseExpired` int(25) UNSIGNED DEFAULT 0,
  `WorkshopLicense` int(10) UNSIGNED DEFAULT 0,
  `WorkshopLicenseExpired` int(25) UNSIGNED DEFAULT 0,
  `FirearmLicense` int(10) UNSIGNED DEFAULT 0,
  `FirearmLicenseExpired` int(25) UNSIGNED DEFAULT 0,
  `LumberLicense` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LumberLicenseExpired` int(25) UNSIGNED NOT NULL DEFAULT 0,
  `LumberDelay` int(10) UNSIGNED DEFAULT 0,
  `AdjWep` tinyint(3) UNSIGNED DEFAULT 0,
  `Badge` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Damage0` varchar(128) NOT NULL DEFAULT 'None',
  `Damage1` varchar(128) NOT NULL DEFAULT 'None',
  `Damage2` varchar(128) NOT NULL DEFAULT 'None',
  `Damage3` varchar(128) NOT NULL DEFAULT 'None',
  `Damage4` varchar(128) NOT NULL DEFAULT 'None',
  `Damage5` varchar(128) NOT NULL DEFAULT 'None',
  `Damage6` varchar(128) NOT NULL DEFAULT 'None',
  `Damage7` varchar(128) NOT NULL DEFAULT 'None',
  `Damage8` varchar(128) NOT NULL DEFAULT 'None',
  `Damage9` varchar(128) NOT NULL DEFAULT 'None',
  `UsePills` int(10) UNSIGNED DEFAULT 0,
  `CoughPills` int(10) UNSIGNED DEFAULT NULL,
  `MigrainPills` int(10) UNSIGNED DEFAULT 0,
  `FiverPills` int(10) UNSIGNED DEFAULT 0,
  `MigrainUsed` int(10) UNSIGNED DEFAULT 0,
  `FeverUsed` int(10) UNSIGNED DEFAULT 0,
  `Cough` int(10) UNSIGNED DEFAULT 0,
  `MigrainTime` int(10) UNSIGNED DEFAULT NULL,
  `MigrainRate` int(10) UNSIGNED DEFAULT NULL,
  `Fever` int(10) UNSIGNED DEFAULT NULL,
  `Garage` int(10) DEFAULT 0,
  `GunAuthority` int(10) UNSIGNED DEFAULT 0,
  `FurnStore` int(11) NOT NULL DEFAULT -1,
  `DMVTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SweeperDelay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BusDelay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Cuffed` int(10) DEFAULT 0,
  `Influencer` int(6) DEFAULT NULL,
  `JailedBy` varchar(25) DEFAULT NULL,
  `GiveupTime` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FightStyle` int(5) NOT NULL DEFAULT 0,
  `MechanicLevel` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `MechanicEXP` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DrugEffect` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `DrugHeroin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `DrugCocaine` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Love` float NOT NULL DEFAULT 0,
  `PartnerName` varchar(50) NOT NULL DEFAULT 'Single',
  `PartnerID` int(10) NOT NULL DEFAULT 0,
  `PartnerGift` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `Status` int(5) NOT NULL DEFAULT 0,
  `SalaryDuty` int(10) NOT NULL DEFAULT 0,
  `DutyTime` int(10) NOT NULL DEFAULT 0,
  `TruckLicense` int(10) NOT NULL DEFAULT 0,
  `TruckLicenseExpired` int(10) NOT NULL DEFAULT 0,
  `MineSalary` int(10) NOT NULL DEFAULT 0,
  `UndercoverDuty` int(5) NOT NULL DEFAULT 0,
  `PhoneCredits` int(50) NOT NULL DEFAULT 0,
  `PlayerAccent` varchar(50) NOT NULL DEFAULT 'None',
  `PhoneBattery` float NOT NULL DEFAULT 100,
  `pBusinessJob` int(10) NOT NULL DEFAULT -1,
  `pBusinessDuty` int(10) NOT NULL DEFAULT 0,
  `pBusinessDutyHour` int(10) NOT NULL DEFAULT 0,
  `pExperience` int(5) NOT NULL DEFAULT 0,
  `Bandage` int(5) NOT NULL DEFAULT 0,
  `BLSLicense` int(5) NOT NULL DEFAULT 0,
  `BLSLicenseExpired` int(5) NOT NULL DEFAULT 0,
  `Freq0` int(5) NOT NULL DEFAULT 0,
  `Freq1` int(5) NOT NULL DEFAULT 0,
  `Freq2` int(5) NOT NULL DEFAULT 0,
  `Freq3` int(5) NOT NULL DEFAULT 0,
  `Freq4` int(5) NOT NULL DEFAULT 0,
  `Freq5` int(5) NOT NULL DEFAULT 0,
  `LiveMode` int(11) NOT NULL DEFAULT 0,
  `ParkedVehicle` int(5) NOT NULL DEFAULT 0,
  `pTogOOC` int(5) NOT NULL DEFAULT 0,
  `pTogPM` int(5) NOT NULL DEFAULT 0,
  `pTogBC` int(5) NOT NULL DEFAULT 0,
  `pTogLogin` int(5) NOT NULL DEFAULT 0,
  `pTogAnim` int(5) NOT NULL DEFAULT 0,
  `pTogRelation` int(5) NOT NULL DEFAULT 0,
  `pTogFaction` int(5) NOT NULL DEFAULT 0,
  `Drunk` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DrunkTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DeadTime` float NOT NULL DEFAULT 100,
  `MoneyTransDelay` int(11) NOT NULL DEFAULT 0,
  `BoxvilleDelay` int(11) NOT NULL DEFAULT 0,
  `last_armor` float NOT NULL DEFAULT 0,
  `Apartment` int(11) NOT NULL DEFAULT -1,
  `ApartmentBuilding` int(11) NOT NULL DEFAULT -1,
  `IDCardExpired` int(11) NOT NULL DEFAULT 0,
  `DrugLSD` int(11) NOT NULL DEFAULT 0,
  `DrugEcstasy` int(11) NOT NULL DEFAULT 0,
  `DrugSpecialEffect` int(11) NOT NULL DEFAULT 0,
  `Tied` int(11) NOT NULL DEFAULT 0,
  `pFishingSkill` float NOT NULL DEFAULT 0,
  `pHuntingSkill` float NOT NULL DEFAULT 0,
  `pLumberSkill` float NOT NULL DEFAULT 0,
  `pTruckerSkill` float NOT NULL DEFAULT 0,
  `pFarmerSkill` float NOT NULL DEFAULT 0,
  `PetModel` int(11) NOT NULL DEFAULT 0,
  `PetName` varchar(128) NOT NULL DEFAULT 'Jack',
  `HudStyle` int(11) NOT NULL DEFAULT 0,
  `FactionSalaryCollected` int(11) NOT NULL DEFAULT 0,
  `FactionSalaryResettedAt` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `Username`, `password`, `salt`, `Character`, `Admin`, `Created`, `Gender`, `Birthdate`, `Origin`, `Skin`, `Glasses`, `Hat`, `Bandana`, `PosX`, `PosY`, `PosZ`, `PosA`, `Interior`, `World`, `Hospital`, `HospitalInt`, `Money`, `BankMoney`, `OwnsBillboard`, `Savings`, `JailTime`, `Muted`, `CreateDate`, `LastLogin`, `Tester`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `GunStatus13`, `GunStatus1`, `GunStatus2`, `GunStatus3`, `GunStatus4`, `GunStatus5`, `GunStatus6`, `GunStatus7`, `GunStatus8`, `GunStatus9`, `GunStatus10`, `GunStatus11`, `GunStatus12`, `House`, `Business`, `Phone`, `Lottery`, `Hunger`, `Bladder`, `Energy`, `PlayingHours`, `Minutes`, `ArmorStatus`, `Entrance`, `Job`, `Faction`, `FactionRank`, `FactionDiv`, `Prisoned`, `Warrants`, `Injured`, `Health`, `Channel`, `Accent`, `Bleeding`, `Warnings`, `Warn1`, `Warn2`, `MaskID`, `FactionMod`, `Capacity`, `AdminHide`, `LotteryB`, `SpawnPoint`, `aname`, `pScore`, `reputasi`, `JailReason`, `RankName`, `reputasiadmin`, `MinutesRep`, `CanRep`, `JobLeave`, `JobTime`, `JobSide`, `FactionDuty`, `LoginSkin`, `Paycheck`, `DrivingLicense`, `DrivingLicenseExpired`, `Played`, `Alias`, `Work`, `DelayFishing`, `DelayTruck`, `LoginDate`, `RegisterDate`, `IP`, `SkinFaction`, `Component`, `Fish0`, `Fish1`, `Fish2`, `Fish3`, `Fish4`, `Fish5`, `Fish6`, `Fish7`, `Fish8`, `Fish9`, `Fish10`, `Fish11`, `Fish12`, `Fish13`, `Fish14`, `Fish15`, `Fish16`, `Fish17`, `Fish18`, `Fish19`, `Fish20`, `Fish21`, `Fish22`, `Fish23`, `Fish24`, `WoodDelay`, `BusinessLicense`, `BusinessLicenseExpired`, `WorkshopLicense`, `WorkshopLicenseExpired`, `FirearmLicense`, `FirearmLicenseExpired`, `LumberLicense`, `LumberLicenseExpired`, `LumberDelay`, `AdjWep`, `Badge`, `Damage0`, `Damage1`, `Damage2`, `Damage3`, `Damage4`, `Damage5`, `Damage6`, `Damage7`, `Damage8`, `Damage9`, `UsePills`, `CoughPills`, `MigrainPills`, `FiverPills`, `MigrainUsed`, `FeverUsed`, `Cough`, `MigrainTime`, `MigrainRate`, `Fever`, `Garage`, `GunAuthority`, `FurnStore`, `DMVTime`, `SweeperDelay`, `BusDelay`, `Cuffed`, `Influencer`, `JailedBy`, `GiveupTime`, `FightStyle`, `MechanicLevel`, `MechanicEXP`, `DrugEffect`, `DrugHeroin`, `DrugCocaine`, `Love`, `PartnerName`, `PartnerID`, `PartnerGift`, `Status`, `SalaryDuty`, `DutyTime`, `TruckLicense`, `TruckLicenseExpired`, `MineSalary`, `UndercoverDuty`, `PhoneCredits`, `PlayerAccent`, `PhoneBattery`, `pBusinessJob`, `pBusinessDuty`, `pBusinessDutyHour`, `pExperience`, `Bandage`, `BLSLicense`, `BLSLicenseExpired`, `Freq0`, `Freq1`, `Freq2`, `Freq3`, `Freq4`, `Freq5`, `LiveMode`, `ParkedVehicle`, `pTogOOC`, `pTogPM`, `pTogBC`, `pTogLogin`, `pTogAnim`, `pTogRelation`, `pTogFaction`, `Drunk`, `DrunkTime`, `DeadTime`, `MoneyTransDelay`, `BoxvilleDelay`, `last_armor`, `Apartment`, `ApartmentBuilding`, `IDCardExpired`, `DrugLSD`, `DrugEcstasy`, `DrugSpecialEffect`, `Tied`, `pFishingSkill`, `pHuntingSkill`, `pLumberSkill`, `pTruckerSkill`, `pFarmerSkill`, `PetModel`, `PetName`, `HudStyle`, `FactionSalaryCollected`, `FactionSalaryResettedAt`) VALUES
(1, 'MomoruChan', NULL, NULL, 'Kimberly_Homptod', NULL, 1, 1, '02/02/2002', 'Detrotod', 23, 0, 0, 0, 1816.5, -1890.18, 13.414, 294.634, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1650469078, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 99.2, 100, 99.4, 0, 22, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 62868, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '23|0|0', 'Player', 0, 0, 0, NULL, '1650469101', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1653098847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(2, 'Akira', NULL, NULL, 'Seinen_Kamamaru', NULL, 1, 1, '30/07/2000', 'Indonesia', 15, 0, 0, 0, 1100.56, -1704.19, 13.5468, 103.799, 0, 0, -1, 0, 499, 1000, -1, 0, 0, 0, 1653785229, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 85.9, 100, 88.8, 0, 989, 100, -1, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 74225, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '27|16|0', 'Player', 0, 0, 0, NULL, '1653785265', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656415011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(3, 'Ervan', NULL, NULL, 'Ervan_DeLazcano', NULL, 1, 1, '26/09/2000', 'JAKARTA', 0, 0, 0, 0, 1198.1, -1309.23, 13.0978, 115.392, 0, 0, -1, 0, -99500, 1000, -1, 0, 0, 0, 1653785563, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 60.4, 100, 68.2, 0, 3403, 0, 0, 0, 4, 5, 0, 0, 0, 0, 98.68, 0, NULL, 0, 0, NULL, NULL, 83340, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '38|56|0', 'Player', 0, 0, 0, NULL, '1653785610', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', '[29 May 2022, 02:05:44] Issue: Seinen Kamamaru | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 02:05:46] Issue: Seinen Kamamaru | Amount: 2.30 | Weapon: 0 | Body: 3', '[29 May 2022, 02:28:21] Issue: Seinen Kamamaru | Amount: 9.89 | Weapon: 25 | Body: 5', '[29 May 2022, 02:28:22] Issue: Seinen Kamamaru | Amount: 3.29 | Weapon: 25 | Body: 3', '[29 May 2022, 02:28:25] Issue: Seinen Kamamaru | Amount: 16.50 | Weapon: 25 | Body: 5', '[29 May 2022, 02:28:25] Issue: Seinen Kamamaru | Amount: 3.29 | Weapon: 25 | Body: 5', '[29 May 2022, 02:28:27] Issue: Seinen Kamamaru | Amount: 3.29 | Weapon: 25 | Body: 5', '[29 May 2022, 03:37:08] Issue: Aditya Angky | Amount: 1.32 | Weapon: 0 | Body: 3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656415356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(4, 'Aditya', NULL, NULL, 'Aditya_Angky', NULL, 1, 1, '13/07/2006', 'LOS SANTOS', 2, 0, 0, 0, 1753.38, -1740.15, 13.5468, 82.1713, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653767685, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 57.2, 100, 65.7, 0, 3595, 0, 0, 0, -1, 0, 0, 0, 0, 0, 26.7397, 0, NULL, 0, 0, NULL, NULL, 28590, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '45|59|0', 'Player', 0, 0, 0, NULL, '1653767911', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[29 May 2022, 03:34:27] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:27] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:28] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:29] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:29] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:30] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:34:30] Issue: Leonardo Jordan | Amount: 2.31 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:30] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:30] Issue: Leonardo Jordan | Amount: 2.31 | Weapon: 0 | Body: 3', '[29 May 2022, 03:48:25] Issue: Leonardo Jordan | Amount: 1.32 | Weapon: 0 | Body: 3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656397657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(5, 'Jordan', NULL, NULL, 'Leonardo_Jordan', NULL, 1, 1, '6/3/2001', 'LOSSS SANTOSSS', 2, 0, 0, 0, 1629.48, -1682.24, 13.0797, 264.407, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653768105, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 79.3, 100, 83.4, 0, 2052, 0, 0, 0, -1, 0, 0, 0, 0, 0, 92.41, 0, NULL, 0, 0, NULL, NULL, 53979, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '6|34|0', 'Player', 0, 0, 0, NULL, '1653768259', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[29 May 2022, 03:35:30] Issue: Aditya Angky | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:48] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:49] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:49] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:50] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:50] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:50] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:35:51] Issue: Aditya Angky | Amount: 6.60 | Weapon: 0 | Body: 3', '[29 May 2022, 03:48:34] Issue: Aditya Angky | Amount: 1.32 | Weapon: 0 | Body: 3', '[29 May 2022, 03:48:34] Issue: Aditya Angky | Amount: 1.32 | Weapon: 0 | Body: 3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656398005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(6, 'Zorra', NULL, NULL, 'Daniel_Alexanders', NULL, 1, 1, '16/03/2001', 'Mexico', 14, 0, 0, 0, 2000.24, -1676.06, 13.3828, 84.989, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653790797, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 93, 100, 94.5, 0, 659, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 31062, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '59|10|0', 'Player', 0, 0, 0, NULL, '1653790920', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656420666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(7, 'Marceline', NULL, NULL, 'Charles_Jacob', NULL, 1, 1, '03/03/1997', 'Los Santos', 42, 0, 0, 0, 1239.07, -1373.89, 13.3525, 94.5159, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653790883, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 79.5, 100, 83.6, 0, 1580, 0, -1, 0, -1, 0, 0, 0, 0, 0, 93.73, 0, NULL, 0, 0, NULL, NULL, 86452, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '17|26|0', 'Player', 0, 0, 0, NULL, '1653790987', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', '[29 May 2022, 09:44:37] Issue: Robberto Cassilas | Amount: 1.32 | Weapon: 0 | Body: 3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656420733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(8, 'Roberts', NULL, NULL, 'Robberto_Cassilas', NULL, 1, 1, '22/10/2011', 'JAKARTA', 168, 0, 0, 0, 1284.38, -1391.81, 13.2808, 114.536, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653791091, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 87, 100, 89.6, 0, 1076, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 26884, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '53|17|0', 'Player', 0, 0, 0, NULL, '1653791211', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656420957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(9, 'Brendzz', NULL, NULL, 'Jordan_Robert', NULL, 1, 1, '10/07/2001', 'Los Santos', 15, 0, 0, 0, 1281.57, -1396.11, 13.092, 38.3744, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653791605, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 90.4, 100, 92.3, 0, 853, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 66779, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '10|14|0', 'Player', 0, 0, 0, NULL, '1653791677', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656421423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(10, 'Kenzo', NULL, NULL, 'Kenzo_Renzz', NULL, 1, 1, '02/02/2000', 'Las venturas', 294, 0, 0, 0, 371.239, -1805.16, 7.6737, 61.1361, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653792168, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 91.6, 100, 93.3, 0, 780, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 75777, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '56|12|0', 'Player', 0, 0, 0, NULL, '1653792247', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656421993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(11, 'Romsito', NULL, NULL, 'Isco_Toreto', NULL, 1, 1, '30/05/2007', 'Bogor', 14, 0, 0, 0, 1271.26, -1370.63, 13.4245, 80.9563, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653792650, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 98.2, 100, 98.5, 0, 111, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 47025, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '51|1|0', 'Player', 0, 0, 0, NULL, '1653792803', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656422549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(12, 'Ryden', NULL, NULL, 'Rayden_Lawrance', NULL, 1, 1, '8/9/2000', 'Los Santos', 14, 0, 0, 0, 1936, -1782.26, 13.3828, 214.511, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653793705, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 98.3, 100, 98.6, 0, 158, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 45281, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '37|2|0', 'Player', 0, 0, 0, NULL, '1653793781', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656423527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0),
(13, 'ReanZz', NULL, NULL, 'ReanZz_PiQuee', NULL, 1, 1, '5/1/2001', 'Los Santos', 5, 0, 0, 0, 1157.81, -2021.69, 458.724, 85.9068, 0, 0, -1, 0, 500, 1000, -1, 0, 0, 0, 1653794625, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, 0, 0, 95.7, 100, 96.7, 0, 393, 0, 0, 0, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 87929, 0, 32, 0, 0, 0, 'none', 1, NULL, 'Unknown Reason', 'none', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 0, 0, '32|6|0', 'Player', 0, 0, 0, NULL, '1653794680', NULL, 0, NULL, 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 'NULL|0.000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, 'NULL', 0, 0, 0, 0, 0, 0, 0, 0, 'Single', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, -1, -1, 1656424426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jack', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clothes_wardrobe`
--

CREATE TABLE `clothes_wardrobe` (
  `ID` int(11) NOT NULL,
  `houseid` int(11) NOT NULL,
  `clothesName` varchar(128) NOT NULL DEFAULT 'None',
  `clothesModel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `crateID` int(12) NOT NULL,
  `crateType` int(12) DEFAULT 0,
  `crateX` float DEFAULT 0,
  `crateY` float DEFAULT 0,
  `crateZ` float DEFAULT 0,
  `crateA` float DEFAULT 0,
  `crateInterior` int(12) DEFAULT 0,
  `crateWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `IDs` int(10) UNSIGNED NOT NULL,
  `weapon` int(11) UNSIGNED NOT NULL,
  `bodypart` int(11) UNSIGNED NOT NULL,
  `amount` float UNSIGNED DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `amountkevlar` float UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damages`
--

INSERT INTO `damages` (`IDs`, `weapon`, `bodypart`, `amount`, `time`, `ID`, `amountkevlar`) VALUES
(3, 0, 0, 2.64, 1653770228, 149629, 0),
(3, 25, 2, 33, 1653766107, 149630, 0),
(3, 25, 0, 3.26, 1653766102, 149631, 0),
(4, 0, 0, 62.02, 1653770130, 149632, 0),
(5, 0, 0, 1.32, 1653769999, 149633, 0),
(7, 0, 0, 1.32, 1653792277, 149634, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `ID` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Lock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `ID` int(11) NOT NULL,
  `Lock` int(11) NOT NULL DEFAULT 0,
  `Stock` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(32) NOT NULL DEFAULT 'None',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnRZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealervehicle`
--

CREATE TABLE `dealervehicle` (
  `ID` int(11) NOT NULL,
  `Dealer` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealervehicles`
--

CREATE TABLE `dealervehicles` (
  `ID` int(12) DEFAULT 0,
  `vehID` int(12) NOT NULL,
  `vehModel` int(12) DEFAULT 0,
  `vehPrice` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealer_vehicles`
--

CREATE TABLE `dealer_vehicles` (
  `dealer_id` int(11) NOT NULL,
  `model` mediumint(3) UNSIGNED NOT NULL,
  `price` int(7) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detectors`
--

CREATE TABLE `detectors` (
  `detectorID` int(12) NOT NULL,
  `detectorX` float DEFAULT 0,
  `detectorY` float DEFAULT 0,
  `detectorZ` float DEFAULT 0,
  `detectorAngle` float DEFAULT 0,
  `detectorInterior` int(12) DEFAULT 0,
  `detectorWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discord`
--

CREATE TABLE `discord` (
  `ID` int(12) NOT NULL,
  `DiscordID` varchar(64) NOT NULL,
  `Code` int(4) NOT NULL DEFAULT 0,
  `Active` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donation_characters`
--

CREATE TABLE `donation_characters` (
  `pid` int(10) UNSIGNED NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `type` tinyint(1) UNSIGNED DEFAULT NULL,
  `expired` int(10) UNSIGNED DEFAULT NULL,
  `changename` tinyint(2) UNSIGNED DEFAULT 0,
  `changephone` tinyint(2) UNSIGNED DEFAULT 0,
  `changemask` tinyint(2) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_characters`
--

INSERT INTO `donation_characters` (`pid`, `name`, `type`, `expired`, `changename`, `changephone`, `changemask`) VALUES
(1, 'Cyrill_Sylvestre', 4, 1677341319, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `donation_coins`
--

CREATE TABLE `donation_coins` (
  `id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `added_by` varchar(24) NOT NULL,
  `coin` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donation_coin_list`
--

CREATE TABLE `donation_coin_list` (
  `pid` int(10) UNSIGNED NOT NULL,
  `coins` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_coin_list`
--

INSERT INTO `donation_coin_list` (`pid`, `coins`) VALUES
(1, 2500),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(23872, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donation_token`
--

CREATE TABLE `donation_token` (
  `id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `added_by` varchar(24) NOT NULL,
  `expired` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donation_vehicles`
--

CREATE TABLE `donation_vehicles` (
  `model` smallint(4) UNSIGNED NOT NULL,
  `coin` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(12) DEFAULT 0,
  `itemWorld` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  `itemAmmo` int(12) DEFAULT 0,
  `itemWeapon` int(12) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL,
  `itemTime` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `droppedweapon`
--

CREATE TABLE `droppedweapon` (
  `ID` int(11) NOT NULL,
  `dropby` varchar(24) NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `vw` int(10) UNSIGNED NOT NULL,
  `weapon` int(10) UNSIGNED NOT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `durability` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `expired` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `efurniture`
--

CREATE TABLE `efurniture` (
  `id` int(11) NOT NULL,
  `Placed` int(11) NOT NULL,
  `Xpos` float NOT NULL,
  `Ypos` float NOT NULL,
  `Zpos` float NOT NULL,
  `Xrot` float NOT NULL,
  `Yrot` float NOT NULL,
  `Zrot` float NOT NULL,
  `HouseSQLID` int(11) NOT NULL,
  `Model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `entranceID` int(12) NOT NULL,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT 0,
  `entrancePosX` float DEFAULT 0,
  `entrancePosY` float DEFAULT 0,
  `entrancePosZ` float DEFAULT 0,
  `entrancePosA` float DEFAULT 0,
  `entranceIntX` float DEFAULT 0,
  `entranceIntY` float DEFAULT 0,
  `entranceIntZ` float DEFAULT 0,
  `entranceIntA` float DEFAULT 0,
  `entranceInterior` int(12) DEFAULT 0,
  `entranceExterior` int(12) DEFAULT 0,
  `entranceExteriorVW` int(12) DEFAULT 0,
  `entranceType` int(12) DEFAULT 0,
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT 0,
  `entranceCustom` int(4) DEFAULT 0,
  `entranceWorld` int(12) DEFAULT 0,
  `entranceVehAble` smallint(2) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`entranceID`, `entranceName`, `entranceIcon`, `entrancePosX`, `entrancePosY`, `entrancePosZ`, `entrancePosA`, `entranceIntX`, `entranceIntY`, `entranceIntZ`, `entranceIntA`, `entranceInterior`, `entranceExterior`, `entranceExteriorVW`, `entranceType`, `entrancePass`, `entranceLocked`, `entranceCustom`, `entranceWorld`, `entranceVehAble`) VALUES
(170, 'Los Santos Police Departement', 0, 1555.5, -1675.63, 16.1951, 270.076, -1080.39, -975.097, 129.305, 182.352, 15, 0, 0, 0, '', 0, 0, 7170, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL,
  `factionName` varchar(128) DEFAULT NULL,
  `factionColor` int(12) DEFAULT 0,
  `factionType` int(12) DEFAULT 0,
  `factionRanks` int(12) DEFAULT 0,
  `factionLockerX` float DEFAULT 0,
  `factionLockerY` float DEFAULT 0,
  `factionLockerZ` float DEFAULT 0,
  `factionLockerInt` int(12) DEFAULT 0,
  `factionLockerWorld` int(12) DEFAULT 0,
  `factionWeapon1` int(12) DEFAULT 0,
  `factionAmmo1` int(12) DEFAULT 0,
  `factionDurability1` int(12) UNSIGNED NOT NULL DEFAULT 1000,
  `factionWeapon2` int(12) DEFAULT 0,
  `factionAmmo2` int(12) DEFAULT 0,
  `factionDurability2` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon3` int(12) DEFAULT 0,
  `factionAmmo3` int(12) DEFAULT 0,
  `factionDurability3` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon4` int(12) DEFAULT 0,
  `factionAmmo4` int(12) DEFAULT 0,
  `factionDurability4` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon5` int(12) DEFAULT 0,
  `factionAmmo5` int(12) DEFAULT 0,
  `factionDurability5` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon6` int(12) DEFAULT 0,
  `factionAmmo6` int(12) DEFAULT 0,
  `factionDurability6` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon7` int(12) DEFAULT 0,
  `factionAmmo7` int(12) DEFAULT 0,
  `factionDurability7` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon8` int(12) DEFAULT 0,
  `factionAmmo8` int(12) DEFAULT 0,
  `factionDurability8` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon9` int(12) DEFAULT 0,
  `factionAmmo9` int(12) DEFAULT 0,
  `factionDurability9` int(12) UNSIGNED DEFAULT 1000,
  `factionWeapon10` int(12) DEFAULT 0,
  `factionAmmo10` int(12) DEFAULT 0,
  `factionDurability10` int(12) UNSIGNED DEFAULT 1000,
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionDiv1` varchar(32) DEFAULT NULL,
  `factionDiv2` varchar(32) DEFAULT NULL,
  `factionDiv3` varchar(32) DEFAULT NULL,
  `factionDiv4` varchar(32) DEFAULT NULL,
  `factionDiv5` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT 0,
  `factionSkin2` int(12) DEFAULT 0,
  `factionSkin3` int(12) DEFAULT 0,
  `factionSkin4` int(12) DEFAULT 0,
  `factionSkin5` int(12) DEFAULT 0,
  `factionSkin6` int(12) DEFAULT 0,
  `factionSkin7` int(12) DEFAULT 0,
  `factionSkin8` int(12) DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnInterior` int(11) NOT NULL DEFAULT 0,
  `SpawnVW` int(1) NOT NULL DEFAULT 0,
  `factionMoney` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionDeposit` varchar(24) NOT NULL DEFAULT 'None',
  `factionWithdraw` varchar(24) NOT NULL DEFAULT 'None',
  `factionDepositMoney` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `factionWithdrawMoney` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `factionMotd` varchar(225) DEFAULT NULL,
  `factionGunRank1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionGunRank10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `factionSalary` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `factionNumber` int(11) NOT NULL DEFAULT -1,
  `factionSerial1` int(11) NOT NULL DEFAULT 0,
  `factionSerial2` int(11) NOT NULL DEFAULT 0,
  `factionSerial3` int(11) NOT NULL DEFAULT 0,
  `factionSerial4` int(11) NOT NULL DEFAULT 0,
  `factionSerial5` int(11) NOT NULL DEFAULT 0,
  `factionSerial6` int(11) NOT NULL DEFAULT 0,
  `factionSerial7` int(11) NOT NULL DEFAULT 0,
  `factionSerial8` int(11) NOT NULL DEFAULT 0,
  `factionSerial9` int(11) NOT NULL DEFAULT 0,
  `factionSerial10` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`factionID`, `factionName`, `factionColor`, `factionType`, `factionRanks`, `factionLockerX`, `factionLockerY`, `factionLockerZ`, `factionLockerInt`, `factionLockerWorld`, `factionWeapon1`, `factionAmmo1`, `factionDurability1`, `factionWeapon2`, `factionAmmo2`, `factionDurability2`, `factionWeapon3`, `factionAmmo3`, `factionDurability3`, `factionWeapon4`, `factionAmmo4`, `factionDurability4`, `factionWeapon5`, `factionAmmo5`, `factionDurability5`, `factionWeapon6`, `factionAmmo6`, `factionDurability6`, `factionWeapon7`, `factionAmmo7`, `factionDurability7`, `factionWeapon8`, `factionAmmo8`, `factionDurability8`, `factionWeapon9`, `factionAmmo9`, `factionDurability9`, `factionWeapon10`, `factionAmmo10`, `factionDurability10`, `factionRank1`, `factionRank2`, `factionRank3`, `factionRank4`, `factionRank5`, `factionRank6`, `factionRank7`, `factionRank8`, `factionRank9`, `factionRank10`, `factionRank11`, `factionRank12`, `factionRank13`, `factionRank14`, `factionRank15`, `factionDiv1`, `factionDiv2`, `factionDiv3`, `factionDiv4`, `factionDiv5`, `factionSkin1`, `factionSkin2`, `factionSkin3`, `factionSkin4`, `factionSkin5`, `factionSkin6`, `factionSkin7`, `factionSkin8`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnInterior`, `SpawnVW`, `factionMoney`, `factionDeposit`, `factionWithdraw`, `factionDepositMoney`, `factionWithdrawMoney`, `factionMotd`, `factionGunRank1`, `factionGunRank2`, `factionGunRank3`, `factionGunRank4`, `factionGunRank5`, `factionGunRank6`, `factionGunRank7`, `factionGunRank8`, `factionGunRank9`, `factionGunRank10`, `factionSalary`, `factionNumber`, `factionSerial1`, `factionSerial2`, `factionSerial3`, `factionSerial4`, `factionSerial5`, `factionSerial6`, `factionSerial7`, `factionSerial8`, `factionSerial9`, `factionSerial10`) VALUES
(3, 'Los Santos Police Departement', -256, 1, 5, 1534.63, -1681.8, 13.5468, 0, 0, 24, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', NULL, NULL, NULL, NULL, NULL, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Los Santos Government', -256, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'medical', -256, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fire`
--

CREATE TABLE `fire` (
  `fireID` int(11) NOT NULL,
  `fireX` float NOT NULL DEFAULT 0,
  `fireY` float NOT NULL DEFAULT 0,
  `fireZ` float NOT NULL DEFAULT 0,
  `fireHealth` float NOT NULL DEFAULT 1000,
  `fireInt` int(11) NOT NULL DEFAULT 0,
  `fireWorld` int(11) NOT NULL DEFAULT 0,
  `fireModel` int(11) NOT NULL DEFAULT 18690
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fire`
--

INSERT INTO `fire` (`fireID`, `fireX`, `fireY`, `fireZ`, `fireHealth`, `fireInt`, `fireWorld`, `fireModel`) VALUES
(18, 0, 0, 0, 1000, 0, 0, 18690);

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT 0,
  `furnitureID` int(12) NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT 0,
  `furnitureX` float DEFAULT 0,
  `furnitureY` float DEFAULT 0,
  `furnitureZ` float DEFAULT 0,
  `furnitureRX` float DEFAULT 0,
  `furnitureRY` float DEFAULT 0,
  `furnitureRZ` float DEFAULT 0,
  `furnitureType` int(12) DEFAULT 0,
  `furnitureUnused` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `furnitureStatus` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furnobject`
--

CREATE TABLE `furnobject` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `stock` int(11) UNSIGNED NOT NULL,
  `storeid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `materials` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furnstore`
--

CREATE TABLE `furnstore` (
  `id` int(10) UNSIGNED NOT NULL,
  `ownername` varchar(24) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `i_x` float NOT NULL,
  `i_y` float NOT NULL,
  `i_z` float NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `vault` int(11) NOT NULL,
  `employe1` tinyint(4) NOT NULL,
  `employe2` tinyint(4) NOT NULL,
  `employe3` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE `garage` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Owner` varchar(24) NOT NULL,
  `OwnerID` int(10) UNSIGNED NOT NULL,
  `Location` varchar(64) NOT NULL,
  `Price` int(10) UNSIGNED NOT NULL,
  `Type` int(10) UNSIGNED NOT NULL,
  `Lock` int(10) UNSIGNED NOT NULL,
  `LocationInt` varchar(64) NOT NULL,
  `Inside` int(10) UNSIGNED NOT NULL,
  `HouseLink` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL,
  `garbageModel` int(12) DEFAULT 1236,
  `garbageCapacity` int(12) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageA` float DEFAULT 0,
  `garbageInterior` int(12) DEFAULT 0,
  `garbageWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 0,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) NOT NULL DEFAULT -1,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0,
  `gateMakeBy` varchar(24) NOT NULL DEFAULT 'none',
  `gateLastEdit` varchar(24) NOT NULL DEFAULT 'none',
  `gateWorkshop` int(10) DEFAULT -1,
  `gateTollPrice` int(4) NOT NULL DEFAULT 0,
  `gateFlag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `ID` int(12) DEFAULT 0,
  `locationID` int(12) NOT NULL,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT 0,
  `locationY` float DEFAULT 0,
  `locationZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `housekeys`
--

CREATE TABLE `housekeys` (
  `ID` int(11) NOT NULL,
  `playerID` int(10) NOT NULL DEFAULT -1,
  `houseID` int(10) NOT NULL DEFAULT -1,
  `houseOwnerID` int(10) NOT NULL DEFAULT -1,
  `houseKeyExists` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL,
  `houseOwner` int(12) DEFAULT 0,
  `housePrice` int(12) DEFAULT 0,
  `houseOwnerName` varchar(32) NOT NULL DEFAULT 'State',
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT 0,
  `housePosY` float DEFAULT 0,
  `housePosZ` float DEFAULT 0,
  `housePosA` float DEFAULT 0,
  `houseIntX` float DEFAULT 0,
  `houseIntY` float DEFAULT 0,
  `houseIntZ` float DEFAULT 0,
  `houseIntA` float DEFAULT 0,
  `houseInterior` int(12) DEFAULT 0,
  `houseExterior` int(12) DEFAULT 0,
  `houseExteriorVW` int(12) DEFAULT 0,
  `houseLocked` int(4) DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0,
  `houseMoney` int(12) DEFAULT 0,
  `houseLastVisited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `houseParkingSlot` int(5) NOT NULL DEFAULT 0,
  `houseParkingSlotUsed` int(5) NOT NULL DEFAULT 0,
  `houseSeal` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`houseID`, `houseOwner`, `housePrice`, `houseOwnerName`, `houseAddress`, `housePosX`, `housePosY`, `housePosZ`, `housePosA`, `houseIntX`, `houseIntY`, `houseIntZ`, `houseIntA`, `houseInterior`, `houseExterior`, `houseExteriorVW`, `houseLocked`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`, `houseMoney`, `houseLastVisited`, `houseParkingSlot`, `houseParkingSlotUsed`, `houseSeal`) VALUES
(941, 2, 1, 'Seinen_Kamamaru', '1', 1854.08, -1914.27, 15.2566, 344.406, 1882.12, -2434.84, 13.5845, 358.311, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1653765236, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house_queue`
--

CREATE TABLE `house_queue` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Location` varchar(24) NOT NULL,
  `Date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Username` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `impoundlots`
--

CREATE TABLE `impoundlots` (
  `impoundID` int(12) NOT NULL,
  `impoundLotX` float DEFAULT 0,
  `impoundLotY` float DEFAULT 0,
  `impoundLotZ` float DEFAULT 0,
  `impoundReleaseX` float DEFAULT 0,
  `impoundReleaseY` float DEFAULT 0,
  `impoundReleaseZ` float DEFAULT 0,
  `impoundReleaseInt` int(12) DEFAULT 0,
  `impoundReleaseWorld` int(12) DEFAULT 0,
  `impoundReleaseA` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT 0,
  `invID` int(12) NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT 0,
  `invQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(2, 1, 'GPS System', 18875, 1),
(3, 2, 'GPS System', 18875, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(12) NOT NULL,
  `jobPosX` float DEFAULT 0,
  `jobPosY` float DEFAULT 0,
  `jobPosZ` float DEFAULT 0,
  `jobPointX` float DEFAULT 0,
  `jobPointY` float DEFAULT 0,
  `jobPointZ` float DEFAULT 0,
  `jobDeliverX` float DEFAULT 0,
  `jobDeliverY` float DEFAULT 0,
  `jobDeliverZ` float DEFAULT 0,
  `jobInterior` int(12) DEFAULT 0,
  `jobWorld` int(12) DEFAULT 0,
  `jobType` int(12) DEFAULT 0,
  `jobPointInt` int(12) DEFAULT 0,
  `jobPointWorld` int(12) DEFAULT 0,
  `jobStock` int(10) UNSIGNED NOT NULL DEFAULT 1000,
  `jobPrison` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lumber`
--

CREATE TABLE `lumber` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Time` int(10) UNSIGNED NOT NULL,
  `Pos` varchar(64) NOT NULL,
  `Rot` varchar(64) NOT NULL,
  `Tebang` int(10) UNSIGNED NOT NULL,
  `Take` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `stream` float(15,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE `marketplace` (
  `id` int(11) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `price` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `product` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namechanges`
--

CREATE TABLE `namechanges` (
  `ID` int(12) NOT NULL,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objecttext`
--

CREATE TABLE `objecttext` (
  `ID` int(11) NOT NULL,
  `Text` varchar(128) NOT NULL DEFAULT 'Text',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `posRX` float NOT NULL DEFAULT 0,
  `posRY` float NOT NULL DEFAULT 0,
  `posRZ` float NOT NULL DEFAULT 0,
  `Vw` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `FontColor` int(11) NOT NULL DEFAULT -1,
  `BackColor` int(11) NOT NULL DEFAULT -1,
  `FontSize` int(11) NOT NULL DEFAULT 100,
  `FontNames` varchar(24) NOT NULL DEFAULT 'Arial',
  `Model` int(11) NOT NULL DEFAULT 18244
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plantID` int(12) NOT NULL,
  `plantType` int(12) DEFAULT 0,
  `plantDrugs` int(12) DEFAULT 0,
  `plantX` float DEFAULT 0,
  `plantY` float DEFAULT 0,
  `plantZ` float DEFAULT 0,
  `plantA` float DEFAULT 0,
  `plantInterior` int(12) DEFAULT 0,
  `plantWorld` int(12) DEFAULT 0,
  `plantTime` tinyint(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerammo`
--

CREATE TABLE `playerammo` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owned` int(10) UNSIGNED NOT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL,
  `weapon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerweapon`
--

CREATE TABLE `playerweapon` (
  `ID` int(10) UNSIGNED NOT NULL,
  `owned` int(10) UNSIGNED DEFAULT NULL,
  `durability` int(10) UNSIGNED DEFAULT 1000,
  `used` int(10) UNSIGNED DEFAULT NULL,
  `model` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_animation`
--

CREATE TABLE `player_animation` (
  `id` int(11) NOT NULL,
  `slot` int(11) NOT NULL DEFAULT 0,
  `playerid` int(11) NOT NULL DEFAULT 0,
  `animlib` varchar(32) NOT NULL DEFAULT 'RUNNINGMAN',
  `animname` varchar(32) NOT NULL DEFAULT 'DANCE_LOOP'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) DEFAULT NULL,
  `Model` int(11) DEFAULT NULL,
  `Pos1` float DEFAULT NULL,
  `Pos2` float DEFAULT NULL,
  `Pos3` float DEFAULT NULL,
  `Pos4` float DEFAULT NULL,
  `Color1` int(11) DEFAULT NULL,
  `Color2` int(11) DEFAULT NULL,
  `Paintjob` int(11) DEFAULT NULL,
  `Locked` int(11) DEFAULT NULL,
  `Impound` int(11) DEFAULT NULL,
  `ImpoundPrice` int(11) DEFAULT NULL,
  `Health` float DEFAULT NULL,
  `Weapon1` int(11) DEFAULT NULL,
  `Ammo1` int(11) UNSIGNED DEFAULT NULL,
  `Durability1` int(11) DEFAULT NULL,
  `Weapon2` int(11) DEFAULT NULL,
  `Ammo2` int(11) UNSIGNED DEFAULT NULL,
  `Durability2` int(11) DEFAULT NULL,
  `Weapon3` int(11) DEFAULT NULL,
  `Ammo3` int(11) DEFAULT NULL,
  `Durability3` int(11) DEFAULT NULL,
  `Weapon4` int(11) DEFAULT NULL,
  `Ammo4` int(11) DEFAULT NULL,
  `Durability4` int(11) DEFAULT NULL,
  `Weapon5` int(11) DEFAULT NULL,
  `Ammo5` int(11) DEFAULT NULL,
  `Durability5` int(11) DEFAULT NULL,
  `Mods1` int(11) DEFAULT NULL,
  `Mods2` int(11) DEFAULT NULL,
  `Mods3` int(11) DEFAULT NULL,
  `Mods4` int(11) DEFAULT NULL,
  `Mods5` int(11) DEFAULT NULL,
  `Mods6` int(11) DEFAULT NULL,
  `Mods7` int(11) DEFAULT NULL,
  `Mods8` int(11) DEFAULT NULL,
  `Mods9` int(11) DEFAULT NULL,
  `Mods10` int(11) DEFAULT NULL,
  `Mods11` int(11) DEFAULT NULL,
  `Mods12` int(11) DEFAULT NULL,
  `Mods13` int(11) DEFAULT NULL,
  `Mods14` int(11) DEFAULT NULL,
  `Damage1` int(11) DEFAULT NULL,
  `Damage2` int(11) DEFAULT NULL,
  `Damage3` int(11) DEFAULT NULL,
  `Damage4` int(11) DEFAULT NULL,
  `Plate` varchar(24) DEFAULT NULL,
  `Lumber` int(11) DEFAULT NULL,
  `Rental` int(10) UNSIGNED DEFAULT NULL,
  `RentalOwned` int(10) UNSIGNED DEFAULT NULL,
  `RentalTime` int(10) UNSIGNED DEFAULT NULL,
  `RentalPrice` int(10) UNSIGNED DEFAULT NULL,
  `Faction` int(10) UNSIGNED DEFAULT NULL,
  `Fuel` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `Component` int(10) UNSIGNED DEFAULT NULL,
  `Neon` int(10) UNSIGNED DEFAULT NULL,
  `NeonToggle` tinyint(2) UNSIGNED DEFAULT NULL,
  `Insurance` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `Sirine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `STNK` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ImpoundDelay` int(10) UNSIGNED DEFAULT NULL,
  `Garage` int(10) UNSIGNED DEFAULT NULL,
  `Int` int(10) UNSIGNED DEFAULT NULL,
  `Vw` int(10) UNSIGNED DEFAULT NULL,
  `MaxHealth` float NOT NULL DEFAULT 1000,
  `InsideInsurance` int(11) DEFAULT NULL,
  `InsuranceTime` int(11) DEFAULT NULL,
  `Job` smallint(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pumps`
--

CREATE TABLE `pumps` (
  `ID` int(12) DEFAULT 0,
  `pumpID` int(12) NOT NULL,
  `pumpPosX` float DEFAULT 0,
  `pumpPosY` float DEFAULT 0,
  `pumpPosZ` float DEFAULT 0,
  `pumpPosA` float DEFAULT 0,
  `pumpFuel` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `rules` text DEFAULT NULL,
  `must_shown` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `random`
--

CREATE TABLE `random` (
  `model` int(11) NOT NULL,
  `x` float(15,7) NOT NULL,
  `y` float(15,7) NOT NULL,
  `z` float(15,7) NOT NULL,
  `rx` float(15,7) NOT NULL,
  `ry` float(15,7) NOT NULL,
  `rz` float(15,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `SpawnX` float DEFAULT NULL,
  `SpawnY` float DEFAULT NULL,
  `SpawnZ` float DEFAULT NULL,
  `SpawnRZ` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rental_vehicles`
--

CREATE TABLE `rental_vehicles` (
  `rental_id` int(10) UNSIGNED NOT NULL,
  `model` smallint(3) UNSIGNED NOT NULL,
  `price` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `ID` int(10) UNSIGNED NOT NULL,
  `LinkID` int(11) UNSIGNED NOT NULL,
  `Money` int(11) UNSIGNED NOT NULL,
  `Issue` varchar(128) NOT NULL DEFAULT 'none',
  `Reason` varchar(128) NOT NULL DEFAULT 'none',
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`ID`, `LinkID`, `Money`, `Issue`, `Reason`, `Date`) VALUES
(645330, 3, 1, '100000000', 'none', 1653768021),
(645331, 3, 1, '10000000000', 'none', 1653768026);

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `ID` int(10) UNSIGNED NOT NULL,
  `g_Motd` varchar(225) NOT NULL,
  `g_Players` int(11) NOT NULL,
  `a_Motd` varchar(255) NOT NULL,
  `h_Motd` varchar(255) NOT NULL,
  `fish_Price` float NOT NULL DEFAULT 0.5,
  `config` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `tax` int(5) NOT NULL DEFAULT 5,
  `cow_price` int(5) NOT NULL DEFAULT 0,
  `deer_price` int(5) NOT NULL DEFAULT 0,
  `admin_online` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `lsd_price` int(5) NOT NULL DEFAULT 0,
  `ecs_price` int(5) NOT NULL DEFAULT 0,
  `server_timer` int(11) NOT NULL DEFAULT 0,
  `server_time` int(11) NOT NULL DEFAULT 0,
  `server_time_minute` int(4) NOT NULL DEFAULT 0,
  `server_time_interval` int(4) NOT NULL DEFAULT 30,
  `server_time_sync` int(4) NOT NULL DEFAULT 0,
  `wheat_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`ID`, `g_Motd`, `g_Players`, `a_Motd`, `h_Motd`, `fish_Price`, `config`, `tax`, `cow_price`, `deer_price`, `admin_online`, `lsd_price`, `ecs_price`, `server_timer`, `server_time`, `server_time_minute`, `server_time_interval`, `server_time_sync`, `wheat_price`) VALUES
(1, 'Halo! jika butuh bantuan silahkan gunakan /report !', 7, 'Dilarang abuse staff command!', '', 0.5, 0, 5, 272, 106, 'Last Check : Sunday, 29 May 2022 -- 13:16:42\n\n* (Scripter) Ervan (ID: 1), ON-DUTY: No *\n', 451, 766, 0, 12, 43, 30, 0, 79);

-- --------------------------------------------------------

--
-- Table structure for table `server_economies`
--

CREATE TABLE `server_economies` (
  `id` int(11) NOT NULL,
  `supply` int(11) NOT NULL DEFAULT 1000000,
  `reserve` int(11) NOT NULL DEFAULT 1000000,
  `inflation_rate` int(11) NOT NULL DEFAULT 0,
  `sales_tax_rate` int(11) NOT NULL DEFAULT 0,
  `max_faction_salary_weekly` int(11) NOT NULL DEFAULT 0,
  `component_price` int(11) NOT NULL DEFAULT 1,
  `material_price` int(11) NOT NULL DEFAULT 1,
  `treatment_price` int(11) NOT NULL DEFAULT 100,
  `rental_vehicle_overtime_forfeit` int(11) NOT NULL DEFAULT 100,
  `rental_vehicle_destroyed_forfeit` int(11) NOT NULL DEFAULT 100,
  `rental_vehicle_damaged_forfeit` int(11) NOT NULL DEFAULT 100,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_economies`
--

INSERT INTO `server_economies` (`id`, `supply`, `reserve`, `inflation_rate`, `sales_tax_rate`, `max_faction_salary_weekly`, `component_price`, `material_price`, `treatment_price`, `rental_vehicle_overtime_forfeit`, `rental_vehicle_destroyed_forfeit`, `rental_vehicle_damaged_forfeit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1000000, 1111178, 0, 0, 10000, 1, 10, 100, 100, 100, 1, 1645792522, 1653768848, 0);

--
-- Triggers `server_economies`
--
DELIMITER $$
CREATE TRIGGER `server_economy_before_insert` BEFORE INSERT ON `server_economies` FOR EACH ROW BEGIN

	SET NEW.`created_at` = UNIX_TIMESTAMP(NOW());

	SET NEW.`updated_at` = UNIX_TIMESTAMP(NOW());

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `server_economy_update_timestamp` BEFORE UPDATE ON `server_economies` FOR EACH ROW BEGIN

	SET NEW.`updated_at` = UNIX_TIMESTAMP(NOW());

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `server_vehicles`
--

CREATE TABLE `server_vehicles` (
  `id` int(11) NOT NULL,
  `model` smallint(5) UNSIGNED DEFAULT NULL,
  `extraid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `state` tinyint(1) DEFAULT 0,
  `renttime` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `interior` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `world` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `color1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `color2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `paintjob` tinyint(1) UNSIGNED DEFAULT 3,
  `plate` varchar(32) NOT NULL DEFAULT 'NONE',
  `health` float NOT NULL DEFAULT 1000,
  `fuel` float NOT NULL DEFAULT 100,
  `posX` float DEFAULT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `posRZ` float DEFAULT NULL,
  `damage1` int(11) DEFAULT NULL,
  `damage2` int(11) DEFAULT NULL,
  `damage3` int(11) DEFAULT NULL,
  `damage4` int(11) DEFAULT NULL,
  `insurance` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `insurancetime` int(10) UNSIGNED DEFAULT NULL,
  `impoundprice` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `impoundtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lumber` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `siren` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `engineup` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `bodyup` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `gasup` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `bodyrepair` float UNSIGNED NOT NULL DEFAULT 1000,
  `neoncolor` int(5) NOT NULL DEFAULT 0,
  `togneon` int(2) NOT NULL DEFAULT 0,
  `vehwoods` int(5) NOT NULL DEFAULT 0,
  `vehcomponent` int(5) NOT NULL DEFAULT 0,
  `turbo` int(5) NOT NULL DEFAULT 0,
  `parking` int(3) NOT NULL DEFAULT 0,
  `house_parking` int(15) NOT NULL DEFAULT -1,
  `doorstatus` int(2) NOT NULL DEFAULT 1,
  `enginestatus` int(2) NOT NULL DEFAULT 0,
  `vehlocktire` int(5) NOT NULL DEFAULT 0,
  `vehlocktireposx` float NOT NULL DEFAULT 0,
  `vehlocktireposy` float NOT NULL DEFAULT 0,
  `vehlocktireposz` float NOT NULL DEFAULT 0,
  `vehlocktireposrz` float NOT NULL DEFAULT 0,
  `current_mileage` float(13,4) DEFAULT 0.0000,
  `durability_mileage` float(13,4) DEFAULT 100.0000,
  `accumulated_mileage` float(13,4) DEFAULT 0.0000,
  `vehhandbrake` int(10) NOT NULL DEFAULT 0,
  `vehhandbrakeposx` float NOT NULL DEFAULT 0,
  `vehhandbrakeposy` float NOT NULL DEFAULT 0,
  `vehhandbrakeposz` float NOT NULL DEFAULT 0,
  `vehhandbrakeposrz` float NOT NULL DEFAULT 0,
  `apartment_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sidejob_boxville_configs`
--

CREATE TABLE `sidejob_boxville_configs` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `base_salary` int(11) NOT NULL DEFAULT 100,
  `bonus_chance` float(6,2) NOT NULL DEFAULT 100.00,
  `bonus_minimum` int(11) NOT NULL DEFAULT 100,
  `bonus_maximum` int(11) NOT NULL DEFAULT 200,
  `exit_delay` int(11) NOT NULL DEFAULT 300,
  `fail_delay` int(11) NOT NULL DEFAULT 600,
  `success_delay` int(11) NOT NULL DEFAULT 1800,
  `earn_per_house` int(11) NOT NULL DEFAULT 10,
  `max_houses_delivered` int(11) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidejob_boxville_configs`
--

INSERT INTO `sidejob_boxville_configs` (`id`, `enabled`, `base_salary`, `bonus_chance`, `bonus_minimum`, `bonus_maximum`, `exit_delay`, `fail_delay`, `success_delay`, `earn_per_house`, `max_houses_delivered`, `created_at`, `updated_at`) VALUES
(2, 1, 500, 100.00, 100, 200, 300, 600, 1200, 10, 20, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sidejob_bus_driver_configs`
--

CREATE TABLE `sidejob_bus_driver_configs` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `base_salary` int(11) NOT NULL DEFAULT 100,
  `bonus_chance` float(6,2) NOT NULL DEFAULT 100.00,
  `bonus_minimum` int(11) NOT NULL DEFAULT 100,
  `bonus_maximum` int(11) NOT NULL DEFAULT 200,
  `exit_delay` int(11) NOT NULL DEFAULT 300,
  `fail_delay` int(11) NOT NULL DEFAULT 600,
  `success_delay` int(11) NOT NULL DEFAULT 1800,
  `minimum_health` float(8,2) NOT NULL DEFAULT 0.00,
  `max_speed` float(8,2) NOT NULL DEFAULT 100.00,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidejob_bus_driver_configs`
--

INSERT INTO `sidejob_bus_driver_configs` (`id`, `enabled`, `base_salary`, `bonus_chance`, `bonus_minimum`, `bonus_maximum`, `exit_delay`, `fail_delay`, `success_delay`, `minimum_health`, `max_speed`, `created_at`, `updated_at`) VALUES
(2, 1, 500, 100.00, 100, 200, 300, 600, 1200, 600.00, 80.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sidejob_money_transporter_configs`
--

CREATE TABLE `sidejob_money_transporter_configs` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `base_salary` int(11) NOT NULL DEFAULT 100,
  `bonus_chance` float(6,2) NOT NULL DEFAULT 100.00,
  `bonus_minimum` int(11) NOT NULL DEFAULT 100,
  `bonus_maximum` int(11) NOT NULL DEFAULT 200,
  `exit_delay` int(11) NOT NULL DEFAULT 300,
  `fail_delay` int(11) NOT NULL DEFAULT 600,
  `success_delay` int(11) NOT NULL DEFAULT 1800,
  `max_atm_cash` int(11) NOT NULL DEFAULT 10,
  `max_van_cash` int(11) NOT NULL DEFAULT 10,
  `deposit_cash_rate` float(9,3) NOT NULL DEFAULT 2.000,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidejob_money_transporter_configs`
--

INSERT INTO `sidejob_money_transporter_configs` (`id`, `enabled`, `base_salary`, `bonus_chance`, `bonus_minimum`, `bonus_maximum`, `exit_delay`, `fail_delay`, `success_delay`, `max_atm_cash`, `max_van_cash`, `deposit_cash_rate`, `created_at`, `updated_at`) VALUES
(2, 1, 500, 100.00, 100, 200, 300, 600, 1200, 25000, 50000, 0.000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sidejob_sweeper_configs`
--

CREATE TABLE `sidejob_sweeper_configs` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `base_salary` int(11) NOT NULL DEFAULT 100,
  `bonus_chance` float(6,2) NOT NULL DEFAULT 100.00,
  `bonus_minimum` int(11) NOT NULL DEFAULT 100,
  `bonus_maximum` int(11) NOT NULL DEFAULT 200,
  `exit_delay` int(11) NOT NULL DEFAULT 300,
  `fail_delay` int(11) NOT NULL DEFAULT 600,
  `success_delay` int(11) NOT NULL DEFAULT 1800,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidejob_sweeper_configs`
--

INSERT INTO `sidejob_sweeper_configs` (`id`, `enabled`, `base_salary`, `bonus_chance`, `bonus_minimum`, `bonus_maximum`, `exit_delay`, `fail_delay`, `success_delay`, `created_at`, `updated_at`) VALUES
(2, 1, 500, 100.00, 100, 200, 300, 600, 1200, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sidejob_trashmaster_configs`
--

CREATE TABLE `sidejob_trashmaster_configs` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `base_salary` int(11) NOT NULL DEFAULT 100,
  `bonus_chance` float(6,2) NOT NULL DEFAULT 100.00,
  `bonus_minimum` int(11) NOT NULL DEFAULT 100,
  `bonus_maximum` int(11) NOT NULL DEFAULT 200,
  `exit_delay` int(11) NOT NULL DEFAULT 300,
  `fail_delay` int(11) NOT NULL DEFAULT 600,
  `success_delay` int(11) NOT NULL DEFAULT 1800,
  `earn_per_trash` int(11) NOT NULL DEFAULT 10,
  `max_trashes` int(11) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidejob_trashmaster_configs`
--

INSERT INTO `sidejob_trashmaster_configs` (`id`, `enabled`, `base_salary`, `bonus_chance`, `bonus_minimum`, `bonus_maximum`, `exit_delay`, `fail_delay`, `success_delay`, `earn_per_trash`, `max_trashes`, `created_at`, `updated_at`) VALUES
(2, 1, 500, 100.00, 100, 200, 300, 600, 1200, 5, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submitted_quizes`
--

CREATE TABLE `submitted_quizes` (
  `id` int(11) NOT NULL,
  `session_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `status` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'draft',
  `account` int(11) NOT NULL,
  `reviewer` int(11) DEFAULT NULL,
  `reason` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submitted_quiz_questions`
--

CREATE TABLE `submitted_quiz_questions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `question` text CHARACTER SET utf8mb4 NOT NULL,
  `answer` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tagId` int(11) NOT NULL,
  `tagText` varchar(65) NOT NULL,
  `tagFont` varchar(24) NOT NULL,
  `tagCreated` varchar(24) NOT NULL,
  `tagColor` int(10) UNSIGNED NOT NULL,
  `tagFontsize` int(10) UNSIGNED NOT NULL,
  `tagBold` int(10) UNSIGNED NOT NULL,
  `tagOwner` int(10) UNSIGNED NOT NULL,
  `tagPosx` float NOT NULL,
  `tagPosy` float NOT NULL,
  `tagPosz` float NOT NULL,
  `tagRotx` float NOT NULL,
  `tagRoty` float NOT NULL,
  `tagRotz` float NOT NULL,
  `tagExpired` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT 0,
  `ticketID` int(12) NOT NULL,
  `ticketFee` int(12) DEFAULT 0,
  `ticketIssuer` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `underground`
--

CREATE TABLE `underground` (
  `id` int(11) NOT NULL,
  `enterX` float NOT NULL,
  `enterY` float NOT NULL,
  `enterZ` float NOT NULL,
  `exitX` float NOT NULL,
  `exitY` float NOT NULL,
  `exitZ` float NOT NULL,
  `exitRZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `underground`
--

INSERT INTO `underground` (`id`, `enterX`, `enterY`, `enterZ`, `exitX`, `exitY`, `exitZ`, `exitRZ`) VALUES
(3, 1598.21, -2269.26, 13.5276, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehiclekeys`
--

CREATE TABLE `vehiclekeys` (
  `ID` int(10) NOT NULL,
  `playerID` int(50) NOT NULL DEFAULT -1,
  `vehicleID` int(50) NOT NULL DEFAULT -1,
  `vehicleModel` int(11) NOT NULL DEFAULT 0,
  `vehicleKeyExists` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_cargo`
--

CREATE TABLE `vehicle_cargo` (
  `id` int(11) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `product` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_components`
--

CREATE TABLE `vehicle_components` (
  `componentid` smallint(4) UNSIGNED NOT NULL,
  `part` enum('Exhausts','Front Bullbar','Front Bumper','Hood','Lamps','Misc','Rear Bullbar','Rear Bumper','Roof','Side Skirts','Spoilers','Vents','Wheels','Hydraulics') DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `cars` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_mod`
--

CREATE TABLE `vehicle_mod` (
  `vehicleid` int(10) UNSIGNED NOT NULL,
  `mod0` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod1` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod2` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod3` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod4` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod5` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod6` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod7` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod8` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod9` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod10` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod11` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod12` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod13` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod14` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod15` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mod16` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model_parts`
--

CREATE TABLE `vehicle_model_parts` (
  `modelid` smallint(3) UNSIGNED NOT NULL,
  `parts` bit(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_object`
--

CREATE TABLE `vehicle_object` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` int(10) UNSIGNED DEFAULT NULL,
  `vehicle` int(10) UNSIGNED DEFAULT NULL,
  `color` int(24) DEFAULT NULL,
  `type` tinyint(2) UNSIGNED DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `text` varchar(32) DEFAULT 'Text',
  `font` varchar(24) DEFAULT NULL,
  `fontcolor` int(10) UNSIGNED DEFAULT NULL,
  `fontsize` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_object`
--

INSERT INTO `vehicle_object` (`id`, `model`, `vehicle`, `color`, `type`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `text`, `font`, `fontcolor`, `fontsize`) VALUES
(50, 1001, 4, 0, 1, 0.024165, -2.08227, 0.367608, 0, 0, -357.696, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vending`
--

CREATE TABLE `vending` (
  `vendID` int(11) NOT NULL,
  `vendInterior` int(11) NOT NULL DEFAULT 0,
  `vendWorld` int(11) NOT NULL DEFAULT 0,
  `vendName` varchar(255) NOT NULL DEFAULT 'None',
  `vendOwner` int(11) NOT NULL DEFAULT -1,
  `vendOwnerName` varchar(255) NOT NULL DEFAULT 'None',
  `vendX` float NOT NULL DEFAULT 0,
  `vendY` float NOT NULL DEFAULT 0,
  `vendZ` float NOT NULL DEFAULT 0,
  `vendA` float NOT NULL DEFAULT 0,
  `vendPrice` int(11) NOT NULL DEFAULT 999999,
  `vendType` int(11) NOT NULL DEFAULT 1,
  `vendStockPrice` int(11) NOT NULL DEFAULT 5,
  `vendStock` int(11) NOT NULL DEFAULT 0,
  `vendVault` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorType` int(12) DEFAULT 0,
  `vendorX` float DEFAULT 0,
  `vendorY` float DEFAULT 0,
  `vendorZ` float DEFAULT 0,
  `vendorA` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wanrslog`
--

CREATE TABLE `wanrslog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `warnBy` varchar(24) NOT NULL,
  `warnReason` varchar(255) NOT NULL,
  `warnDate` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warrants`
--

CREATE TABLE `warrants` (
  `ID` int(12) NOT NULL,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `Arrest` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `WeaponID` int(11) DEFAULT NULL,
  `Ammo` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Category` int(11) DEFAULT NULL,
  `Authority` int(10) UNSIGNED DEFAULT NULL,
  `Enable` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Day` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `ID` int(10) NOT NULL,
  `charID` int(12) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `WeaponID` int(4) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Bone` int(4) NOT NULL DEFAULT 0,
  `Hidden` int(4) NOT NULL DEFAULT 0,
  `WepExists` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_apartment`
--

CREATE TABLE `weapon_apartment` (
  `weaponID` int(11) NOT NULL,
  `apartmentRoomID` int(11) NOT NULL DEFAULT -1,
  `Weapon` int(11) NOT NULL DEFAULT 0,
  `WeaponAmmo` int(11) NOT NULL DEFAULT 0,
  `WeaponDurability` int(11) NOT NULL DEFAULT 0,
  `WeaponSlot` int(11) NOT NULL DEFAULT 0,
  `WeaponSerial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_factions`
--

CREATE TABLE `weapon_factions` (
  `userid` int(12) UNSIGNED NOT NULL,
  `slot` int(3) UNSIGNED NOT NULL,
  `weaponid` tinyint(3) UNSIGNED NOT NULL,
  `ammo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_houses`
--

CREATE TABLE `weapon_houses` (
  `id` int(11) UNSIGNED NOT NULL,
  `houseid` int(11) UNSIGNED NOT NULL,
  `weaponid` tinyint(3) UNSIGNED NOT NULL,
  `ammo` int(11) UNSIGNED NOT NULL,
  `durability` int(11) UNSIGNED NOT NULL,
  `slot` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_players`
--

CREATE TABLE `weapon_players` (
  `userid` int(12) UNSIGNED NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL,
  `weaponid` tinyint(3) UNSIGNED NOT NULL,
  `ammo` int(10) UNSIGNED NOT NULL,
  `durability` int(10) UNSIGNED NOT NULL,
  `created` int(12) UNSIGNED NOT NULL,
  `serial` varchar(64) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapon_players`
--

INSERT INTO `weapon_players` (`userid`, `slot`, `weaponid`, `ammo`, `durability`, `created`, `serial`) VALUES
(2, 3, 25, 982, 982, 1653766090, '0');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_vehicles`
--

CREATE TABLE `weapon_vehicles` (
  `id` int(11) NOT NULL,
  `vehicleid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `weaponid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ammo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `durability` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapon_vehicles`
--

INSERT INTO `weapon_vehicles` (`id`, `vehicleid`, `weaponid`, `ammo`, `durability`, `serial`) VALUES
(273, 3, 30, 24, 424, 85331);

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `ID` int(5) NOT NULL,
  `pID` int(10) NOT NULL,
  `whitelisted` int(5) NOT NULL DEFAULT 0,
  `whitelistdate` varchar(64) NOT NULL,
  `whitelistby` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'None',
  `whitelistreason` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Price` int(10) UNSIGNED NOT NULL,
  `Vault` int(10) UNSIGNED NOT NULL,
  `Component` int(10) UNSIGNED NOT NULL,
  `Toggle` int(10) UNSIGNED NOT NULL,
  `Owner` int(10) UNSIGNED NOT NULL,
  `Name` varchar(32) NOT NULL DEFAULT 'Nothing',
  `Text` varchar(128) NOT NULL DEFAULT 'This workshop is for {FF0000}sale',
  `Pos` varchar(72) NOT NULL,
  `BoardPos` varchar(72) NOT NULL,
  `Seal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_employe`
--

CREATE TABLE `workshop_employe` (
  `ID` int(11) NOT NULL,
  `Workshop` int(10) UNSIGNED NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesories_wardrobe`
--
ALTER TABLE `accesories_wardrobe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actorID`);

--
-- Indexes for table `admin_activities`
--
ALTER TABLE `admin_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_activities_issuer_FK` (`issuer`),
  ADD KEY `admin_activities_receiver_FK` (`receiver`);

--
-- Indexes for table `admin_duty_times`
--
ALTER TABLE `admin_duty_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_duty_times_accounts_FK` (`account`);

--
-- Indexes for table `aksesoris`
--
ALTER TABLE `aksesoris`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apartmentID`);

--
-- Indexes for table `apartment_room`
--
ALTER TABLE `apartment_room`
  ADD PRIMARY KEY (`apartmentRoomID`);

--
-- Indexes for table `apartment_storage`
--
ALTER TABLE `apartment_storage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`arrestID`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- Indexes for table `backpackitems`
--
ALTER TABLE `backpackitems`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`backpackID`);

--
-- Indexes for table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`bbID`);

--
-- Indexes for table `bizwarn`
--
ALTER TABLE `bizwarn`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bizID` (`bizID`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`bizID`);

--
-- Indexes for table `business_employe`
--
ALTER TABLE `business_employe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `clothes_wardrobe`
--
ALTER TABLE `clothes_wardrobe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`crateID`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealervehicle`
--
ALTER TABLE `dealervehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  ADD PRIMARY KEY (`vehID`);

--
-- Indexes for table `dealer_vehicles`
--
ALTER TABLE `dealer_vehicles`
  ADD PRIMARY KEY (`dealer_id`,`model`);

--
-- Indexes for table `detectors`
--
ALTER TABLE `detectors`
  ADD PRIMARY KEY (`detectorID`);

--
-- Indexes for table `discord`
--
ALTER TABLE `discord`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `donation_characters`
--
ALTER TABLE `donation_characters`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `donation_coins`
--
ALTER TABLE `donation_coins`
  ADD PRIMARY KEY (`id`,`code`);

--
-- Indexes for table `donation_coin_list`
--
ALTER TABLE `donation_coin_list`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `donation_token`
--
ALTER TABLE `donation_token`
  ADD PRIMARY KEY (`id`,`code`);

--
-- Indexes for table `donation_vehicles`
--
ALTER TABLE `donation_vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `droppedweapon`
--
ALTER TABLE `droppedweapon`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `efurniture`
--
ALTER TABLE `efurniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`entranceID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexes for table `fire`
--
ALTER TABLE `fire`
  ADD PRIMARY KEY (`fireID`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Indexes for table `furnobject`
--
ALTER TABLE `furnobject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnstore`
--
ALTER TABLE `furnstore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Indexes for table `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Indexes for table `housekeys`
--
ALTER TABLE `housekeys`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `houseID` (`houseID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Indexes for table `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD PRIMARY KEY (`impoundID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `lumber`
--
ALTER TABLE `lumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objecttext`
--
ALTER TABLE `objecttext`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- Indexes for table `playerammo`
--
ALTER TABLE `playerammo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `playerweapon`
--
ALTER TABLE `playerweapon`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `player_animation`
--
ALTER TABLE `player_animation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rental_vehicles`
--
ALTER TABLE `rental_vehicles`
  ADD PRIMARY KEY (`rental_id`,`model`),
  ADD UNIQUE KEY `rental_id` (`rental_id`,`model`),
  ADD UNIQUE KEY `rental_id_2` (`rental_id`,`model`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `server_economies`
--
ALTER TABLE `server_economies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_vehicles`
--
ALTER TABLE `server_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidejob_boxville_configs`
--
ALTER TABLE `sidejob_boxville_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidejob_bus_driver_configs`
--
ALTER TABLE `sidejob_bus_driver_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidejob_money_transporter_configs`
--
ALTER TABLE `sidejob_money_transporter_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidejob_sweeper_configs`
--
ALTER TABLE `sidejob_sweeper_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidejob_trashmaster_configs`
--
ALTER TABLE `sidejob_trashmaster_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `submitted_quizes`
--
ALTER TABLE `submitted_quizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_id_2` (`session_id`),
  ADD KEY `reviewer` (`reviewer`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `account` (`account`,`session_id`);

--
-- Indexes for table `submitted_quiz_questions`
--
ALTER TABLE `submitted_quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`session_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagId`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `underground`
--
ALTER TABLE `underground`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehiclekeys`
--
ALTER TABLE `vehiclekeys`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `vehicle_cargo`
--
ALTER TABLE `vehicle_cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_components`
--
ALTER TABLE `vehicle_components`
  ADD PRIMARY KEY (`componentid`);

--
-- Indexes for table `vehicle_mod`
--
ALTER TABLE `vehicle_mod`
  ADD PRIMARY KEY (`vehicleid`),
  ADD UNIQUE KEY `vehicleid` (`vehicleid`);

--
-- Indexes for table `vehicle_model_parts`
--
ALTER TABLE `vehicle_model_parts`
  ADD PRIMARY KEY (`modelid`);

--
-- Indexes for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vending`
--
ALTER TABLE `vending`
  ADD PRIMARY KEY (`vendID`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weapon_apartment`
--
ALTER TABLE `weapon_apartment`
  ADD PRIMARY KEY (`weaponID`);

--
-- Indexes for table `weapon_factions`
--
ALTER TABLE `weapon_factions`
  ADD PRIMARY KEY (`userid`,`slot`);

--
-- Indexes for table `weapon_houses`
--
ALTER TABLE `weapon_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapon_players`
--
ALTER TABLE `weapon_players`
  ADD PRIMARY KEY (`userid`,`weaponid`);

--
-- Indexes for table `weapon_vehicles`
--
ALTER TABLE `weapon_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `pID_2` (`pID`),
  ADD KEY `pID` (`pID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workshop_employe`
--
ALTER TABLE `workshop_employe`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesories_wardrobe`
--
ALTER TABLE `accesories_wardrobe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23048;

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `admin_activities`
--
ALTER TABLE `admin_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26539;

--
-- AUTO_INCREMENT for table `admin_duty_times`
--
ALTER TABLE `admin_duty_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10945;

--
-- AUTO_INCREMENT for table `aksesoris`
--
ALTER TABLE `aksesoris`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `apartment_room`
--
ALTER TABLE `apartment_room`
  MODIFY `apartmentRoomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `apartment_storage`
--
ALTER TABLE `apartment_storage`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `arrestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `backpackitems`
--
ALTER TABLE `backpackitems`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backpacks`
--
ALTER TABLE `backpacks`
  MODIFY `backpackID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `bbID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bizwarn`
--
ALTER TABLE `bizwarn`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5125;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `bizID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `business_employe`
--
ALTER TABLE `business_employe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7946;

--
-- AUTO_INCREMENT for table `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clothes_wardrobe`
--
ALTER TABLE `clothes_wardrobe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `crateID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149635;

--
-- AUTO_INCREMENT for table `dealership`
--
ALTER TABLE `dealership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `dealervehicle`
--
ALTER TABLE `dealervehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  MODIFY `vehID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detectors`
--
ALTER TABLE `detectors`
  MODIFY `detectorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discord`
--
ALTER TABLE `discord`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation_coins`
--
ALTER TABLE `donation_coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `donation_token`
--
ALTER TABLE `donation_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `droppedweapon`
--
ALTER TABLE `droppedweapon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `efurniture`
--
ALTER TABLE `efurniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `entranceID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fire`
--
ALTER TABLE `fire`
  MODIFY `fireID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18982;

--
-- AUTO_INCREMENT for table `furnobject`
--
ALTER TABLE `furnobject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furnstore`
--
ALTER TABLE `furnstore`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garage`
--
ALTER TABLE `garage`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `locationID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6991;

--
-- AUTO_INCREMENT for table `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `housekeys`
--
ALTER TABLE `housekeys`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;

--
-- AUTO_INCREMENT for table `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19710;

--
-- AUTO_INCREMENT for table `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `impoundID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lumber`
--
ALTER TABLE `lumber`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace`
--
ALTER TABLE `marketplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2295;

--
-- AUTO_INCREMENT for table `objecttext`
--
ALTER TABLE `objecttext`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `playerammo`
--
ALTER TABLE `playerammo`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerweapon`
--
ALTER TABLE `playerweapon`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_animation`
--
ALTER TABLE `player_animation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232;

--
-- AUTO_INCREMENT for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8331;

--
-- AUTO_INCREMENT for table `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645332;

--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_economies`
--
ALTER TABLE `server_economies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `server_vehicles`
--
ALTER TABLE `server_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidejob_boxville_configs`
--
ALTER TABLE `sidejob_boxville_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sidejob_bus_driver_configs`
--
ALTER TABLE `sidejob_bus_driver_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sidejob_money_transporter_configs`
--
ALTER TABLE `sidejob_money_transporter_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sidejob_sweeper_configs`
--
ALTER TABLE `sidejob_sweeper_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sidejob_trashmaster_configs`
--
ALTER TABLE `sidejob_trashmaster_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `submitted_quizes`
--
ALTER TABLE `submitted_quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1975;

--
-- AUTO_INCREMENT for table `submitted_quiz_questions`
--
ALTER TABLE `submitted_quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9771;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `underground`
--
ALTER TABLE `underground`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehiclekeys`
--
ALTER TABLE `vehiclekeys`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `vehicle_cargo`
--
ALTER TABLE `vehicle_cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179054;

--
-- AUTO_INCREMENT for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `vending`
--
ALTER TABLE `vending`
  MODIFY `vendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warrants`
--
ALTER TABLE `warrants`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1716;

--
-- AUTO_INCREMENT for table `weapon_apartment`
--
ALTER TABLE `weapon_apartment`
  MODIFY `weaponID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weapon_houses`
--
ALTER TABLE `weapon_houses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `weapon_vehicles`
--
ALTER TABLE `weapon_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop_employe`
--
ALTER TABLE `workshop_employe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_duty_times`
--
ALTER TABLE `admin_duty_times`
  ADD CONSTRAINT `admin_duty_times_accounts_FK` FOREIGN KEY (`account`) REFERENCES `accounts` (`ID`);

--
-- Constraints for table `submitted_quizes`
--
ALTER TABLE `submitted_quizes`
  ADD CONSTRAINT `submitted_quizes_ibfk_1` FOREIGN KEY (`account`) REFERENCES `accounts` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `submitted_quizes_ibfk_2` FOREIGN KEY (`reviewer`) REFERENCES `accounts` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `submitted_quiz_questions`
--
ALTER TABLE `submitted_quiz_questions`
  ADD CONSTRAINT `submitted_quiz_questions_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `submitted_quizes` (`session_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;serverserver