-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2020 lúc 08:22 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tindung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accountType` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idAccount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `phone`, `password`, `accountType`, `image`, `idAccount`, `created_at`, `updated_at`) VALUES
(10, '0123456789', '$2y$10$icJRulaq9sP5OmBpx2/lie7tt0.URbCz5zjeKC35mYc8KYx/kYlr.', 1, '', 6, '2020-10-25 23:55:03', '2020-10-25 23:55:03'),
(11, '0987654321', '$2y$10$DMAx5Seb75jcSxHdmuAEAOCk2GvXEC99su4J.mt8TBm9SfJsGshke', 1, '', 7, '2020-10-25 23:56:23', '2020-10-25 23:56:23'),
(12, '19001900', '$2y$10$ug6LDU4rHomaxTe0THa3tO73DCwNrODz5JwOeDv1gLqVc8MZyTgEW', 2, '', 4, '2020-10-25 23:58:40', '2020-10-25 23:58:40'),
(13, '19001009', '$2y$10$2Zw5g9FDMxfFdDgNH.CbjOoeElSFlco8Feta4X8NMa6VRoCqSyZeu', 2, '', 5, '2020-10-26 00:01:41', '2020-10-26 00:01:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accountant`
--

CREATE TABLE `accountant` (
  `id` int(11) NOT NULL,
  `nameManager` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nameStaff` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idStaff` int(11) NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idUniversity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accountant`
--

INSERT INTO `accountant` (`id`, `nameManager`, `nameStaff`, `idStaff`, `sex`, `password`, `phone`, `idUniversity`, `created_at`, `updated_at`) VALUES
(4, 'Hoàng Hải Long', 'Nguyễn Văn B', 1, 'Boy', '$2y$10$UiZb9RPoJiIi/eT.Emmqw.9U1MYtk4Zx6H8S9W72nSoExYj.y7OC.', '099999999', 6, '2020-10-26 00:08:08', '2020-10-26 00:08:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `effectiveYear` date DEFAULT NULL,
  `active` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `policy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TransactionInformation` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `moneyTransferMethod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sendMessage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `name`, `image`, `address`, `effectiveYear`, `active`, `policy`, `TransactionInformation`, `moneyTransferMethod`, `sendMessage`, `code`, `created_at`, `updated_at`) VALUES
