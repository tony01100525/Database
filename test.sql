-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-01-06 08:40:27
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bus`
--

CREATE TABLE `bus` (
  `bid` varchar(10) NOT NULL,
  `driverid` varchar(10) NOT NULL,
  `sid1` varchar(10) NOT NULL,
  `sid2` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `bus`
--

INSERT INTO `bus` (`bid`, `driverid`, `sid1`, `sid2`) VALUES
('B1', 'W987452146', '1', '2'),
('B10', 'M789545222', '10', '1'),
('B2', 'T887452145', '2', '3'),
('B3', 'T988745632', '3', '4'),
('B4', 'P541225466', '4', '5'),
('B5', 'T632541569', '5', '6'),
('B6', 'R966325654', '6', '7'),
('B7', 'V965545863', '7', '8'),
('B8', 'K789541254', '8', '9'),
('B9', 'O887456201', '9', '10');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `id` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`lastname`, `firstname`, `gender`, `id`, `age`, `phone`) VALUES
('Lin', 'Tom', 'M', 'A454545427', 21, '0936363636'),
('Kuo', 'Peggy', 'F', 'A454545429', 33, '0914598756'),
('Wang', 'Carol', 'M', 'A454545458', 25, '0954777888'),
('Lin', 'Bob', 'M', 'A454545487', 20, '0988755441'),
('Lin', 'Una', 'F', 'A454545499', 9, NULL),
('Wang', 'Lily', 'F', 'A999666333', 30, '0955447854'),
('Wu', 'Kate', 'F', 'D223654125', 51, '0978945612'),
('Wu', 'Morty', 'M', 'D223654127', 16, '0956888777'),
('Lai', 'Tony', 'M', 'F123456789', 3, '0932156454'),
('Lin', 'Mary', 'F', 'F315678213', 36, '0936187444'),
('Yang', 'Rick', 'M', 'I778855412', 8, NULL),
('Tu', 'Catherine', 'F', 'L557845612', 6, NULL),
('Yang', 'Jim', '4', 'P998877441', 39, '0958774411'),
('Lai', 'Yoyo', 'F', 'Q985632145', 14, '0978945618'),
('Lai', 'Rick', 'M', 'S785411254', 20, '0936187888'),
('Chiang', 'Kim', 'M', 'S896542447', 50, '0936555444'),
('Tu', 'Leo', 'M', 'S896542562', 8, '0967844112'),
('Tu', 'Gina', 'F', 'V654125874', 22, '0936557412'),
('Chiang', 'Jack', 'M', 'W448744521', 9, NULL),
('Kuo', 'Ian', 'M', 'W448744527', 30, '0978945617'),
('Bai', 'Kimi', 'F', 'Z333333333', 6, NULL),
('Bai', 'Palos', 'M', 'Z444555555', 20, '0922222222'),
('Bai', 'Tim', 'M', 'Z555555555', 12, '0989898989'),
('Bai', 'Candy', 'F', 'Z666666666', 34, '0966666666'),
('Bai', 'Will', 'M', 'Z789789789', 35, '0999999999');

-- --------------------------------------------------------

--
-- 資料表結構 `department`
--

CREATE TABLE `department` (
  `did` varchar(10) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `managerid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `department`
--

INSERT INTO `department` (`did`, `dname`, `managerid`) VALUES
('1', 'jungle', 'M123456789'),
('10', 'animal', 'U895633325'),
('2', 'ocean', 'M542154896'),
('3', 'sky', 'W888899996'),
('4', 'smallpark', 'R789654223'),
('5', 'beach', 'E788855541'),
('6', 'castle', 'M897452111'),
('7', 'magic', 'P877456332'),
('8', 'futureworld', 'B231145632'),
('9', 'jurassic', 'T897451222');

-- --------------------------------------------------------

