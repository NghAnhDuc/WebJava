-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2022 lúc 12:16 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mt_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(4, 24, 3, 1, 200000),
(5, 11, 3, 1, 200000),
(6, 7, 4, 1, 200000),
(7, 11, 4, 2, 400000),
(8, 12, 5, 1, 200000),
(9, 1, 6, 1, 20000),
(10, 10, 6, 1, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(3, 'test@gmail.com', '0899345766', 'Duc Nghiem', '123', 400000, 2, 'hi'),
(4, 'test@gmail.com', '0899345766', 'Duc Nghiem', '123', 600000, 3, '123123'),
(5, 'test@gmail.com', '0899345766', 'Duc Nghiem', '123', 200000, 1, 'test 2'),
(6, 'test@gmail.com', '0899345766', 'Duc Nghiem', '123', 220000, 2, 'test 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Watch', NULL),
(2, 'Bracelet', NULL),
(3, 'Ring', NULL),
(4, 'Necklace', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Vàng', '#FFFF00', 'a.jpg'),
(2, 1, 'Xanh', '#FFFF00', 'b.jpg'),
(3, 2, 'Vàng', '#FFFF00', 'c.jpg'),
(4, 2, 'Xanh', '#FFFF00', 'd.jpg'),
(5, 5, 'Vàng', '#FFFF00', 'e.jpg'),
(6, 6, 'Vàng', '#FFFF00', 'g.jpg'),
(7, 7, 'Vàng', '#FFFF00', 'h.jpg'),
(8, 8, 'Vàng', '#FFFF00', 'i.jpg'),
(9, 9, 'Vàng', '#FFFF00', 'b.jpg'),
(10, 10, 'Vàng', '#FFFF00', 'b.jpg'),
(11, 11, 'Vàng', '#FFFF00', 'b.jpg'),
(12, 12, 'Vàng', '#FFFF00', 'b.jpg'),
(13, 13, 'Vàng', '#FFFF00', 'b.jpg'),
(14, 14, 'Vàng', '#FFFF00', 'b.jpg'),
(15, 15, 'Vàng', '#FFFF00', 'b.jpg'),
(16, 16, 'Vàng', '#FFFF00', 'b.jpg'),
(17, 17, 'Vàng', '#FFFF00', 'b.jpg'),
(18, 18, 'Vàng', '#FFFF00', 'b.jpg'),
(19, 19, 'Vàng', '#FFFF00', 'b.jpg'),
(20, 20, 'Vàng', '#FFFF00', 'b.jpg'),
(21, 21, 'Vàng', '#FFFF00', 'b.jpg'),
(22, 22, 'Vàng', '#FFFF00', 'b.jpg'),
(23, 23, 'Vàng', '#FFFF00', 'b.jpg'),
(24, 24, 'Vàng', '#FFFF00', 'b.jpg'),
(25, 25, 'Vàng', '#FFFF00', 'b.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'L,M,S', 'Manicure & Pedicure', 20000, 0, 'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...', 1, 0, '<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Product Information</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>', '2020-04-09 11:38:43', '2020-04-09 11:47:31'),
(2, 1, 'L,S,M', 'Lắc tay Kim cương Vàng trắng 14K PNJ First Diamond', 200000, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ First Diamond DD', 1, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ First Diamond DD', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, 'L,S,M', 'Lắc tay Kim cương Vàng trắng 14K PNJ DD00W000018', 200000, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ DD00W000018', 1, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ DD00W000018', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, 'L,S,M', 'Vòng tay Kim cương Vàng 18K PNJ DDDDC000001', 200000, 0, 'Vòng tay Kim cương Vàng 18K PNJ DDDDC000001', 1, 0, 'Vòng tay Kim cương Vàng 18K PNJ DDDDC000001', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, 'L,S,M', 'Lắc tay kim cương Vàng trắng 14K PNJ DDDDW000086', 200000, 0, 'Lắc tay kim cương Vàng trắng 14K PNJ DDDDW000086', 1, 0, 'Lắc tay kim cương Vàng trắng 14K PNJ DDDDW000086', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, 'L,S,M', 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000053', 200000, 0, 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000053', 1, 0, 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000053', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, 'L,S,M', 'Lắc tay Kim cương Vàng trắng 14K PNJ DDDDW000260', 200000, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ DDDDW000260', 1, 0, 'Lắc tay Kim cương Vàng trắng 14K PNJ DDDDW000260', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, 'L,S,M', 'Vỏ vòng tay Kim cương Vàng trắng 18K PNJ 00DDW000276', 200000, 0, 'Vỏ vòng tay Kim cương Vàng trắng 18K PNJ 00DDW000276', 1, 0, 'Vỏ vòng tay Kim cương Vàng trắng 18K PNJ 00DDW000276', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, 'L,S,M', 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000052', 200000, 0, 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000052', 1, 0, 'Vỏ lắc tay Kim cương Vàng trắng 18K PNJ 00DDW000052', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, 'L,S,M', 'Mặt dây chuyền Bạc đính đá STYLE By PNJ XMXMX000001', 200000, 0, 'Mặt dây chuyền Bạc đính đá STYLE By PNJ XMXMX000001', 1, 0, 'Mặt dây chuyền Bạc đính đá STYLE By PNJ XMXMX000001', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 2, 'L,S,M', 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ True Love XMXMY004970', 200000, 0, 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ True Love XMXMY004970', 1, 0, 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ True Love XMXMY004970', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 2, 'L,S,M', 'Mặt dây chuyền Vàng 18K đính đá ECZ PNJ XM00Y001547', 200000, 0, 'Mặt dây chuyền Vàng 18K đính đá ECZ PNJ XM00Y001547', 1, 0, 'Mặt dây chuyền Vàng 18K đính đá ECZ PNJ XM00Y001547', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 2, 'L,S,M', '\r\nMặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW060511', 200000, 0, '\r\nMặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW060511', 0, 1, '\r\nMặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW060511', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 4, 'L,S,M', 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMY000955', 200000, 0, 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMY000955', 0, 1, 'Mặt dây chuyền Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMY000955', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 4, 'L,S,M', 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMW000098', 200000, 0, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMW000098', 0, 1, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ Sứ giả mùa xuân ZTXMW000098', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 4, 'L,S,M', 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001807', 200000, 0, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001807', 0, 1, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001807', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 4, 'L,S,M', 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001834', 200000, 0, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001834', 0, 1, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001834', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 4, 'L,S,M', 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001833', 200000, 0, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001833', 0, 1, 'Mặt dây chuyền Vàng trắng 10K đính đá ECZ PNJ XMXMW001833', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 3, 'L,S,M', 'Mặt dây chuyền Nam Vàng trắng 10K đính đá ECZ PNJ XM00W000599', 200000, 0, 'Mặt dây chuyền Nam Vàng trắng 10K đính đá ECZ PNJ XM00W000599', 0, 1, 'Mặt dây chuyền Nam Vàng trắng 10K đính đá ECZ PNJ XM00W000599', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(20, 3, 'L,S,M', 'Dây cổ Vàng 10K đính đá ECZ Disney|PNJ XM00H000033', 200000, 0, 'Dây cổ Vàng 10K đính đá ECZ Disney|PNJ XM00H000033', 0, 1, 'Dây cổ Vàng 10K đính đá ECZ Disney|PNJ XM00H000033', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(21, 3, 'L,S,M', 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060123', 200000, 0, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060123', 0, 1, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060123', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 3, 'L,S,M', 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060122', 200000, 0, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060122', 0, 1, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060122', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 3, 'L,S,M', 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060121', 200000, 0, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060121', 0, 1, 'Dây cổ trẻ em Vàng trắng 10K đính đá ECZ PNJ XMXMW060121', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 2, 'L,S,M', 'Dây cổ Vàng trắng 10K đính đá ECZ PNJ XMXMW000248', 200000, 0, 'Dây cổ Vàng trắng 10K đính đá ECZ PNJ XMXMW000248', 0, 1, 'Dây cổ Vàng trắng 10K đính đá ECZ PNJ XMXMW000248', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 2, 'L,S,M', 'Dây cổ Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân XMXMY000454', 200000, 0, 'Dây cổ Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân XMXMY000454', 0, 1, 'Dây cổ Vàng 10K đính đá ECZ PNJ Sứ giả mùa xuân XMXMY000454', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(35, 2, '', 'name 123', 110.5, 0, 'zxc', 0, 1, '', '2022-03-31 05:11:41', '2022-03-31 05:11:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'carousel1.png', 'Hinh 1', 'Compitable to many more opensource cart'),
(2, 'bootstrap_free-ecommerce.png', 'Hinh 2', 'Very clean simple to use'),
(3, 'carousel3.png', 'Hinh 3', 'Highly Google seo friendly'),
(4, 'bootstrap-templates.png', 'Hinh 4', 'Compitable to many more opensource cart');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(212, 'test@gmail.com', '$2a$12$uVpd.Exhkn3P.dR/0JBDyOPCCOs81s33nP9LqKcsgUxiKTTQU9vQK', 'Duc Nghiem', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