(4, 'Agribank', '', '100 Nguyễn Chí Thanh, Hà Nội', NULL, '', '', '', '', '', 'KY156DETGWCIHJUQSM7P', '2020-10-25 23:58:40', '2020-10-25 23:58:40'),
(5, 'VNPT', 'uploads/bank/JD62VPWXYKLA9G4QERMZ/1603696388.jpg', '100 Sơn Tây, Hà Nội', NULL, '', '', '', '', '', 'JD62VPWXYKLA9G4QERMZ', '2020-10-26 00:01:41', '2020-10-26 00:13:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enterprise`
--

CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jobrecruitmentInformation` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `interestrate`
--

CREATE TABLE `interestrate` (
  `id` int(11) NOT NULL,
  `tenor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `interestrates` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loanrecords`
--

CREATE TABLE `loanrecords` (
  `id` int(11) NOT NULL,
  `idAccount` int(11) NOT NULL,
  `pay` float NOT NULL,
  `money` float NOT NULL,
  `interestRate` float NOT NULL,
  `effectiveDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expirationDate` timestamp NULL DEFAULT NULL,
  `idbankaccept` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loanrecords`
--

INSERT INTO `loanrecords` (`id`, `idAccount`, `pay`, `money`, `interestRate`, `effectiveDate`, `expirationDate`, `idbankaccept`, `created_at`, `updated_at`) VALUES
(3, 1, 6050000, 5000000, 20, '2020-10-26 00:12:54', '2021-10-26 00:12:54', 5, '2020-10-26 00:12:54', '2020-10-26 00:12:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loanrequest`
--

CREATE TABLE `loanrequest` (
  `id` int(11) NOT NULL,
  `accountNumber` int(11) NOT NULL,
  `money` float NOT NULL,
  `reasonforloaning` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `universityApproved` int(11) NOT NULL DEFAULT 0,
  `enterpriseApproved` int(11) NOT NULL DEFAULT 0,
  `pay` float NOT NULL,
  `iduniveraccept` int(11) NOT NULL,
  `idbankaccept` int(11) NOT NULL DEFAULT 0,
  `tenor` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT current_timestamp(),
  `interestRate` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loanrequest`
--

INSERT INTO `loanrequest` (`id`, `accountNumber`, `money`, `reasonforloaning`, `universityApproved`, `enterpriseApproved`, `pay`, `iduniveraccept`, `idbankaccept`, `tenor`, `interestRate`, `created_at`, `updated_at`) VALUES
(16, 1, 5000000, 'Vay tiền thuê nhà', 1, 1, 6050000, 6, 5, '12 tháng', 20, '2020-10-26 00:09:52', '2020-10-26 00:12:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `id_receiver` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `tradingcode` int(11) NOT NULL,
  `daytrading` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idAccount` int(11) NOT NULL,
  `money` float NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `transactionNumber` int(11) NOT NULL,
  `effectiveDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idAccount` int(11) NOT NULL,
  `money` float NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `requestjob`
--

CREATE TABLE `requestjob` (
  `id` int(11) NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jobApplication` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studentatm`
--

CREATE TABLE `studentatm` (
  `id` int(11) NOT NULL,
  `id_account` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_student` int(11) NOT NULL,
  `accountType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studentwork`
--

CREATE TABLE `studentwork` (
  `id` int(11) NOT NULL,
  `nameManager` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idStaff` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nameStaff` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idUniversity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `studentwork`
--

INSERT INTO `studentwork` (`id`, `nameManager`, `sex`, `idStaff`, `nameStaff`, `phone`, `password`, `idUniversity`, `created_at`, `updated_at`) VALUES
(10, 'Hoàng Hải Long', 'Boy', '1', 'Nguyễn Văn A', '038899999', '$2y$10$SoQ4iLDy5jO/qofiBZHbbeG1q5MlNsWfModkEbIVDJ1S1LgsZ1SPi', 6, '2020-10-26 00:07:17', '2020-10-26 00:07:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `universitycode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `totalStudent` int(11) NOT NULL,
  `foundedYear` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `university`
--

INSERT INTO `university` (`id`, `name`, `image`, `universitycode`, `address`, `totalStudent`, `foundedYear`, `code`, `created_at`, `updated_at`) VALUES
(6, 'Đại học Bách Khoa', 'uploads/university/HVMX5P3Y0REF7ABLQOZD/1603696114.jpg', 'BKA', '110 Lê Thanh Nghị, Hà Nội', 0, '2020-10-21', 'HVMX5P3Y0REF7ABLQOZD', '2020-10-25 23:55:03', '2020-10-26 00:08:34'),
(7, 'Đại học Giao thông vận tải', '', 'GHA', '100 Cầu Giấy, Cầu Giấy, Hà Nội', 0, '', 'B6UZX4V1CSFI2QEH5MKT', '2020-10-25 23:56:22', '2020-10-25 23:56:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `position`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`, `pic`, `code`, `country`, `city`, `address`) VALUES
(2, 'admin@admin.com', '$2y$10$3px4GYoIha9rqD5z6em/Hu95CAJjqjnF7x0um9m4BQwLH6j21rQVW', 1, NULL, 'Hoàng', 'Long', '2020-05-28 11:33:11', '2020-05-28 11:33:11', NULL, 'uploads/admin/ABC/1603526127.jpg', 'ABC', 'Việt Nam', 'Hà Nội', '100 Kim Ngưu, Hai Bà Trưng , Hà Nội');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `interestrate`
--
ALTER TABLE `interestrate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`tenor`);

--
-- Chỉ mục cho bảng `loanrecords`
--
ALTER TABLE `loanrecords`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loanrequest`
--
ALTER TABLE `loanrequest`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `requestjob`
--
ALTER TABLE `requestjob`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `studentatm`
--
ALTER TABLE `studentatm`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `studentwork`
--
ALTER TABLE `studentwork`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `interestrate`
--
ALTER TABLE `interestrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loanrecords`
--
ALTER TABLE `loanrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loanrequest`
--
ALTER TABLE `loanrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `requestjob`
--
ALTER TABLE `requestjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `studentatm`
--
ALTER TABLE `studentatm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `studentwork`
--
ALTER TABLE `studentwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
