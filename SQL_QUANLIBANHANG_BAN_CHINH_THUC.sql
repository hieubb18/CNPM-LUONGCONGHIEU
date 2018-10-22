-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2018 lúc 04:53 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--
CREATE DATABASE IF NOT EXISTS `banhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `banhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `finyear`
--

CREATE TABLE `finyear` (
  `fyid` int(11) NOT NULL,
  `fynm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fycd` int(11) NOT NULL,
  `frdt` date NOT NULL,
  `todt` date NOT NULL,
  `bseries` bigint(20) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `finyear`
--

INSERT INTO `finyear` (`fyid`, `fynm`, `fycd`, `frdt`, `todt`, `bseries`, `active`) VALUES
(1, '2017--2018', 1718, '2017-04-04', '2018-03-31', 17180001, 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gmstate`
--

CREATE TABLE `gmstate` (
  `stid` int(11) NOT NULL,
  `stnm` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cuid` int(11) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL,
  `mdon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gmstate`
--

INSERT INTO `gmstate` (`stid`, `stnm`, `cuid`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Bà Rịa', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(2, 'Bạc Liêu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(3, 'Vũng Tàu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(4, 'Hà Nội', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(5, 'Gia Lai', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(6, 'Nha Trang', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(7, 'Thái Bình', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(8, 'Thái Nguyên', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(9, 'Thanh Hoá', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(10, 'Ninh Bình', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(11, 'Sơn La', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gstslab`
--

CREATE TABLE `gstslab` (
  `slabid` int(11) NOT NULL,
  `TenKhachHang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` int(10) NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gstslab`
--

INSERT INTO `gstslab` (`slabid`, `TenKhachHang`, `SoDienThoai`, `DiaChi`, `Email`, `active`, `cron`, `mdon`) VALUES
(1, 'Tên 1', 2222222, 'aaaaa', '0aaa', 'No', '2017-07-25 13:03:17', '2018-10-20 14:36:26'),
(2, 'Tên 2', 22, '2.5ssss', '5ssss', 'No', '2017-07-25 13:03:17', '2018-10-20 14:38:06'),
(3, '12%', 65, '6', '12', 'No', '2017-07-25 13:04:30', '2018-10-20 14:40:17'),
(4, '18%', 9, '9', '18', 'No', '2017-07-25 13:04:30', '0000-00-00 00:00:00'),
(5, 'Tên 3', 14, '14', '28', 'No', '2017-07-25 13:05:28', '2018-10-20 12:43:58'),
(6, '20%', 10, '10', '20', 'No', '2017-09-01 22:35:16', '2017-09-01 22:35:16'),
(8, '40%', 20, '20', '40', 'No', '2017-09-01 22:35:32', '2017-09-01 22:35:32'),
(9, 'sa', 5, '5', '5', 'No', '2018-10-19 11:38:21', '2018-10-19 11:38:21'),
(10, 'a', 1, '11', '1', 'No', '2018-10-19 11:39:52', '2018-10-19 11:39:52'),
(11, 'Luong Cong Hieu', 1669173043, 'dia chi', 'email', 'Yes', '2018-10-20 19:49:41', '2018-10-20 19:49:41'),
(12, 'Phạm Quốc Tôn', 3697425, 'Quận 7', 'Quocton@gmail.com', 'Yes', '2018-10-20 20:51:18', '2018-10-20 20:51:18'),
(13, 'Minh Khang', 369949, 'Quận 9, Đường làng tre', 'Minhkhang@gmail.com', 'Yes', '2018-10-20 20:51:44', '2018-10-20 20:51:44'),
(14, 'TEST', 0, 'TEST', 'TEST', 'Yes', '2018-10-20 22:47:53', '2018-10-20 22:47:53'),
(15, 'Sửa khách hagn', 0, 'địa hỉ', 'emailkhac@gmail.com', 'No', '2018-10-20 22:54:15', '2018-10-20 17:54:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mcompany`
--

CREATE TABLE `mcompany` (
  `comid` int(11) NOT NULL,
  `comnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `addr1` text COLLATE utf8_unicode_ci NOT NULL,
  `addr2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `stid` int(11) NOT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mcompany`
--

INSERT INTO `mcompany` (`comid`, `comnm`, `addr1`, `addr2`, `city`, `zip`, `stid`, `telephone`, `email`, `active`) VALUES
(1, 'CỬA HÀNG BÁN QUẦN ÁO', 'QUẬN 9', 'QUẬN 10', 'TP HỒ CHÍ MINH', '700000', 21, '01669170343', 'LUONGHIEU184@GMAI,CN', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mitem`
--

CREATE TABLE `mitem` (
  `id` int(11) NOT NULL,
  `inm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hsn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `slabid` int(11) NOT NULL,
  `crby` int(11) NOT NULL DEFAULT '1',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '1',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mitem`
--

INSERT INTO `mitem` (`id`, `inm`, `hsn`, `price`, `slabid`, `crby`, `cron`, `mdby`, `mdon`, `active`) VALUES
(1, 'Ao thun', 'A55455', 30000, 0, 1, '2018-10-19 15:16:42', 1, '2018-10-19 15:16:42', 'Yes'),
(3, 'Áo khoác', 'A2311', 300000, 0, 1, '2018-10-20 15:46:12', 1, '2018-10-20 15:46:12', 'Yes'),
(4, 'Quần Jean', 'A123', 50000, 0, 1, '2018-10-20 15:47:20', 1, '2018-10-20 15:47:20', 'Yes'),
(5, 'Áo thun', 'S', 300000, 0, 1, '2018-10-20 20:07:53', 1, '2018-10-20 20:07:53', 'Yes'),
(6, 'TEST', 'TEST', 2000, 0, 1, '2018-10-20 22:48:06', 1, '2018-10-20 22:48:06', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesd`
--

CREATE TABLE `salesd` (
  `saledid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `icd` int(11) NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `saqty` float NOT NULL,
  `disc` float NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesd`
--

INSERT INTO `salesd` (`saledid`, `shid`, `icd`, `unit`, `price`, `saqty`, `disc`, `cron`) VALUES
(23, 29, 1, '', 30000, 1, 0, '2018-10-20 18:33:32'),
(24, 30, 1, '', 30000, 2, 0, '2018-10-20 20:10:10'),
(25, 30, 3, '', 300000, 1, 0, '2018-10-20 20:10:10'),
(26, 31, 4, '', 50000, 1, 0, '2018-10-20 20:56:01'),
(27, 32, 4, '', 50000, 33, 0, '2018-10-20 20:56:13'),
(28, 33, 1, '', 30000, 1, 0, '2018-10-20 22:57:20'),
(29, 33, 3, '', 300000, 2, 0, '2018-10-20 22:57:20'),
(30, 33, 6, '', 2000, 1, 0, '2018-10-20 22:57:20'),
(31, 33, 4, '', 50000, 1, 0, '2018-10-20 22:57:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesh`
--

CREATE TABLE `salesh` (
  `rid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `supid` int(11) NOT NULL,
  `saledt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesh`
--

INSERT INTO `salesh` (`rid`, `shid`, `supid`, `saledt`, `active`) VALUES
(28, 17180009, 14, '2018-10-20 18:33:20', 'yes'),
(29, 17180010, 14, '2018-10-20 18:33:32', 'yes'),
(30, 17180011, 15, '2018-10-20 20:10:10', 'yes'),
(31, 17180012, 13, '2018-10-20 20:56:01', 'yes'),
(32, 17180013, 14, '2018-10-20 20:56:13', 'yes'),
(33, 17180006, 15, '2018-10-20 22:57:20', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `supnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contactp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contctno` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gstno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `supaddr` text COLLATE utf8_unicode_ci NOT NULL,
  `supcity` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `stid` int(11) NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supid`, `supnm`, `contactp`, `contctno`, `email`, `gstno`, `zip`, `supaddr`, `supcity`, `stid`, `telephone`, `active`) VALUES
(13, 'Kho Công Ty 1', 'Nguyễn Văn A', '0369173043', 'Luonghieu184@gmail.com', '', '', '500 Le PPhuong thand', '', 6, '', 'Yes'),
(14, 'Công ty Quần áo sĩ', 'Bác liên', '1', 'luonghieu184@gmail.com', '', '', 'a', '', 3, '', 'Yes'),
(15, 'SẠP 9A chợ tân bình', 'Cô kiều', '03697130463', 'luonghieu184@gmail.com', '', '', 'Quận tân bình', '', 3, '', 'Yes'),
(16, 'TEST', 'TEST', '222', 'TEST', '', '', 'TEST', '', 2, '', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `email`, `phone`, `created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'luonghieu184@gmail.com', '0369173043', '2018-05-10 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `finyear`
--
ALTER TABLE `finyear`
  ADD PRIMARY KEY (`fyid`);

--
-- Chỉ mục cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  ADD PRIMARY KEY (`stid`);

--
-- Chỉ mục cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  ADD PRIMARY KEY (`slabid`);

--
-- Chỉ mục cho bảng `mcompany`
--
ALTER TABLE `mcompany`
  ADD PRIMARY KEY (`comid`);

--
-- Chỉ mục cho bảng `mitem`
--
ALTER TABLE `mitem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`saledid`);

--
-- Chỉ mục cho bảng `salesh`
--
ALTER TABLE `salesh`
  ADD PRIMARY KEY (`rid`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `finyear`
--
ALTER TABLE `finyear`
  MODIFY `fyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  MODIFY `slabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `mcompany`
--
ALTER TABLE `mcompany`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mitem`
--
ALTER TABLE `mitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `salesd`
--
ALTER TABLE `salesd`
  MODIFY `saledid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `salesh`
--
ALTER TABLE `salesh`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Cơ sở dữ liệu: `changename`
--
CREATE DATABASE IF NOT EXISTS `changename` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `changename`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `finyear`
--

CREATE TABLE `finyear` (
  `fyid` int(11) NOT NULL,
  `fynm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fycd` int(11) NOT NULL,
  `frdt` date NOT NULL,
  `todt` date NOT NULL,
  `bseries` bigint(20) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `finyear`
--

INSERT INTO `finyear` (`fyid`, `fynm`, `fycd`, `frdt`, `todt`, `bseries`, `active`) VALUES
(1, '2017--2018', 1718, '2017-04-04', '2018-03-31', 17180001, 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gmstate`
--

CREATE TABLE `gmstate` (
  `stid` int(11) NOT NULL,
  `ThanhPho` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cuid` int(11) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL,
  `mdon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gmstate`
--

INSERT INTO `gmstate` (`stid`, `ThanhPho`, `cuid`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Andaman and Nicobar Island', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(2, 'Andhra Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(3, 'Arunachal Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(4, 'Assam', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(5, 'Bihar', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(6, 'Chandigarh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(7, 'Chhattisgarh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(8, 'Dadra and Nagar Haveli', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(9, 'Daman and Diu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(10, 'Delhi', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(11, 'Goa', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(12, 'Gujarat', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(13, 'Haryana', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(14, 'Himachal Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(15, 'Jammu and Kashmir', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(16, 'Jharkhand', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(17, 'Karnataka', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(18, 'Kerala', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(19, 'Lakshadweep', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(20, 'Madhya Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(21, 'Maharashtra', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(22, 'Manipur', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(23, 'Meghalaya', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(24, 'Mizoram', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(25, 'Nagaland', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(26, 'Odisha', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(27, 'Puducherry', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(28, 'Punjab', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(29, 'Rajasthan', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(30, 'Sikkim', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(31, 'Tamil Nadu', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(32, 'Telangana', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(33, 'Tripura', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(34, 'Uttar Pradesh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(35, 'Uttarakhand', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(36, 'West Bengal', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gstslab`
--

CREATE TABLE `gstslab` (
  `slabid` int(11) NOT NULL,
  `slabnm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL DEFAULT '0',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '0',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gstslab`
--

INSERT INTO `gstslab` (`slabid`, `slabnm`, `cgst`, `sgst`, `igst`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Nil', 0, 0, 0, 'Yes', 1, '2017-07-25 13:03:17', 0, '0000-00-00 00:00:00'),
(2, '5%', 2.5, 2.5, 5, 'Yes', 1, '2017-07-25 13:03:17', 0, '0000-00-00 00:00:00'),
(3, '12%', 6, 6, 12, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(4, '18%', 9, 9, 18, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(5, '28%', 14, 14, 28, 'Yes', 1, '2017-07-25 13:05:28', 0, '0000-00-00 00:00:00'),
(6, '20%', 10, 10, 20, 'Yes', 0, '2017-09-01 22:35:16', 0, '2017-09-01 22:35:16'),
(8, '40%', 20, 20, 40, 'Yes', 0, '2017-09-01 22:35:32', 0, '2017-09-01 22:35:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mcompany`
--

CREATE TABLE `mcompany` (
  `comid` int(11) NOT NULL,
  `comnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `addr1` text COLLATE utf8_unicode_ci NOT NULL,
  `addr2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `statecode` int(11) NOT NULL,
  `stid` int(11) NOT NULL,
  `gstno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `telephone1` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mcompany`
--

INSERT INTO `mcompany` (`comid`, `comnm`, `addr1`, `addr2`, `city`, `state`, `zip`, `statecode`, `stid`, `gstno`, `pan`, `telephone`, `telephone1`, `mobile`, `email`, `logo`, `active`) VALUES
(1, 'SHIV DURGA ENTERPRISES', 'Unit No.12 Plot No.29/30,  Dewaan & Sons Industrial Area', 'Mahim Tq. Dist.Palghar', 'Mumbai', 'Maharashtra', '560094', 27, 21, '27AMSPJ2064K1ZM', 'AMSPJ2064K', '022-45123566', '022-45123566', '7899551677', 'shivdurga78@gmail.com', 'public/img/logo.png', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mitem`
--

CREATE TABLE `mitem` (
  `id` int(11) NOT NULL,
  `inm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hsn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `slabid` int(11) NOT NULL,
  `crby` int(11) NOT NULL DEFAULT '1',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '1',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mitem`
--

INSERT INTO `mitem` (`id`, `inm`, `unit`, `hsn`, `price`, `slabid`, `crby`, `cron`, `mdby`, `mdon`, `active`, `cgst`, `sgst`, `igst`) VALUES
(1, 'CHEMLOK -205 (1 LTR )', 'tin', '35069190', 545, 4, 1, '2017-09-02 11:30:08', 1, '2017-09-02 11:30:08', 'No', 9, 9, 18),
(2, 'CHEMLOK -220 (1 LTR )', 'in', '35069190', 937, 4, 1, '2017-09-02 11:32:57', 1, '2017-09-02 11:32:57', 'No', 9, 9, 18),
(6, 'Packaging And FOrwarding', '0', '0', 125, 4, 1, '2017-09-03 14:23:39', 1, '2017-09-03 14:23:39', 'Yes', 9, 9, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesd`
--

CREATE TABLE `salesd` (
  `saledid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `icd` int(11) NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `saqty` float NOT NULL,
  `disc` float NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesd`
--

INSERT INTO `salesd` (`saledid`, `shid`, `icd`, `unit`, `price`, `saqty`, `disc`, `cgst`, `sgst`, `igst`, `cron`) VALUES
(1, 1, 1, 'tin', 545, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(2, 1, 2, 'in', 937, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(3, 1, 6, '0', 125, 1, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(4, 2, 1, 'tin', 545, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(5, 2, 2, 'in', 937, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(6, 2, 6, '0', 125, 1, 0, 0, 0, 18, '2017-09-05 19:40:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesh`
--

CREATE TABLE `salesh` (
  `rid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `supid` int(11) NOT NULL,
  `saledt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesh`
--

INSERT INTO `salesh` (`rid`, `shid`, `supid`, `saledt`, `active`) VALUES
(1, 17180001, 1, '2017-09-05 19:39:41', 'yes'),
(2, 17180002, 2, '2017-09-05 19:40:17', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `supnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhachHang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supaddr` text COLLATE utf8_unicode_ci NOT NULL,
  `supcity` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `stid` int(11) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supid`, `supnm`, `TenKhachHang`, `SoDienThoai`, `email`, `supaddr`, `supcity`, `stid`, `active`) VALUES
(1, 'Ostrcih networking Pvt Ltd', 'Sandeep Jadhav', '7899551677', 'sandeep@gmail.com', '7201, york Avenue S Apt 1012\nMinneapolis', 'Bangalore', 21, 'Yes'),
(2, 'Infrastructure Managed Services', 'Jyoti Jalkote', '7899551677', 'jyotijalkote10@gmail.com', '7201, york Avenue S Apt 1012\nMinneapolis â€“MN, USA', 'Bangalore', 17, 'Yes'),
(3, 'sdsafdsdsada', 'dsadasdsa', '7899551677', '', '', '', 17, 'Yes'),
(4, 'TÃªn quáº§n', 'tÃªn Ä‘Ã¢y', '01123', 'sadw@gmail.com', 'q', '', 2, 'Yes'),
(5, 'dÃ¡', 'dÃ¡', '123', '12@gmai.com', 'a', '', 3, 'Yes'),
(6, 'TEST4', 'dien ten khach hang', '1212', 'luongh', 'a', '', 13, 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `email`, `phone`, `created`) VALUES
(1, 'Sandeep Jadhav', '21232f297a57a5a743894a0e4a801fc3', 'admin', '7899551677', '2017-09-04 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `finyear`
--
ALTER TABLE `finyear`
  ADD PRIMARY KEY (`fyid`);

--
-- Chỉ mục cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  ADD PRIMARY KEY (`stid`);

--
-- Chỉ mục cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  ADD PRIMARY KEY (`slabid`);

--
-- Chỉ mục cho bảng `mcompany`
--
ALTER TABLE `mcompany`
  ADD PRIMARY KEY (`comid`);

--
-- Chỉ mục cho bảng `mitem`
--
ALTER TABLE `mitem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`saledid`);

--
-- Chỉ mục cho bảng `salesh`
--
ALTER TABLE `salesh`
  ADD PRIMARY KEY (`rid`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `finyear`
--
ALTER TABLE `finyear`
  MODIFY `fyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  MODIFY `slabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mcompany`
--
ALTER TABLE `mcompany`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mitem`
--
ALTER TABLE `mitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `salesd`
--
ALTER TABLE `salesd`
  MODIFY `saledid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `salesh`
--
ALTER TABLE `salesh`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Cơ sở dữ liệu: `dbbotlike`
--
CREATE DATABASE IF NOT EXISTS `dbbotlike` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dbbotlike`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `botcamxuc`
--

CREATE TABLE `botcamxuc` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `usercai` varchar(32) NOT NULL,
  `camxuc` varchar(32) NOT NULL,
  `access_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `botcamxuc`
--

INSERT INTO `botcamxuc` (`id`, `user_id`, `name`, `usercai`, `camxuc`, `access_token`) VALUES
(3, '100015437114771', 'Hà Ngọc Thành     Đô ۝          ', '100015437114771', 'LOVE', 'EAAAAAYsX7TsBAK1wdHvZCB1E6sqjCQ3t9iUK2k6N8b35fJOZATtaQ2sItSZBmZAEXchtfolVpxjSCZCBB8Fpoha7O4oRbHsgUE4tZCS4ZCEkwyInA7ku06bZBmmzhDQy3Mby58GxrZBsMc1I2KlZBUEp6uXvpVRYeB0QhBggpWVWq1C6M9g5mcHu9BXhtadsgBksKJU0vWSOKZCu6BVujz3wB8D'),
(6, '100008059757377', 'Nguyễn Văn Long', '100008059757377', 'LOVE', 'EAAAAAYsX7TsBAEmxkn6sYeNgLqGZA8qqwr41ds8CgJSVpuOarKzK92u2IATrgn5tf8WKJRZB0bZCMg5HNKsFZCKu5s6yTAXgHQyYNhEGHjxOvlVD5HuzsfuZCrpZBXB5LZASM7FBlqQJ7UVpvijCU4bhTLkYI11ZAuwhGNt2Mq7TcOcRaVD3b1rZCdPQR2JlenN8hqaRJeQE4XcweNtKaXkLN'),
(9, '100011017934384', 'Hàn Băng Băng', '100011017934384', 'ANGRY', 'EAAAAAYsX7TsBAB40YIMfdvkTE1rj5ZBgZCXWzkmHjCS3yyqFvT392qdDgWdgYiZBuHXzUcZClZCv4hGmxBNaTNSZAPouGAqoZBRhUk4NPTRDjesYZABZAZB4iWleIK0WWA5dwOLZCxTBhWZAk5DF9Kmeh93Hu5DvwB0YZCvWRfdPS6WT4RVTjFFtDp8FuI3ZCGK4TLS2mRJHEDMuw6n7x6wNALAxNQ'),
(14, '100005307909031', 'Nguyễn Quang Anh', '100005307909031', 'WOW', 'EAAAAAYsX7TsBAOCSS26laWM8V8Qcny8c3DXLKg9rbqZAUPpgswyKuZCiSJ40ka3BCUBeG0S0vySVL617l46PFJZA3yLjsemDNKX6sQsVnq5dLFUNwbYuuYDtHZAyZCVZAtwk2UR0r8yQ0FgTw33o2JIJeWukTTcaEQBvN6FmmpatzKbRPuCzQ6fMNJ60kjdPPSJvZBwGQJysuyl4JEiuCDf'),
(11, '100000476889561', 'Thảo Thiên', '100000476889561', 'LIKE', 'EAAAAAYsX7TsBAJby2yZBTAQUEkC5tv48IPXlJs20QXQ158yNGJkVOI5jYsZBQlfCqHmc8YlfZCERi2pzDsI4YfOgikFN2FYAbZArvFxOZCFo3JcK43HfVaxVH80IAbv1QA4Y6xHeqCoKdHMt61ZAOaSVRFdGPmZBHsmTj3ZBjZAFo7XXbK7vBZBWUYxFqZAcZBN8ZBzCSxYYul2WizGuYFFivlImd'),
(13, '100025816479484', 'Trương Ngọc Thu②⓪⓪④', '100025816479484', 'WOW', 'EAAAAAYsX7TsBABA4mm0EMykbwruo8SrzOITtplYyzaUUjqs6KUpsIVyg9rHnhkkPNvJmKmv58O2JCRRfRynyZARhjYUqQDvoGnvKZAC6DRxrcjiupp69JBVeDJr1jGyxFUanHaTvZAZBVRJkJp6OvRsPnBPxqghKZCGU9BfxqKZAvhbhMThrhiQuPjq3KUuIQOhlpenUYGe7yKB9VFPZAUB'),
(15, '100018120071259', 'Lê Mai Hồng Sơn', '100018120071259', 'LIKE', 'EAAAAAYsX7TsBAPJEEjQYbsBYRakcgTbfflMkZB6NLLgs5XYDrDymf6FdIzJr1S5ucOst1PL2Yqi76Sea3gn1HspiTWhwlxf4g3w2dZCAnUkmvZBWBMfUpczkoBkeu6Fh6VtouhJnSrCDLihTJf8c2TGZBhtxN7P9pCyyxsOTXjvNZCW7f9W6oTAK79agcXGoLQPu0W10es7vWC4nMaWzU'),
(16, '100000520360951', 'Nguyễn Vũ Đức Trọng', '100000520360951', 'LOVE', 'EAAAAAYsX7TsBAEzOZC4FVzyTmfWICfaysIlZCHXd72ir1GaRnrFg7NuXn1wjSzqkOFePZACnm44nRaTZAIaROV1CQvfF3HvGBRrEcSdqrDdnUBx4q0DPZCqZBUZBDzTwIa8P4ZCyQCvHUvxwmkQZCcQVw8O6pxZCRgvCmQSx5Scb80mpTMSOSIK1ccreeoZBJbpz1MGMptldajTCZBRPNPr7irmZB6OZAvEnZBb9ZBEZD'),
(18, '100008531556570', 'Công Hiếu', '100008531556570', 'ANGRY', 'EAAAAAYsX7TsBAFNlBxAk1NN6fZAkq0jNwQxhCv6D4RH3mlkPcYxrMYfyZC6vglSd0RvWgdp46fwnfTob64TDyj31y5J96RqMX9tf0wy7I01SF1AGpGLVcJ3zuJZAnR2ATrs6HV9zSQgVWYjxz9ayGCbYuR8xPqJMgsgTCvgVkAMtM2Y3jxXtLEi4G4MAwxxtwE89RX38xbdBIJquTb5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `botcmtsys`
--

CREATE TABLE `botcmtsys` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `access_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `access_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `token`
--

INSERT INTO `token` (`id`, `user_id`, `name`, `access_token`) VALUES
(11, '100008531556570', 'Công Hiếu', 'EAAAAAYsX7TsBAFNlBxAk1NN6fZAkq0jNwQxhCv6D4RH3mlkPcYxrMYfyZC6vglSd0RvWgdp46fwnfTob64TDyj31y5J96RqMX9tf0wy7I01SF1AGpGLVcJ3zuJZAnR2ATrs6HV9zSQgVWYjxz9ayGCbYuR8xPqJMgsgTCvgVkAMtM2Y3jxXtLEi4G4MAwxxtwE89RX38xbdBIJquTb5');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `botcamxuc`
--
ALTER TABLE `botcamxuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `botcmtsys`
--
ALTER TABLE `botcmtsys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `botcamxuc`
--
ALTER TABLE `botcamxuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `botcmtsys`
--
ALTER TABLE `botcmtsys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'QLBanHang', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"banhang\",\"changename\",\"dbbotlike\",\"phpmyadmin\",\"qlbanhang\",\"quanlibanhang\",\"sales\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@\",\"latex_structure_continued_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@\",\"latex_data_continued_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'banhang', 'gmstate', '{\"sorted_col\":\"`gmstate`.`stid` ASC\"}', '2018-10-17 11:02:05'),
('root', 'banhang', 'mitem', '{\"CREATE_TIME\":\"2018-10-16 15:42:45\"}', '2018-10-20 12:08:32'),
('root', 'banhang', 'salesh', '{\"CREATE_TIME\":\"2018-10-16 15:42:45\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2018-10-20 09:17:50'),
('root', 'test', 'gmstate', '{\"sorted_col\":\"`gmstate`.`stnm` ASC\"}', '2018-10-16 07:17:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-21 14:52:59', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `qlbanhang`
--
CREATE DATABASE IF NOT EXISTS `qlbanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `qlbanhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cashier`
--

CREATE TABLE `cashier` (
  `cashier_id` int(10) NOT NULL,
  `cashier_name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `cashier_name`, `position`, `username`, `password`) VALUES
(1, 'Cashier', 'cashier', 'cashier', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `first_name`, `middle_name`, `last_name`) VALUES
(1, 'Customer', 'Silay City', '4536974', '1', 'customer', 'customer', 'customer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lose`
--

CREATE TABLE `lose` (
  `p_id` int(10) NOT NULL,
  `product_code` varchar(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `description_name` varchar(30) NOT NULL,
  `amount_lose` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `exdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lose`
--

INSERT INTO `lose` (`p_id`, `product_code`, `product_name`, `description_name`, `amount_lose`, `qty`, `cost`, `date`, `category`, `exdate`) VALUES
(1, 'P-08', 'Century Tuna', 'ADOBO', '3000', '100', '30', '02-23-2017', 'Canned Goods', '2017-05-27'),
(2, 'P-08', 'Century Tuna', 'ADOBO', '3000', '100', '30', '10-06-2018', 'Canned Goods', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description_name` varchar(50) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty_left` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_delivered` varchar(20) NOT NULL,
  `expiration_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `description_name`, `unit`, `cost`, `price`, `supplier`, `qty_left`, `category`, `date_delivered`, `expiration_date`) VALUES
(1, 'P-08', 'Century Tuna', 'ADOBO', 'Per Pieces', '30', '33', 'Consuelo', 200, 'Select Category', '2017-02-20', ''),
(2, 'P-20032023', 'Lucky Me', 'Pancit Canton Extra Hot', 'Per Pieces', '10', '12', 'Consuelo', 100, 'Noodles', '2017-01-21', '2017-07-13'),
(3, 'P-20032043', 'Lucky Me', 'Pancit Canton Chilimansi', 'Per Pieces', '10', '12', 'Consuelo', 100, 'Noodles', '2017-02-21', '2017-06-30'),
(4, 'P-3932232', 'M.Y. San', 'Skyflakes Crackers', 'Per Pack', '45.50', '50', 'Consuelo', 100, 'Crackers', '2017-02-21', '2017-07-27'),
(5, 'P-2290022', '', '', 'Select Product ', '', '', 'Unilever', 0, 'Canned Goods', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date_order` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `date_deliver` varchar(100) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `status` varchar(25) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `purchases`
--

INSERT INTO `purchases` (`transaction_id`, `invoice_number`, `date_order`, `suplier`, `date_deliver`, `p_name`, `qty`, `cost`, `status`, `remark`) VALUES
(1, 'PO-8330322', '2017-02-23', 'Consuelo', '', 'P-08', '100', '3300', 'Select', ' sad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `purchases_item`
--

INSERT INTO `purchases_item` (`id`, `name`, `qty`, `cost`, `invoice`, `status`, `date`) VALUES
(1, 'P-08', 100, '3300', 'PO-8330322', 'Select', '2017-02-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `total_amount` varchar(30) NOT NULL,
  `cash` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `p_amount` varchar(30) NOT NULL,
  `vat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`, `total_amount`, `cash`, `month`, `year`, `p_amount`, `vat`) VALUES
(1, 'RS-33200322', 'Rizaldy Loren', '02/21/2017', 'cash', '184.8', '', 'Renzy Jerota Loren', '', '', '185', 'February', '2017', '165', '19.8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` varchar(25) NOT NULL,
  `omonth` varchar(25) NOT NULL,
  `oyear` varchar(25) NOT NULL,
  `qtyleft` varchar(25) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `vat` varchar(20) NOT NULL,
  `total_amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `name`, `price`, `discount`, `category`, `date`, `omonth`, `oyear`, `qtyleft`, `dname`, `vat`, `total_amount`) VALUES
(1, 'RS-33200322', 'P-08', '5', '165', 'Century Tuna', '33', '0', 'Canned Goods', '02/21/2017', 'February', '2017', '95', 'ADOBO', '19.8', '184.8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`) VALUES
(1, 'Unilever', 'Bacolod City', '441 3251', 'dina'),
(2, 'Consuelo', 'Talisay City', '441 3896', 'rey');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin123', 'Admin', 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `lose`
--
ALTER TABLE `lose`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lose`
--
ALTER TABLE `lose`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Cơ sở dữ liệu: `quanlibanhang`
--
CREATE DATABASE IF NOT EXISTS `quanlibanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quanlibanhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(64) NOT NULL,
  `mail_port` smallint(6) NOT NULL,
  `mail_info` varchar(64) NOT NULL,
  `mail_noreply` varchar(64) NOT NULL,
  `mail_password` varchar(64) NOT NULL,
  `priceShip` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_port`, `mail_info`, `mail_noreply`, `mail_password`, `priceShip`, `title`, `description`, `keyword`) VALUES
(1, '', 29, 'hodienloi', 'hodienloi@', '', '30000', 'Web site bán hàng Demo', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1',
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `view`, `status`, `trash`, `fullname`) VALUES
(1, '', '01234567891', 'lenhsangcntt1508@gmail.com', 'aaa', '0000-00-00 00:00:00', 1, 1, 0, 'lenhsang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 'Hàng mới cập nhật', 'hang-moi-cap-nhat', '', 'AD', '1.jpg', '2018-10-08 23:40:53', '5', '2018-10-08 23:40:53', '5', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(6) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `money` int(12) NOT NULL,
  `province` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Mẫu PowerPoint', '12312', 'qwe,qưieq', '2018-10-07 11:58:52', 5, '2018-10-07 11:58:52', 5, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sortDesc` text NOT NULL,
  `detail` text NOT NULL,
  `producer` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_quanhuyen`
--

CREATE TABLE `db_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_quanhuyen`
--

INSERT INTO `db_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('1', 'Quận Ba Đình', 'Quận', '1'),
('10', 'Huyện Sóc Sơn', 'Huyện', '1'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('11', 'Huyện Đông Anh', 'Huyện', '1'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('18', 'Huyện Gia Lâm', 'Huyện', '1'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('19', 'Quận Nam Từ Liêm', 'Quận', '1'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('2', 'Quận Hoàn Kiếm', 'Quận', '1'),
('20', 'Huyện Thanh Trì', 'Huyện', '1'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('21', 'Quận Bắc Từ Liêm', 'Quận', '1'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('24', 'Thành phố Hà Giang', 'Thành phố', '2'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '1'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('26', 'Huyện Đồng Văn', 'Huyện', '2'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '1'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '1'),
('27', 'Huyện Mèo Vạc', 'Huyện', '2'),
('271', 'Huyện Ba Vì', 'Huyện', '1'),
('272', 'Huyện Phúc Thọ', 'Huyện', '1'),
('273', 'Huyện Đan Phượng', 'Huyện', '1'),
('274', 'Huyện Hoài Đức', 'Huyện', '1'),
('275', 'Huyện Quốc Oai', 'Huyện', '1'),
('276', 'Huyện Thạch Thất', 'Huyện', '1'),
('277', 'Huyện Chương Mỹ', 'Huyện', '1'),
('278', 'Huyện Thanh Oai', 'Huyện', '1'),
('279', 'Huyện Thường Tín', 'Huyện', '1'),
('28', 'Huyện Yên Minh', 'Huyện', '2'),
('280', 'Huyện Phú Xuyên', 'Huyện', '1'),
('281', 'Huyện Ứng Hòa', 'Huyện', '1'),
('282', 'Huyện Mỹ Đức', 'Huyện', '1'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('29', 'Huyện Quản Bạ', 'Huyện', '2'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('3', 'Quận Tây Hồ', 'Quận', '1'),
('30', 'Huyện Vị Xuyên', 'Huyện', '2'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('31', 'Huyện Bắc Mê', 'Huyện', '2'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('32', 'Huyện Hoàng Su Phì', 'Huyện', '2'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('33', 'Huyện Xín Mần', 'Huyện', '2'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('34', 'Huyện Bắc Quang', 'Huyện', '2'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('35', 'Huyện Quang Bình', 'Huyện', '2'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('4', 'Quận Long Biên', 'Quận', '1'),
('40', 'Thành phố Cao Bằng', 'Thành phố', '4'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('42', 'Huyện Bảo Lâm', 'Huyện', '4'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('43', 'Huyện Bảo Lạc', 'Huyện', '4'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('44', 'Huyện Thông Nông', 'Huyện', '4'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('45', 'Huyện Hà Quảng', 'Huyện', '4'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('46', 'Huyện Trà Lĩnh', 'Huyện', '4'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('47', 'Huyện Trùng Khánh', 'Huyện', '4'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('48', 'Huyện Hạ Lang', 'Huyện', '4'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('49', 'Huyện Quảng Uyên', 'Huyện', '4'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('5', 'Quận Cầu Giấy', 'Quận', '1'),
('50', 'Huyện Phục Hoà', 'Huyện', '4'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('51', 'Huyện Hoà An', 'Huyện', '4'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('52', 'Huyện Nguyên Bình', 'Huyện', '4'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('53', 'Huyện Thạch An', 'Huyện', '4'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('58', 'Thành Phố Bắc Kạn', 'Thành phố', '6'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('6', 'Quận Đống Đa', 'Quận', '1'),
('60', 'Huyện Pác Nặm', 'Huyện', '6'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('61', 'Huyện Ba Bể', 'Huyện', '6'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('62', 'Huyện Ngân Sơn', 'Huyện', '6'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('63', 'Huyện Bạch Thông', 'Huyện', '6'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('64', 'Huyện Chợ Đồn', 'Huyện', '6'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('65', 'Huyện Chợ Mới', 'Huyện', '6'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('66', 'Huyện Na Rì', 'Huyện', '6'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('7', 'Quận Hai Bà Trưng', 'Quận', '1'),
('70', 'Thành phố Tuyên Quang', 'Thành phố', '8'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('71', 'Huyện Lâm Bình', 'Huyện', '8'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('72', 'Huyện Nà Hang', 'Huyện', '8'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('73', 'Huyện Chiêm Hóa', 'Huyện', '8'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('74', 'Huyện Hàm Yên', 'Huyện', '8'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('75', 'Huyện Yên Sơn', 'Huyện', '8'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('76', 'Huyện Sơn Dương', 'Huyện', '8'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('8', 'Quận Hoàng Mai', 'Quận', '1'),
('80', 'Thành phố Lào Cai', 'Thành phố', '10'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('82', 'Huyện Bát Xát', 'Huyện', '10'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('83', 'Huyện Mường Khương', 'Huyện', '10'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('84', 'Huyện Si Ma Cai', 'Huyện', '10'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('85', 'Huyện Bắc Hà', 'Huyện', '10'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('86', 'Huyện Bảo Thắng', 'Huyện', '10'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('87', 'Huyện Bảo Yên', 'Huyện', '10'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('88', 'Huyện Sa Pa', 'Huyện', '10'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('89', 'Huyện Văn Bàn', 'Huyện', '10'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('9', 'Quận Thanh Xuân', 'Quận', '1'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('94', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('95', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('96', 'Huyện Mường Nhé', 'Huyện', '11'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('97', 'Huyện Mường Chà', 'Huyện', '11'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96'),
('98', 'Huyện Tủa Chùa', 'Huyện', '11'),
('99', 'Huyện Tuần Giáo', 'Huyện', '11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `options` varchar(2) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tinhthanhpho`
--

CREATE TABLE `db_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `db_tinhthanhpho`
--

INSERT INTO `db_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('1', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('2', 'Tỉnh Hà Giang', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('4', 'Tỉnh Cao Bằng', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('6', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('8', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `img`, `created`, `trash`, `access`, `status`) VALUES
(5, 'Quản lí Hiếu', 'conghieu', '14cd2f31f731a903d110cdc9d6963bec68db9175', 1, '', 1, '01678922', 'iconadmin.png', '2017-03-11 00:16:05', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Quản trị', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1),
(2, 'Chủ shop', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_quanhuyen`
--
ALTER TABLE `db_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tinhthanhpho`
--
ALTER TABLE `db_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Cơ sở dữ liệu: `sales`
--
CREATE DATABASE IF NOT EXISTS `sales` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `sales`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`transaction_id`, `date`, `name`, `invoice`, `amount`, `remarks`, `balance`) VALUES
(1, '10/13/2018', 'Luowng Hiáº¿u', 'IN-223800', 's', 's', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`) VALUES
(1, 'Công Hi?u', 'Vô Gia C?', '+369173043', '2232');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `cost`, `price`, `supplier`, `qty`) VALUES
(1, '001', '12\" Fiesta Green', '6.50', '13', 'Colortex', 730);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date` varchar(100) CHARACTER SET latin1 NOT NULL,
  `suplier` varchar(100) CHARACTER SET latin1 NOT NULL,
  `remarks` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-3323240', 'Argie', '02/08/2014', 'credit', '100', '02/14/2014', 'Argie Policarpio', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `name`, `price`, `discount`) VALUES
(1, 'RS-3323240', '001', '10', '100', '12\" Fiesta Green', '13', '3'),
(2, 'RS-0228233', '001', '10', '120', '12\" Fiesta Green', '13', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`) VALUES
(1, 'Colortex', 'Binondo Manila', 'none', 'Sample');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Argie', 'admin'),
(2, 'febe', 'febe', 'Febe', 'cashier');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `finyear`
--

CREATE TABLE `finyear` (
  `fyid` int(11) NOT NULL,
  `fynm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fycd` int(11) NOT NULL,
  `frdt` date NOT NULL,
  `todt` date NOT NULL,
  `bseries` bigint(20) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `finyear`
--

INSERT INTO `finyear` (`fyid`, `fynm`, `fycd`, `frdt`, `todt`, `bseries`, `active`) VALUES
(1, '2017--2018', 1718, '2017-04-04', '2018-03-31', 17180001, 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gmstate`
--

CREATE TABLE `gmstate` (
  `stid` int(11) NOT NULL,
  `stnm` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cuid` int(11) NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL,
  `mdon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gmstate`
--

INSERT INTO `gmstate` (`stid`, `stnm`, `cuid`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Ho Chi Minh', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39'),
(2, 'Vung Tau', 1, 'Yes', 0, '2016-03-02 04:24:39', 0, '2016-03-02 04:24:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gstslab`
--

CREATE TABLE `gstslab` (
  `slabid` int(11) NOT NULL,
  `slabnm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `crby` int(11) NOT NULL DEFAULT '0',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '0',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gstslab`
--

INSERT INTO `gstslab` (`slabid`, `slabnm`, `cgst`, `sgst`, `igst`, `active`, `crby`, `cron`, `mdby`, `mdon`) VALUES
(1, 'Nil', 0, 0, 0, 'No', 1, '2017-07-25 13:03:17', 0, '0000-00-00 00:00:00'),
(2, '5%', 2.5, 2.5, 5, 'Yes', 1, '2017-07-25 13:03:17', 0, '0000-00-00 00:00:00'),
(3, '12%', 6, 6, 12, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(4, '18%', 9, 9, 18, 'Yes', 1, '2017-07-25 13:04:30', 0, '0000-00-00 00:00:00'),
(5, '28%', 14, 14, 28, 'Yes', 1, '2017-07-25 13:05:28', 0, '0000-00-00 00:00:00'),
(6, '20%', 10, 10, 20, 'No', 0, '2017-09-01 22:35:16', 0, '2017-09-01 22:35:16'),
(8, '40%', 20, 20, 40, 'No', 0, '2017-09-01 22:35:32', 0, '2017-09-01 22:35:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mcompany`
--

CREATE TABLE `mcompany` (
  `comid` int(11) NOT NULL,
  `comnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `addr1` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `addr2` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `statecode` int(11) NOT NULL,
  `stid` int(11) NOT NULL,
  `gstno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `telephone1` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mitem`
--

CREATE TABLE `mitem` (
  `id` int(11) NOT NULL,
  `inm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hsn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `slabid` int(11) NOT NULL,
  `crby` int(11) NOT NULL DEFAULT '1',
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdby` int(11) NOT NULL DEFAULT '1',
  `mdon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mitem`
--

INSERT INTO `mitem` (`id`, `inm`, `unit`, `hsn`, `price`, `slabid`, `crby`, `cron`, `mdby`, `mdon`, `active`, `cgst`, `sgst`, `igst`) VALUES
(1, 'CHEMLOK -205 (1 LTR )', 'tin', '35069190', 545, 4, 1, '2017-09-02 11:30:08', 1, '2017-09-02 11:30:08', 'No', 9, 9, 18),
(2, 'CHEMLOK -220 (1 LTR )', 'in', '35069190', 937, 4, 1, '2017-09-02 11:32:57', 1, '2017-09-02 11:32:57', 'No', 9, 9, 18),
(6, 'Packaging And FOrwarding', '0', '0', 125, 4, 1, '2017-09-03 14:23:39', 1, '2017-09-03 14:23:39', 'No', 9, 9, 18),
(7, 'TEM MOIWS', '1', '1', 111111, 2, 1, '2018-10-14 22:27:06', 1, '2018-10-14 22:27:06', 'No', 0, 0, 0),
(8, 's', 's', 's', 0, 3, 1, '2018-10-15 23:37:19', 1, '2018-10-15 23:37:19', 'No', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesd`
--

CREATE TABLE `salesd` (
  `saledid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `icd` int(11) NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `saqty` float NOT NULL,
  `disc` float NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `igst` float NOT NULL,
  `cron` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesd`
--

INSERT INTO `salesd` (`saledid`, `shid`, `icd`, `unit`, `price`, `saqty`, `disc`, `cgst`, `sgst`, `igst`, `cron`) VALUES
(1, 1, 1, 'tin', 545, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(2, 1, 2, 'in', 937, 4, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(3, 1, 6, '0', 125, 1, 0, 9, 9, 0, '2017-09-05 19:39:41'),
(4, 2, 1, 'tin', 545, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(5, 2, 2, 'in', 937, 4, 0, 0, 0, 18, '2017-09-05 19:40:17'),
(6, 2, 6, '0', 125, 1, 0, 0, 0, 18, '2017-09-05 19:40:18'),
(7, 3, 2, 'in', 937, 1, 0, 9, 9, 0, '2018-10-14 22:14:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesh`
--

CREATE TABLE `salesh` (
  `rid` int(11) NOT NULL,
  `shid` bigint(20) NOT NULL,
  `supid` int(11) NOT NULL,
  `saledt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesh`
--

INSERT INTO `salesh` (`rid`, `shid`, `supid`, `saledt`, `active`) VALUES
(1, 17180001, 1, '2017-09-05 19:39:41', 'yes'),
(2, 17180002, 2, '2017-09-05 19:40:17', 'yes'),
(3, 17180003, 1, '2018-10-14 22:14:16', 'yes'),
(4, 17180004, 4, '2018-10-16 13:47:54', 'yes'),
(5, 17180005, 4, '2018-10-16 13:48:26', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `supnm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contactp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `contctno` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gstno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `supaddr` text COLLATE utf8_unicode_ci NOT NULL,
  `supcity` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `stid` int(11) NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supid`, `supnm`, `contactp`, `contctno`, `email`, `gstno`, `zip`, `supaddr`, `supcity`, `stid`, `telephone`, `active`) VALUES
(1, 'C', 'Sandeep Jadhav', '7899551677', 'sandeep@gmail.com', '29012AOKPL120', '560094', '7201, york Avenue S Apt 1012\nMinneapolis', 'Bangalore', 21, '080412535', 'No');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `email`, `phone`, `created`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '7899551677', '2017-09-04 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `finyear`
--
ALTER TABLE `finyear`
  ADD PRIMARY KEY (`fyid`);

--
-- Chỉ mục cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  ADD PRIMARY KEY (`stid`);

--
-- Chỉ mục cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  ADD PRIMARY KEY (`slabid`);

--
-- Chỉ mục cho bảng `mitem`
--
ALTER TABLE `mitem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`saledid`);

--
-- Chỉ mục cho bảng `salesh`
--
ALTER TABLE `salesh`
  ADD PRIMARY KEY (`rid`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `finyear`
--
ALTER TABLE `finyear`
  MODIFY `fyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gmstate`
--
ALTER TABLE `gmstate`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gstslab`
--
ALTER TABLE `gstslab`
  MODIFY `slabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mitem`
--
ALTER TABLE `mitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `salesd`
--
ALTER TABLE `salesd`
  MODIFY `saledid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `salesh`
--
ALTER TABLE `salesh`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
