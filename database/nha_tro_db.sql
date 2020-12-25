-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2020 lúc 06:04 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nha_tro_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dia_chi_phong_tro`
--

CREATE TABLE `dia_chi_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `DiaChi` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `XaPhuong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `QuanHuyen` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TenChuTro` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Không xác định',
  `Sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dia_chi_phong_tro`
--

INSERT INTO `dia_chi_phong_tro` (`IDPhongTro`, `DiaChi`, `XaPhuong`, `QuanHuyen`, `TenChuTro`, `Sdt`) VALUES
(59, 'Nhà số 32, ngõ 36, Lê Thanh Nghị, Hai Bà Trưng, Hà Nội', 'Phường Cầu Dền', 'Quận Hai Bà Trưng', 'Anh Tú', '0927363132'),
(60, '121212', 'Xã Phúc Hòa', 'Huyện Phúc Thọ', '12', '12'),
(61, '232323', 'Xã Khai Thái', 'Huyện Phú Xuyên', '2323', '2323'),
(62, '2323', 'Xã Phúc Tiến', 'Huyện Phú Xuyên', '222', '222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_phong_tro`
--

CREATE TABLE `gia_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `KieuPhong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `KieuVeSinh` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `GiaChoThue` int(11) NOT NULL,
  `DienTich` double NOT NULL,
  `GiaDien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `GiaNuoc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DoiTuong` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `TienIch` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGianDang` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gia_phong_tro`
--

INSERT INTO `gia_phong_tro` (`IDPhongTro`, `user_name`, `TieuDe`, `KieuPhong`, `KieuVeSinh`, `GiaChoThue`, `DienTich`, `GiaDien`, `GiaNuoc`, `DoiTuong`, `TienIch`, `MoTa`, `ThoiGianDang`) VALUES
(59, 'admin', 'Cho thuê phòng nhà 32, ngõ 36, Lê Thanh Nghị, Hai Bà Trưng, Hà Nội', 'Phòng trọ', 'Khép kín', 3600000, 24, '3300đ/số', '20.000/số', 'Sinh viên', 'Điều hòa, nóng lạnh, ti vi, tủ lạnh', '12344', '2020-12-08 23:31:00'),
(60, 'admin', 'abc', 'Phòng trọ', 'Khép kín', 12, 1212, '12', '12', 'Sinh viên', '1212', 'sass oo', '2020-12-08 23:50:15'),
(61, 'admin', '2323', 'Ở ghép', 'Khép kín', 2323, 232323, '2323', '2323', 'Sinh viên', '232323', '23232323', '2020-12-09 00:00:24'),
(62, 'admin', '2344', 'Nhà nguyên căn', 'Khép kín', 232323, 2323, '2323', '2323', 'Sinh viên', '232323', '23232323', '2020-12-09 00:01:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_phong_tro`
--

CREATE TABLE `hinh_anh_phong_tro` (
  `IDimage` int(11) NOT NULL,
  `IDPhongTro` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh_phong_tro`
--

INSERT INTO `hinh_anh_phong_tro` (`IDimage`, `IDPhongTro`, `DuongDan`) VALUES
(55, 59, 'uploads/1_743bd.jpg'),
(56, 60, 'uploads/854911.jpg'),
(57, 61, 'uploads/1.png'),
(58, 62, 'uploads/33.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_name`, `password`) VALUES
('admin', '123456'),
('admin2', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`);

--
-- Chỉ mục cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDPhongTro` (`IDPhongTro`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD CONSTRAINT `gia_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gia_phong_tro_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD CONSTRAINT `hinh_anh_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
