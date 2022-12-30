-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 30, 2022 lúc 04:22 PM
-- Phiên bản máy phục vụ: 5.7.40
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom5`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Oppo'),
(2, 'Samsung'),
(3, 'Dell'),
(4, 'Asus'),
(5, 'razer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `product_id`, `product_name`, `address`, `phone`, `quantity`, `total`, `note`, `date_created`) VALUES
(1, 2, 3, 'Galaxy Book 2 Pro 15.6', '72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1', '0909788800', 2, 51000000, '', '2022-12-01 10:00:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'OPPO Reno8 Pro 5G', 1, 1, 18990000, 'OPPO Reno8 Pro 5G.jpg', 'Màn hình:\n\nAMOLED6.7\"Full HD+\nHệ điều hành:\n\nAndroid 12\nCamera sau:\n\nChính 50 MP & Phụ 8 MP, 2 MP\nCamera trước:\n\n32 MP\nChip:\n\nMediaTek Dimensity 8100 Max 8 nhân\nRAM:\n\n12 GB\nDung lượng lưu trữ:\n\n128GB\nSIM:\n\n2 Nano SIMHỗ trợ 5G\nPin, Sạc:\n\n4500 mAh80 W', 0, '2022-10-29 15:51:07'),
(2, 'OPPO A55', 1, 1, 4190000, 'OPPO Reno8 Pro 5G.jpg', 'Màn hình:\r\n\r\nIPS LCD6.5\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nMediaTek Helio G35\r\nRAM:\r\n\r\n4 GB\r\nDung lượng lưu trữ:\r\n\r\n64 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 1, '2022-10-29 15:56:46'),
(3, 'Galaxy Book 2 Pro 15.6', 2, 2, 25500000, 'Galaxy Book 2 Pro 15.6.jpeg', 'Vi xử lý (CPU): Intel Core i5-1240P\r\nRAM: 8GB\r\nLưu trữ: SSD 512GB\r\nCard đồ họa (GPU): Intel® Iris® Xe Graphics\r\nMàn hình: 15.6″, 1920 x 1080 px, AMOLED,100%% sRGB, 60 Hz\r\nCổng giao tiếp: Thunderbolt™ 4 (1), USB Type-C (1), USB 3.2 (1), HDMI (1), 3.5pi Headphone/Mic, microSD,\r\nnano SIM (Optional) slot\r\nWebcam: FHD 1080p/Dual Array Mic\r\nCông nghệ âm thanh: Sound by AKG\r\nTrọng lượng: 1.11kg (Internal Graphic); 1.17kg (External Graphic)\r\nHệ điều hành: Windows 11 Home', 1, '2020-10-04 16:00:24'),
(4, 'Galaxy Book 2 360', 2, 2, 28500000, 'Galaxy Book 2 360.webp', 'Vi xử lý (CPU): Intel Core i7\r\n\r\nRAM: 16GB DDR4\r\n\r\nLưu trữ: SSD 512GB\r\n\r\nCard đồ họa (GPU): Intel® Iris® Xe Graphics\r\n\r\nMàn hình: 13.3″, 1920 x 1080 px, Super AMOLED, Cảm ứng, 100%% sRGB, 60 Hz\r\n\r\nCổng giao tiếp: Thunderbolt™ 4 (1), USB Type-C (1), USB 3.2 (1), HDMI (1), 3.5pi Headphone/Mic, microSD\r\n\r\nWebcam: FHD 720p/Dual Array Mic\r\n\r\nCông nghệ âm thanh: Sound by AKG\r\n\r\nTrọng lượng: 1.11kg\r\n\r\nHệ điều hành: Windows 11', 0, '2021-10-20 16:05:17'),
(5, 'Loa Vi Tính 2.0 DELL AX210', 3, 3, 230000, 'Loa Vi Tính 2.0 DELL AX210.jpg', 'Thông số kỹ thuật:\r\n\r\n-Thương hiệu: DELL\r\n-Model: AX210\r\n-Chất liệu: nhựa ABS\r\n-Công suất đầu ra : 1.2W x 2\r\n-Kênh: 2.0\r\n-Tần số đáp ứng: 100Hz - 20KHz\r\n-Tích hợp bộ khuếch đại âm thanh\r\n-Công nghệ xử lý âm thanh sonic master\r\n-Âm thanh surround\r\n-Dùng làm loa ngoài cho: desktop, laptop, AV Player qua cổng AUX 3.5mm\r\n-Điện áp sạc: DC 5V/ 0.5A\r\n-Kích thước (DxRxC) ): 10 x 8x 15 (cm)\r\n-Bảo hành: 03 tháng ( theo tem)', 1, '2022-10-19 16:09:16'),
(6, 'Loa Vi Tính 2.0 Dell A225', 3, 3, 270000, 'Loa Vi Tính 2.0 Dell A225.jpg', 'Thông số kỹ thuật:\r\n\r\n-Thương hiệu: DELL\r\n-Model: A225\r\n-Chất liệu: nhựa ABS + hợp kim\r\n-Công suất: 2 x 1.2 watt (RMS)\r\n-Kênh: 2.0\r\n-Kích thước loa trong: 2.5\" x 2 + 7\"\r\n-Tần số hoạt động:  100HZ-20KHZ\r\n-Cổng kết nối USB\r\n-AUX: ngõ vào âm thanh\r\n-Điện áp sạc: DC 5V/ 0.5A\r\n-Trọng lượng: 630gr\r\n-Tiêu chuẩn chất lượng : CE\r\n-Xuất xứ: Trung Quốc\r\n-Bảo hành: 6 tháng ( theo tem)', 0, '2022-09-22 16:11:21'),
(7, 'Chuột máy tính - Mouse Asus ROG Gladius II', 4, 4, 1100000, 'Chuột máy tính - Mouse Asus ROG Gladius II.jpg', 'Chuột không dây Asus ROG Gladius IIlà phiên bản nâng cấp của ROG Gladiusthế hệ đầu tiên, là bước tiến tiếp theo trong nấc thang phát triển của dòng chuột gaming cao cấp\nROG Gladius IIđược Asus giữ nguyên kích thước như phiên bản đầu tiên mang đến sự thoải mái, đạt hiệu suất tối đa với nhiều cách cầm chuột khác nhau từ Palm, Claw đến Fingerrip phù hợp cho mọi game thủ với nhiều phong cách cầm chuột khác nhau\n\nBề mặt chuột làm bằng chất liệu nhựa, chiều cao 4.5 cm cùng các cạnh được bo cong mềm mại ôm tay thoải mái ngay cả khi sử dụng trong thời gian dài mà không hề có hiện tượng bị mỏi tay khi rê chuột\n\n\n', 1, '2022-10-10 16:14:21'),
(8, 'Chuột Không dây Bluetooth Gaming Asus TUF M4 WL', 4, 4, 1010000, 'Chuột Không dây Bluetooth Gaming Asus TUF M4 WL.jpg', '• Chuột có cảm biến quang học 12.000 DPI chuẩn gaming để di chuột chính xác từng điểm ảnh, cùng với nút DPI để điều chỉnh bốn cấp độ nhạy một cách nhanh chóng.\r\n\r\n• Sử dụng được trên nhiều bề mặt khác nhau mà không cần dùng đến tấm lót chuột chuyên dụng, tạo nên tính linh hoạt cao cho sản phẩm.\r\n\r\n• Chuột không dây có hai chế độ kết nối thông qua chuẩn USB receiver 2.4 GHz và Bluetooth mang lại độ ổn định tuyệt vời.', 1, '2022-10-17 16:17:20'),
(9, 'Tai nghe Razer Hammerhead True Wireless X', 5, 5, 1289000, 'Tai nghe Razer Hammerhead True Wireless X.jpg', 'Tai nghe Razer Hammerhead True Wireless X\nKết nối bluetooth 5.2 với tính năng tự động kết nối\nĐộ trễ cực thấp, chỉ 60ms tuyệt vời cho gaming\nTai nghe True Wireless thế hệ mới nhất\nTần số đáp ứng 20 - 20.000 Hz với củ loa 13mm mới nhất\nThời lượng pin lên tới 28h(7+21) khi tắt LED\nHỗ trợ tính năng Google Fast Pair\nHỗ trợ touch control', 1, '2022-10-26 16:19:51'),
(10, 'Tai nghe Razer Opus X - Quartz', 5, 5, 1490000, 'Tai nghe Razer Opus X - Quartz.webp', 'Thông số kỹ thuật\n\nThương hiệu	Razer\nModel	Opus X\nMàu	Hồng\nChất liệu	Da Protein / Nylon\nKhử ồn	Khử tiếng ồn chủ động\nKết nối	Không dây qua Bluetooth 5.0\nCáp sạc	Cáp sạc USB-A sang USB-C dài 0,5m\nTrọng lượng	270g\nMicro	2 cho công nghệ khử tiếng ồn chủ động, 2 cho trò chuyện thoại\nThời lượng pin	Lên đến 30 giờ khi bật ANC (tối đa 40 giờ khi tắt ANC)', 0, '2022-10-28 16:22:02'),
(11, 'Samsung Galaxy S21 FE 5G', 2, 2, 899000, 'Samsung Galaxy S21 FE 5G.jpg', 'Màn hình:\n\nDynamic AMOLED 2X6.4\"Full HD+\nHệ điều hành:\n\nAndroid 12\nCamera sau:\n\nChính 12 MP & Phụ 12 MP, 8 MP\nCamera trước:\n\n32MP\nChip:\n\nExynos 2100\nRAM:\n\n8GB\nDung lượng lưu trữ:\n\n128GB\nSIM:\n\n2 Nano SIMHỗ trợ 5G\nPin, Sạc:\n\n4500 mAh25 W', 1, '2022-10-09 16:48:23'),
(12, 'OPPO Reno7 Z 5G', 1, 1, 9990000, 'OPPO Reno7 Z 5G.jpg', 'Bộ nhớ trong: 128 GB\r\nCamera sau: Chính 64 MP & Phụ 2 MP, 2 MP\r\nCamera trước: 16 MP\r\nCPU: Snapdragon 695 5G 8 nhân\r\nDung lượng pin: 4500 mAh - Hỗ trợ sạc 33w\r\nMàn hình: 6.43\" AMOLED - Tần số quét 60 Hz Full HD+ (1080 x 2400 Pixels)\r\nRAM: 8 GB\r\nThẻ SIM: 2 Nano SIM (SIM 2 chung khe thẻ nhớ) Hỗ trợ 5G\r\nTrọng lượng: Dài 159.85 mm - Ngang 73.17 mm - Dày 7.49 mm - Nặng 173 g\r\nThương hiệu: Oppo\r\nThiết kế: Nguyên khối\r\nChất liệu mặt: Khung nhựa & Mặt lưng thuỷ tinh hữu cơ\r\nCổng kết nối: Type-C', 1, '2022-12-14 11:14:21'),
(13, 'Điện thoại OPPO A17 ', 1, 1, 3990000, 'Điện thoại OPPO A17 .jpg', 'Màn hình\r\nCông nghệ màn hình: IPS LCD\r\nĐộ phân giải: HD+ (720 x 1612 Pixels)\r\nMàn hình rộng: 6.56\" - Tần số quét 60Hz\r\nĐộ sáng tối đa: 600nits\r\nMặt kính cảm ứng: Kính cường lực Panda', 0, '2022-12-19 11:22:18'),
(14, 'OPPO A15s', 1, 1, 3490000, 'Điện thoại OPPO A15s.jpg', 'Màn hình\r\nCông nghệ màn hình: IPS LCD\r\nĐộ phân giải: HD+ (720 x 1600 Pixels)\r\nMàn hình rộng: 6.52\" - Tần số quét 60Hz\r\nĐộ sáng tối đa: 480nits\r\nMặt kính cảm ứng: Kính cường lực Corning Gorilla Glass 3', 1, '2021-12-10 11:26:32'),
(15, 'Samsung Galaxy Book Flex 2', 2, 2, 7677000, 'Samsung Galaxy Book Flex 2.jpg', 'Bản 13.3 inch có đồ họa Intel Iris Xe tích hợp, trong khi bản 15.6 inch sở hữu đồ họa NVIDIA MC450. Galaxy Book Flex 2 có thể được cấu hình với RAM LPDDR4X lên đến 16 GB và SSD lên đến 1 TB.', 1, '2021-12-23 11:28:12'),
(16, 'Samsung Galaxy Book 2 Pro 15 (2022)', 2, 2, 43990000, 'Samsung Galaxy Book 2 Pro 15 (2022).jpg', 'CPU: 12th Generation Intel Core™ i7-1260P Processor(2.1GHz up to 4.6GHz, 18MB Cache)\r\nRam: 32GB LPDDR5 5200MHz\r\nỔ cứng: 1TB M.2 PCIe NVMe Solid State Drive (M.2 SSD)\r\nMàn hình: 15.6″ FHD AMOLED Display (1920 x 1080)\r\nCard đồ hoạ: Intel® ArcTM A350M Graphics\r\nTình trạng: Hàng New, Nguyên Seal, Nhập Khẩu', 1, '2020-12-23 11:34:08'),
(17, 'Samsung Galaxy Book 2 Pro 13.3” (2022)', 2, 2, 29990000, 'Samsung Galaxy Book 2 Pro 13.3” (2022).jpg', 'CPU: 12th Generation Intel Core™ i7-1260P Processor(2.1GHz up to 4.6GHz, 18MB Cache)\r\nRam : 8GB LPDDR5 5200MHz\r\nỔ cứng : 512GB M.2 PCIe NVMe Solid State Drive (M.2 SSD)\r\nMàn hình : 13.3″ FHD AMOLED Display (1920 x 1080)\r\nCard đồ hoạ : Intel Iris Xe Graphics\r\nTình trạng : Hàng New, Nguyên Seal, Nhập Khẩu', 0, '2017-10-11 11:37:52'),
(18, 'Loa DELL AY 410 2.1', 3, 3, 350000, 'Loa DELL AY 410.png', 'Hãng sản xuất: DELL\r\nKiểu: 2.1\r\nCông suất(W): 33W\r\nDải tần: 65 - 17000Hz\r\n', 0, '2021-10-20 16:05:17'),
(19, 'Chuột ASUS ROG Keris Wireless', 4, 4, 1779000, 'Chuột ASUS ROG Keris Wireless.webp', 'Thông tin chung\r\nNhà sản xuất: Asus\r\nTình trạng: Mới 100%\r\nBảo hành: 24 Tháng\r\nKết nối: Có dây/ Wireless 2.4 GHz/ Bluetooth\r\n ', 1, '2022-10-29 15:56:46'),
(20, 'Chuột Asus TUF Gaming M4 Air', 4, 4, 850000, 'Chuột Asus TUF Gaming M4 Air.webp', 'Thông tin chung:\r\nNhà sản xuất: ASUS\r\nTình trạng: Mới\r\nBảo hành: 24 tháng \r\nMàu sắc: Đen', 0, '2022-10-19 16:09:16'),
(21, 'Chuột Asus ROG Strix Impact II Electro Punk', 4, 4, 890000, 'Chuột Asus ROG Strix Impact II Electro Punk.webp', 'Thông tin chung:\r\nHãng sản xuất: Asus\r\nTình trạng: Mới\r\nBảo hành: 24 Tháng', 1, '2022-10-19 16:09:16'),
(22, 'Tai nghe Razer Kraken V3', 5, 5, 2450000, 'Tai nghe Razer Kraken V3.webp', 'Tần số phản hồi	20 Hz – 20 kHz\r\nTrở kháng	32 Ω (1 kHz)\r\nĐộ nhạy cảm	96 dBSPL / mW @ 1 KHz (HATS)\r\nKích thước driver	50 mm\r\nTrình điều khiển	Razer TriForce Titanium\r\nChụp tai	Chụp tai hình bầu dục\r\nKích thước earcup bên trong	62 mm x 42 mm\r\nChất liệu	Vải truyền nhiệt / Giả da / Bọt hoạt tính\r\nKhử ồn	Khử tiếng ồn thụ động\r\nKiểu kết nối	USB-A\r\nChiều dài cáp	1,3 m / 4,27 ft\r\nTrọng lượng	325 g / 0,71 lbs\r\nMicrophone Cardioid HyperClear có thể tháo rời\r\nTính định hướng	Đơn hướng\r\nTần số microphone	100 Hz - 10 kHz\r\nĐộ nhạy microphone	-42 ± 3 dB\r\nÂm thanh vòm ảo	THX Spatial Audio\r\nĐiều chỉnh âm lượng	Tăng giảm âm lượng\r\nĐiều chỉnh khác	Bật / tắt microphone\r\nThời gian sử dụng pin	Không\r\nĐèn	Razer Chroma RGB	\r\n', 1, '2021-10-20 16:05:17'),
(23, 'Tai nghe Razer Barracuda Pro', 5, 5, 6490000, 'Tai nghe Razer Barracuda Pro.webp', 'Thương hiệu	Razer\r\nModel	Razer Barracuda Pro\r\nMàu sắc	Đen\r\nKiểu tai nghe	Over-ear\r\nKết nối	USB-C, Wireless (2.4GHz), Bluetooth\r\nTrở kháng	 32ohm (1 kHz)\r\nĐộ nhạy	Tai nghe: 96dBSPL\r\nMicro: 38 ± 1dB\r\nThời lượng pin	\r\nLên đến 40 giờ\r\nTần số	Tai nghe: 20Hz – 20000Hz\r\nMicro: 100Hz – 10000Hz\r\nMicrophone	Chống ồn Dual Integrated ECM Beamforming, có thể tháo rời\r\nKhả năng cách âm	Có', 0, '2022-09-22 16:11:21'),
(24, 'Tai nghe Razer Barracuda X Mercury', 5, 5, 1590000, 'Tai nghe Razer Barracuda X Mercury.webp', 'Thương hiệu:	Razer\r\nModel:	Razer Barracuda X Mercury\r\nMàu sắc:	Trắng\r\nKiểu tai nghe:	Over-ear\r\nKiểu kết nối:	Không dây - có dây\r\nĐèn LED:	Không\r\nTần số:	Tai nghe: 20Hz – 20000Hz\r\nMicro: 100Hz - 10000Hz\r\nĐộ nhạy:	Tai nghe: 96dBSPL\r\nMicro: -42 ± 3dB\r\nTrở kháng:	32 ohm (1kHz)', 1, '2022-10-19 16:09:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Loa'),
(4, 'Chuột'),
(5, 'Tai nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'Thanh Thanh', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'Minh Tho', 'e10adc3949ba59abbe56e057f20f883e', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