--
-- 資料表結構 `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(10) NOT NULL,
  `Efirstname` varchar(20) NOT NULL,
  `Elastname` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `dnum` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `employee`
--

INSERT INTO `employee` (`eid`, `Efirstname`, `Elastname`, `salary`, `dnum`) VALUES
('B231145632', 'Emma', 'Liu', 40000, '8'),
('E788855541', 'Eason', 'Kuo', 35000, '5'),
('E998011254', 'Ian', 'Tu', 20000, '3'),
('M123456789', 'Tony', 'Wang', 35000, '1'),
('M542154896', 'Ray', 'Chou', 35000, '2'),
('M897452111', 'Ina', 'Lai', 35000, '6'),
('P877456332', 'Yapi', 'Chang', 35000, '7'),
('Q562214587', 'Peter', 'Lin', 30000, '2'),
('R789654223', 'Jay', 'Lin', 35000, '4'),
('T897451222', 'Tom', 'Chang', 35000, '9'),
('U895633325', 'Yagoo', 'Wang', 35000, '10'),
('W888899996', 'Nana', 'Tu', 35000, '3');

-- --------------------------------------------------------

--
-- 資料表結構 `facility`
--

CREATE TABLE `facility` (
  `fid` varchar(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `checkdate` date NOT NULL,
  `dno` varchar(10) NOT NULL,
  `maintenance` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `facility`
--

INSERT INTO `facility` (`fid`, `fname`, `checkdate`, `dno`, `maintenance`) VALUES
('A1', 'ferriswheel', '2021-12-01', '3', 'Y'),
('A10', 'Pirates', '2021-12-10', '5', 'N'),
('A11', 'coffeecup', '2022-01-05', '6', 'N'),
('A2', 'rollercoaster', '2021-12-02', '1', 'N'),
('A3', 'a small world', '2021-12-03', '4', 'N'),
('A4', 'Alice in Wonderland', '2021-12-04', '7', 'N'),
('A5', 'Sleeping Beauty Castle Walkthrough', '2021-12-05', '6', 'N'),
('A6', 'Canal Boats', '2021-12-06', '9', 'N'),
('A7', 'Carrousel', '2021-12-07', '10', 'N'),
('A8', 'Star Tours', '2021-12-08', '8', 'N'),
('A9', 'Finding Nemo Submarine Voyage', '2021-12-09', '2', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `play`
--

CREATE TABLE `play` (
  `customerid` varchar(10) NOT NULL,
  `employeeid` varchar(10) NOT NULL,
  `facilityid` varchar(10) NOT NULL,
  `playtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `play`
--

INSERT INTO `play` (`customerid`, `employeeid`, `facilityid`, `playtime`) VALUES
('I778855412', 'B231145632', 'A8', '12:16:24'),
('L554777111', 'B231145632', 'A8', '12:16:26'),
('P998877441', 'E788855541', 'A10', '12:18:26'),
('Q985632145', 'E998011254', 'A3', '09:18:26'),
('S785411254', 'M123456789', 'A2', '14:24:29'),
('S785411254', 'M542154896', 'A9', '20:47:20'),
('S785411254', 'T897451222', 'A6', '10:47:58'),
('S896542447', 'M123456789', 'A2', '16:24:29'),
('S896542562', 'M542154896', 'A9', '12:27:29'),
('V654125874', 'M897452111', 'A5', '14:26:52'),
('V654125874', 'T897451222', 'A6', '20:47:20'),
('W448744521', 'M897452111', 'A5', '14:22:52'),
('W448744521', 'P877456332', 'A4', '14:21:30'),
('W448744527', 'M897452111', 'A5', '14:22:20'),
('W448744527', 'P877456332', 'A4', '14:21:47'),
('Z333333333', 'U895633325', 'A7', '10:25:56'),
('Z444555555', 'Q562214587', 'A9', '10:37:20'),
('Z444555555', 'U895633325', 'A7', '10:25:40'),
('Z555555555', 'Q562214587', 'A9', '10:17:20'),
('Z555555555', 'U895633325', 'A7', '10:25:59'),
('Z666666666', 'U895633325', 'A7', '10:24:59'),
('Z789789789', 'U895633325', 'A7', '10:24:03');

-- --------------------------------------------------------

--
-- 資料表結構 `take`
--

CREATE TABLE `take` (
  `cid` varchar(10) NOT NULL,
  `busid` varchar(10) NOT NULL,
  `bustime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `take`
--

INSERT INTO `take` (`cid`, `busid`, `bustime`) VALUES
('A454545427', 'B1', '10:17:17'),
('A454545429', 'B10', '13:14:17'),
('A454545458', 'B2', '22:06:38'),
('A454545487', 'B3', '15:06:25'),
('A454545499', 'B4', '22:06:45'),
('A999666333', 'B4', '22:06:45'),
('D223654125', 'B5', '14:08:44'),
('D223654127', 'B5', '14:09:44'),
('F123456789', 'B4', '14:03:09'),
('F315678213', 'B6', '12:09:44');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bid`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`did`);

--
-- 資料表索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- 資料表索引 `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`fid`);

--
-- 資料表索引 `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`customerid`,`employeeid`,`facilityid`,`playtime`);

--
-- 資料表索引 `take`
--
ALTER TABLE `take`
  ADD PRIMARY KEY (`cid`,`busid`,`bustime`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
