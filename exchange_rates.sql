--
-- Database: `exchange_rates`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`) VALUES
(1, 'USD', 'US Dollar'),
(2, 'CAD', 'Canadian Dollar'),
(3, 'HKD', 'Hong Kong Dollar'),
(4, 'PHP', 'Philippine Peso'),
(5, 'HUF', 'Hungarian Forint'),
(6, 'AUD', 'Australian Dollar'),
(7, 'JPY', 'Japanese Yen'),
(8, 'CNY', 'Chinese Yuan'),
(9, 'MXN', 'Mexican Peso'),
(10, 'MYR', 'Malaysian Ringgit'),
(11, 'KRW', 'South Korean Won'),
(12, 'NZD', 'New Zealand Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `base_currency_id` int(11) DEFAULT NULL,
  `target_currency_id` int(11) DEFAULT NULL,
  `rate` decimal(18,6) NOT NULL,
  `effective_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `base_currency_id`, `target_currency_id`, `rate`, `effective_date`) VALUES
(1, 1, 2, 1.486100, '2025-02-10'),
(2, 1, 3, 1.011100, '2025-02-10'),
(3, 1, 4, 1.097300, '2025-02-10'),
(4, 1, 5, 0.953100, '2025-02-10'),
(5, 1, 6, 0.973500, '2025-02-10'),
(6, 1, 7, 50.840000, '2025-02-10'),
(7, 1, 8, 1.121200, '2025-02-10'),
(8, 1, 9, 0.581100, '2025-02-10'),
(9, 1, 10, 1.041900, '2025-02-10'),
(10, 1, 11, 966.240000, '2025-02-10'),
(11, 1, 12, 1.205400, '2025-02-10'),
(12, 1, 2, 1.133200, '2025-02-07'),
(13, 1, 3, 1.367300, '2025-02-07'),
(14, 1, 4, 0.936700, '2025-02-07'),
(15, 1, 5, 1.081700, '2025-02-07'),
(16, 1, 6, 1.098400, '2025-02-07'),
(17, 1, 7, 74.710000, '2025-02-07'),
(18, 1, 8, 0.940200, '2025-02-07'),
(19, 1, 9, 0.959800, '2025-02-07'),
(20, 1, 10, 1.478200, '2025-02-07'),
(21, 1, 11, 1011.830000, '2025-02-07'),
(22, 1, 12, 1.124400, '2025-02-07'),
(23, 1, 2, 1.086700, '2025-02-08'),
(24, 1, 3, 0.560100, '2025-02-08'),
(25, 1, 4, 1.040400, '2025-02-08'),
(26, 1, 5, 1.022000, '2025-02-08'),
(27, 1, 6, 1.488400, '2025-02-08'),
(28, 1, 7, 87.630000, '2025-02-08'),
(29, 1, 8, 1.416300, '2025-02-08'),
(30, 1, 9, 0.952500, '2025-02-08'),
(31, 1, 10, 1.013600, '2025-02-08'),
(32, 1, 11, 710.420000, '2025-02-08'),
(33, 1, 12, 1.011400, '2025-02-08'),
(34, 1, 2, 1.425500, '2025-02-09'),
(35, 1, 3, 0.593500, '2025-02-09'),
(36, 1, 4, 1.191100, '2025-02-09'),
(37, 1, 5, 0.675000, '2025-02-09'),
(38, 1, 6, 1.301500, '2025-02-09'),
(39, 1, 7, 98.260000, '2025-02-09'),
(40, 1, 8, 0.508500, '2025-02-09'),
(41, 1, 9, 1.094600, '2025-02-09'),
(42, 1, 10, 1.447400, '2025-02-09'),
(43, 1, 11, 1453.290000, '2025-02-09'),
(44, 1, 12, 1.424300, '2025-02-09'),
(45, 1, 2, 1.256800, '2025-02-11'),
(46, 1, 3, 0.784300, '2025-02-11'),
(47, 1, 4, 1.326500, '2025-02-11'),
(48, 1, 5, 1.145600, '2025-02-11'),
(49, 1, 6, 1.489200, '2025-02-11'),
(50, 1, 7, 105.620000, '2025-02-11'),
(51, 1, 8, 1.245600, '2025-02-11'),
(52, 1, 9, 0.798400, '2025-02-11'),
(53, 1, 10, 1.215400, '2025-02-11'),
(54, 1, 11, 1234.780000, '2025-02-11'),
(55, 1, 12, 1.368900, '2025-02-11'),
(56, 1, 2, 1.498700, '2025-02-12'),
(57, 1, 3, 0.658200, '2025-02-12'),
(58, 1, 4, 1.201400, '2025-02-12'),
(59, 1, 5, 0.978500, '2025-02-12'),
(60, 1, 6, 1.358900, '2025-02-12'),
(61, 1, 7, 110.780000, '2025-02-12'),
(62, 1, 8, 1.512300, '2025-02-12'),
(63, 1, 9, 0.903200, '2025-02-12'),
(64, 1, 10, 1.326800, '2025-02-12'),
(65, 1, 11, 1357.460000, '2025-02-12'),
(66, 1, 12, 1.498700, '2025-02-12');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
