SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `train_ticket_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_name` varchar(50) NOT NULL,
  `Emp_id` int(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Salary` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_name`, `Emp_id`, `Gender`, `Salary`) VALUES
('Kazi Aaraf', 2020101, 'Male', 10000),
('Mo Salah', 2020102, 'Male', 30000),
('Walter White', 2020103, 'Male', 20000),
('Skyler White', 2020104, 'Female', 15000),
('Arya Stark', 2020105, 'Female', 30000),
('Jashim Chowdhury', 2020106, 'Male', 30000),
('Gus Fring', 2020107, 'Male', 55000),
('Hamim Hamid', 2020108, 'Female', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `Trn_id` varchar(20) NOT NULL,
  `Source` text NOT NULL,
  `Destination` text NOT NULL,
  `Ticket_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Pas_name` varchar(30) NOT NULL,
  `Pas_id` int(20) NOT NULL,
  `Ticket_num` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Emp_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Pas_name`, `Pas_id`, `Ticket_num`, `Gender`, `Emp_id`) VALUES
('Jesse Pinkman', 201071111, '10711111', 'Male', '2020105'),
('Ahsan Nabee ', 201071112, '10711113', 'Male', '2020105'),
('Protiva Arafin', 201071113, '10711114', 'Female', '2020104'),
('Sahib Anwar', 201071114, '10711115', 'Male', '2020101'),
('Billy Butcher', 201071115, '10711116', 'Male', '2020104'),
('Rachel Green', 201071116, '10711117', 'Female', '2020102'),
('Joey Tribbiani', 201071117, '10711118', 'Male', '2020103'),
('Phoebe Buffay', 201071118, '10711119', 'Female', '2020103'),
('Kimiko Miyashiro', 201071119, '10711120', 'Female', '2020101'),
('Chandler Bing', 201071120, '10711121', 'Male', '2020105'),
('Arnab Kabir', 201071121, '10711122', 'Male', '2020107'),
('Isco Alarcon', 201071122, '10711123', 'Male', '2020103'),
('Sergio Ramos', 201071123, '10711124', 'Male', '2020108');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Stn_name` varchar(30) NOT NULL,
  `Station_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`Stn_name`, `Station_id`) VALUES
('Rajbari Sadar', 111),
('Pangsha', 112),
('Baliakandi', 113),
('Goalanda', 124),
('Kalukhali', 115),
('Vatiapara', 121);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_num` varchar(20) NOT NULL,
  `Source` text NOT NULL,
  `Destination` text NOT NULL,
  `Fare` int(20) NOT NULL,
  `Train_id` varchar(20) NOT NULL,
  `Seat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_num`, `Source`, `Destination`, `Fare`, `Train_id`, `Seat_id`) VALUES
('10711111', 'Rajbari Sadar', 'Vatiapara', 200, '01', 1),
('10711113', 'vatiapara', 'Baliakandi', 30, '02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `Dep_time` varchar(20) NOT NULL,
  `Arrival_time` int(20) NOT NULL,
  `Train_id` int(20) NOT NULL,
  `Stn_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Stn_id` int(20) NOT NULL,
  `Trn_name` varchar(30) NOT NULL,
  `Trn_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Pas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
