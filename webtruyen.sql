-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2022 lúc 04:22 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name_author`, `img_author`, `country_author`, `date_author`, `created_at`, `updated_at`) VALUES
(1, 'Oda Eiichiro', '14513.jpg', 'Nhật Bản', '1975-01-14', '2022-05-12 02:58:30', '2022-05-12 02:58:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviets`
--

CREATE TABLE `baiviets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_bv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_bv` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh_bv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmtruyens`
--

CREATE TABLE `dmtruyens` (
  `id` int(10) UNSIGNED NOT NULL,
  `danhmuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugdm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmtruyens`
--

INSERT INTO `dmtruyens` (`id`, `danhmuc`, `slugdm`, `created_at`, `updated_at`) VALUES
(1, 'Truyện Anime', 'truyen-anime', '2022-05-12 02:59:40', '2022-05-12 02:59:40'),
(2, 'Truyện Ma Ám', 'truyen-ma-am', '2022-05-12 02:59:42', '2022-05-12 02:59:42'),
(3, 'Truyện thiếu Nhi', 'truyen-thieu-nhi', '2022-05-12 02:59:47', '2022-05-12 02:59:47'),
(4, 'Truyện Ma', 'truyen-ma', '2022-05-12 02:59:56', '2022-05-12 02:59:56'),
(5, 'Truyện Việt Nam', 'truyen-viet-nam', '2022-05-12 03:00:04', '2022-05-12 03:00:04'),
(6, 'Truyện Kiếm Hiệp', 'truyen-kiem-hiep', '2022-05-12 03:00:45', '2022-05-12 03:00:45'),
(7, 'Truyện kinh Dị', 'truyen-kinh-di', '2022-05-12 03:00:52', '2022-05-12 03:00:52'),
(8, 'Truyện Lịch Sử', 'truyen-lich-su', '2022-05-12 03:00:59', '2022-05-12 03:00:59'),
(9, 'Truyện Trinh Thám', 'truyen-trinh-tham', '2022-05-12 03:02:34', '2022-05-12 03:02:34'),
(10, 'Truyện Hành Động', 'truyen-hanh-dong', '2022-05-12 03:03:15', '2022-05-12 03:03:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(85, '2014_10_12_100000_create_password_resets_table', 1),
(86, '2019_08_19_000000_create_failed_jobs_table', 1),
(87, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(88, '2022_03_16_134831_create_users_table', 1),
(89, '2022_03_16_185715_create_dmtruyens_table', 1),
(90, '2022_03_16_224438_create_baiviets_table', 1),
(91, '2022_03_25_161113_create_publishings_table', 1),
(92, '2022_03_26_015739_create_products_table', 1),
(93, '2022_04_07_160733_create_banners_table', 1),
(94, '2022_04_10_175532_create_authors_table', 1),
(95, '2022_04_10_190609_create_sessions_table', 1),
(96, '2022_04_23_132839_create_theloais_table', 1),
(97, '2022_05_07_175745_create_thuocdanhs_table', 1),
(98, '2022_05_07_175754_create_thuocloais_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kichhoat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `theloai_id` int(10) UNSIGNED NOT NULL,
  `danhmuc_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name_product`, `img_product`, `slug_product`, `content_product`, `kichhoat`, `hot`, `tinhtrang`, `id_author`, `theloai_id`, `danhmuc_id`, `created_at`, `updated_at`) VALUES
(1, 'One Piece', '877.jpg', 'one-piece', '<p><em><strong>One Piece&nbsp;</strong></em>(ワンピース&nbsp;<em>Wan Pīsu</em><a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%A3_gi%C3%BAp:Ti%E1%BA%BFng_Nh%E1%BA%ADt\" title=\"Trợ giúp:Tiếng Nhật\"><sup>?</sup></a>), từng được xuất bản tại Việt Nam dưới t&ecirc;n gọi&nbsp;<strong>Đảo Hải Tặc</strong>&nbsp;l&agrave; bộ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Manga\" title=\"Manga\">manga</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Sh%C5%8Dnen_manga\" title=\"Shōnen manga\">d&agrave;nh cho lứa tuổi thiếu ni&ecirc;n</a>&nbsp;của t&aacute;c giả&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Oda_Eiichiro\" title=\"Oda Eiichiro\">Oda Eiichiro</a>, được đăng định k&igrave; tr&ecirc;n tạp ch&iacute;&nbsp;<em><a href=\"https://vi.wikipedia.org/wiki/Weekly_Sh%C5%8Dnen_Jump\" title=\"Weekly Shōnen Jump\">Weekly Shōnen Jump</a></em>, ra mắt lần đầu tr&ecirc;n ấn bản số 34 v&agrave;o ng&agrave;y 19 th&aacute;ng 7 năm 1997. Bản&nbsp;<em><a href=\"https://vi.wikipedia.org/wiki/Tank%C5%8Dbon\" title=\"Tankōbon\">tankōbon</a></em>&nbsp;của truyện do&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Sh%C5%ABeisha\" title=\"Shūeisha\">Shueisha</a>&nbsp;ph&aacute;t h&agrave;nh với tập đầu ti&ecirc;n v&agrave;o ng&agrave;y 24 th&aacute;ng 12 năm 1997. One Piece kể về cuộc h&agrave;nh tr&igrave;nh của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Monkey_D._Luffy\" title=\"Monkey D. Luffy\">Monkey D. Luffy</a>&nbsp;- thuyền trưởng của băng hải tặc Mũ Rơm v&agrave; c&aacute;c đồng đội của cậu. Luffy t&igrave;m kiếm v&ugrave;ng biển b&iacute; ẩn nơi cất giữ kho b&aacute;u lớn nhất thế giới One Piece, với mục ti&ecirc;u trở th&agrave;nh T&acirc;n Vua Hải Tặc.</p>\r\n\r\n<p>One Piece cũng được chuyển thể sang một v&agrave;i loại h&igrave;nh truyền th&ocirc;ng kh&aacute;c nhau. Một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/OVA\" title=\"OVA\">OVA</a>&nbsp;được h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Production_I.G\" title=\"Production I.G\">Production I.G</a>&nbsp;sản xuất v&agrave;o năm 1998. Tiếp đ&oacute;, phi&ecirc;n bản anime d&agrave;i tập do h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Toei_Animation\" title=\"Toei Animation\">Toei Animation</a>&nbsp;thực hiện, bắt đầu l&ecirc;n s&oacute;ng truyền h&igrave;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%E1%BA%ADt_B%E1%BA%A3n\" title=\"Nhật Bản\">Nhật Bản</a>&nbsp;v&agrave;o năm 1999. Toei cũng sản xuất 11 phim hoạt h&igrave;nh, một OVA v&agrave; 5 chương tr&igrave;nh truyền h&igrave;nh đặc biệt li&ecirc;n quan. Một v&agrave;i c&ocirc;ng ty đ&atilde; ph&aacute;t triển nhiều sản phẩm kh&aacute;c dựa v&agrave;o truyện như thẻ game,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Video_game\" title=\"Video game\">video game</a>. Bộ manga phi&ecirc;n bản tiếng Anh được cấp ph&eacute;p cho h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Viz_Media&amp;action=edit&amp;redlink=1\" title=\"Viz Media (trang không tồn tại)\">Viz Media</a>&nbsp;ph&aacute;t h&agrave;nh ở thị trường&nbsp;<a href=\"https://vi.wikipedia.org/wiki/B%E1%BA%AFc_M%E1%BB%B9\" title=\"Bắc Mỹ\">Bắc Mỹ</a>, h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Gollancz_Manga&amp;action=edit&amp;redlink=1\" title=\"Gollancz Manga (trang không tồn tại)\">Gollancz Manga</a>&nbsp;ở&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Anh_Qu%E1%BB%91c\" title=\"Anh Quốc\">Anh Quốc</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Madman_Entertainment\" title=\"Madman Entertainment\">Madman Entertainment</a>&nbsp;ở&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>. Ở Bắc Mỹ, bộ anime được cấp ph&eacute;p bản địa h&oacute;a v&agrave; ph&acirc;n phối bằng tiếng Anh bởi h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Funimation_Entertainment\" title=\"Funimation Entertainment\">Funimation Entertainment</a>.</p>\r\n\r\n<p>Trong năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2008\" title=\"2008\">2008</a>, One Piece trở th&agrave;nh bộ manga c&oacute; số lượng ph&aacute;t h&agrave;nh kỷ lục. Năm 2010,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Shueisha\" title=\"Shueisha\">Shueisha</a>&nbsp;th&ocirc;ng b&aacute;o họ đ&atilde; b&aacute;n hơn 260 triệu tập One Piece, tập 61 lập kỷ lục số lượng in s&aacute;ch tại Nhật Bản với 3,8 triệu bản in (kỷ lục cũ thuộc về tập 60 với 3.4 triệu bản in). Theo h&atilde;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Oricon\" title=\"Oricon\">Oricon</a>&nbsp;của Nhật Bản, tập 60 l&agrave; sản phẩm s&aacute;ch đầu ti&ecirc;n b&aacute;n được hơn 2 triệu bản trong tuần đầu ph&aacute;t h&agrave;nh.<sup><a href=\"https://vi.wikipedia.org/wiki/One_Piece#cite_note-1\">[1]</a></sup>&nbsp;One Piece hiện được đ&aacute;nh gi&aacute; l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_manga_b%C3%A1n_ch%E1%BA%A1y_nh%E1%BA%A5t\" title=\"Danh sách manga bán chạy nhất\">bộ manga b&aacute;n chạy nhất</a>&nbsp;với số lượng người đọc rất cao, hơn 280 triệu tập được b&aacute;n ra tại Nhật Bản trong năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2012\" title=\"2012\">2012</a>. N&oacute; nhận được nhiều sự&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ph%C3%AA_b%C3%ACnh\" title=\"Phê bình\">ph&ecirc; b&igrave;nh</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Khen_ng%E1%BB%A3i\" title=\"Khen ngợi\">khen ngợi</a>&nbsp;nhờ phong c&aacute;ch vẽ, đặc điểm nh&acirc;n vật, sự&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0i\" title=\"Hài\">h&agrave;i hước</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%E1%BB%91t_truy%E1%BB%87n\" title=\"Cốt truyện\">cốt truyện</a>. Trong bảng xếp hạng 100 tập truyện tranh b&aacute;n chạy nhất đầu năm 2015, căn cứ v&agrave;o số lượng c&aacute;c tập s&aacute;ch được b&aacute;n ra của c&aacute;c nh&agrave; xuất bản, 2 tập 76 v&agrave; 77 của One Piece lần lượt được xếp v&agrave;o vị tr&iacute; qu&aacute;n qu&acirc;n v&agrave; &aacute; qu&acirc;n bảng xếp hạng, bỏ xa th&agrave;nh t&iacute;ch của c&aacute;c tập truyện nổi tiếng kh&aacute;c đang xếp ở c&aacute;c vị tr&iacute; tiếp theo.</p>\r\n\r\n<p>V&agrave;o năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2015\" title=\"2015\">2015</a>, t&aacute;c giả Oda Eiichiro v&agrave; bộ manga One Piece được ghi nhận v&agrave;o&nbsp;<a href=\"https://vi.wikipedia.org/wiki/S%C3%A1ch_K%E1%BB%B7_l%E1%BB%A5c_Guinness\" title=\"Sách Kỷ lục Guinness\">S&aacute;ch Kỷ lục Guinness</a>&nbsp;khi l&agrave; bộ truyện tranh do đơn&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%C3%A1c_gi%E1%BA%A3\" title=\"Tác giả\">t&aacute;c giả</a>&nbsp;s&aacute;ng t&aacute;c c&oacute; số bản&nbsp;<a href=\"https://vi.wikipedia.org/wiki/In\" title=\"In\">in</a>&nbsp;nhiều nhất&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BA%BF_gi%E1%BB%9Bi\" title=\"Thế giới\">thế giới</a>. Hiện tại, One Piece đang nắm giữ kỷ lục l&agrave; bộ manga b&aacute;n chạy nhất trong lịch sử. V&agrave;o&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C3%A1ng_5\" title=\"Tháng 5\">th&aacute;ng 5</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/2018\" title=\"2018\">2018</a>, con số ghi nhận được về lượng xuất bản của One Piece đ&atilde; đạt tới 440 triệu bản tr&ecirc;n to&agrave;n thế giới<sup><a href=\"https://vi.wikipedia.org/wiki/One_Piece#cite_note-2\">[2]</a></sup>.</p>\r\n\r\n<p>Phần sau đ&acirc;y c&oacute; thể cho bạn&nbsp;<strong>biết trước nội dung</strong>&nbsp;của t&aacute;c phẩm.</p>\r\n\r\n<p><a href=\"https://vi.wikipedia.org/wiki/T%E1%BA%ADp_tin:Monkey_D._Luffy,_post_time-skip,_OP.png\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/vi/thumb/2/25/Monkey_D._Luffy%2C_post_time-skip%2C_OP.png/220px-Monkey_D._Luffy%2C_post_time-skip%2C_OP.png\" style=\"height:468px; width:220px\" /></a></p>\r\n\r\n<p>Nh&acirc;n vật ch&iacute;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Monkey_D._Luffy\" title=\"Monkey D. Luffy\">Monkey D. Luffy</a>.</p>\r\n\r\n<p><br />\r\nC&acirc;u chuyện kể về&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Monkey_D._Luffy\" title=\"Monkey D. Luffy\">Monkey D. Luffy</a>, một ch&agrave;ng trai trẻ tuổi, được thần tượng thời thơ ấu của m&igrave;nh l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Shanks_%22T%C3%B3c_%C4%90%E1%BB%8F%22\" title=\"Danh sách nhân vật trong One Piece\">Shanks &quot;T&oacute;c Đỏ&quot;</a>&nbsp;truyền cảm hứng trở th&agrave;nh một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BA%A3i_t%E1%BA%B7c\" title=\"Hải tặc\">hải tặc</a>, bắt đầu cuộc h&agrave;nh tr&igrave;nh tại East Blue t&igrave;m kiếm kho b&aacute;u danh gi&aacute; v&agrave; trở th&agrave;nh T&acirc;n Vua Hải Tặc. Trong qu&aacute; tr&igrave;nh th&agrave;nh lập&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_c%C3%A1c_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#B%C4%83ng_h%E1%BA%A3i_t%E1%BA%B7c_M%C5%A9_R%C6%A1m\" title=\"Danh sách các nhân vật trong One Piece\">băng hải tặc Mũ Rơm</a>, Luffy đ&atilde; giải cứu v&agrave; kết bạn với một kiếm sĩ t&ecirc;n l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Roronoa_Zoro\" title=\"Roronoa Zoro\">Roronoa Zoro</a>(ロのノア ゾロ), v&agrave; họ bắt đầu t&igrave;m kiếm One Piece. Họ tham gia v&agrave;o cuộc h&agrave;nh tr&igrave;nh c&ugrave;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nami_(One_Piece)\" title=\"Nami (One Piece)\">Nami</a>(ナミ), một hoa ti&ecirc;u;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_c%C3%A1c_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Usopp\" title=\"Danh sách các nhân vật trong One Piece\">Usopp</a>(ウソプ), một tay thiện xạ;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vinsmoke_Sanji\" title=\"Vinsmoke Sanji\">Vinsmoke Sanji</a>(ヴィンスモク サンジ), một đầu bếp. Họ c&oacute; được một con t&agrave;u t&ecirc;n l&agrave;&nbsp;<em>Going Merry</em>(ゴイング メリー) v&agrave; đối đầu với những băng hải tặc kh&eacute;t tiếng của East Blue. Khi Luffy v&agrave; đồng đội của cậu bắt đầu cuộc phi&ecirc;u lưu của, những người kh&aacute;c tham gia v&agrave;o băng sau đ&oacute; trong bộ truyện, bao gồm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tony_Tony_Chopper\" title=\"Tony Tony Chopper\">Tony Tony Chopper</a>(トニー チョパー), một b&aacute;c sĩ v&agrave; l&agrave; một con tuần lộc biết n&oacute;i;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nico_Robin\" title=\"Nico Robin\">Nico Robin</a>(ニコ ロビン), một nh&agrave; khảo cổ học;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_c%C3%A1c_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Franky\" title=\"Danh sách các nhân vật trong One Piece\">Franky</a>(フランキー), một thợ đ&oacute;ng t&agrave;u cyborg;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_c%C3%A1c_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Brook\" title=\"Danh sách các nhân vật trong One Piece\">Brook</a>(ブルーク), một nhạc c&ocirc;ng v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_c%C3%A1c_nh%C3%A2n_v%E1%BA%ADt_trong_One_Piece#Jimbei\" title=\"Danh sách các nhân vật trong One Piece\">Jinbei</a>(ジンベイ), một người c&aacute; v&agrave; l&agrave; cựu th&agrave;nh vi&ecirc;n của&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Th%E1%BA%A5t_v%C5%A9_h%E1%BA%A3i&amp;action=edit&amp;redlink=1\" title=\"Thất vũ hải (trang không tồn tại)\">Thất vũ hải</a>(七武海). Khi&nbsp;<em>Going Merry</em>&nbsp;bị hư hỏng kh&ocirc;ng thể sửa chữa được, băng hải tặc Mũ Rơm đ&atilde; sử dụng một con t&agrave;u mới t&ecirc;n l&agrave;&nbsp;<em>Thousand Sunny</em>(サウサンド サーニー). C&ugrave;ng nhau, họ chạm tr&aacute;n với những t&ecirc;n hải tặc, thợ săn tiền thưởng, tổ chức tội phạm, qu&acirc;n c&aacute;ch mạng, đặc vụ v&agrave; Ch&iacute;nh phủ thế giới, c&ugrave;ng nhiều bạn b&egrave; v&agrave; kẻ th&ugrave; kh&aacute;c.</p>', '0', '0', '0', 1, 3, 1, '2022-05-12 03:04:52', '2022-05-12 03:06:46'),
(2, 'Doremon', '337.jpg', 'doremon', '<p><em><strong>Doraemon</strong></em>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Nh%E1%BA%ADt\" title=\"Tiếng Nhật\">tiếng Nhật</a>:&nbsp;ドラえもん&nbsp;<a href=\"https://vi.wikipedia.org/wiki/IPA\" title=\"IPA\">[doɾaemoɴ]</a>) l&agrave; một series&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Manga\" title=\"Manga\">manga</a>&nbsp;của Nhật Bản do&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Fujiko_F._Fujio\" title=\"Fujiko F. Fujio\">Fujiko F. Fujio</a>&nbsp;s&aacute;ng t&aacute;c từ th&aacute;ng 12 năm 1969 đến th&aacute;ng 4 năm&nbsp;1996&nbsp;đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em><a href=\"https://vi.wikipedia.org/wiki/CoroCoro_Comic\" title=\"CoroCoro Comic\">CoroCoro Comic</a></em>&nbsp;của nh&agrave; xuất bản&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Shogakukan\" title=\"Shogakukan\">Shogakukan</a>. C&oacute; tổng cộng 821 chương truyện được tuyển chọn đ&oacute;ng g&oacute;i đưa v&agrave;o 45 tập&nbsp;<em><a href=\"https://vi.wikipedia.org/wiki/Tank%C5%8Dbon\" title=\"Tankōbon\">tankōbon</a></em>&nbsp;dưới ấn hiệu&nbsp;<em>Tentōmushi Comics</em>&nbsp;cũng do Shogakukan xuất bản; manga đ&atilde; được dịch v&agrave; xuất bản bằng nhiều ng&ocirc;n ngữ tr&ecirc;n thế giới bao gồm cả&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Vi%E1%BB%87t\" title=\"Tiếng Việt\">tiếng Việt</a>&nbsp;của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A0_xu%E1%BA%A5t_b%E1%BA%A3n_Kim_%C4%90%E1%BB%93ng\" title=\"Nhà xuất bản Kim Đồng\">Nh&agrave; xuất bản Kim Đồng</a>.</p>\r\n\r\n<p>Nội dung series kể về cuộc đời bất hạnh của cậu b&eacute;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>&nbsp;v&agrave; ch&uacute; m&egrave;o m&aacute;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Doraemon_(nh%C3%A2n_v%E1%BA%ADt)\" title=\"Doraemon (nhân vật)\">Doraemon</a>&nbsp;từ tương lai đến để gi&uacute;p cuộc sống của cậu b&eacute; trở n&ecirc;n tốt hơn. T&aacute;c phẩm ba lần được chuyển thể th&agrave;nh&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Anime\" title=\"Anime\">anime</a>: lần đầu do Nippon TV Dōga sản xuất gồm 52 tập ph&aacute;t s&oacute;ng tr&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nippon_TV\" title=\"Nippon TV\">Nippon TV</a>&nbsp;từ 1 th&aacute;ng 4 đến 30 th&aacute;ng 9 năm 1973; lần thứ hai do&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Shin-Ei_Animation\" title=\"Shin-Ei Animation\">Shin-Ei Animation</a>&nbsp;sản xuất với 1787 tập ph&aacute;t từ 2 th&aacute;ng 4 năm 1979 đến 18 th&aacute;ng 3 năm 2005 tr&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/TV_Asahi\" title=\"TV Asahi\">TV Asahi</a>&nbsp;v&agrave; lần thứ ba cũng do Shin-Ei Animation sản xuất ph&aacute;t tr&ecirc;n TV Asahi từ 15 th&aacute;ng 4 năm 2005 đến nay. T&aacute;c phẩm cũng được chuyển thể th&agrave;nh c&aacute;c loại h&igrave;nh truyền th&ocirc;ng kh&aacute;c như phim điện ảnh v&agrave; tr&ograve; chơi điện tử.</p>\r\n\r\n<p>Với hơn 170 triệu bản in được b&aacute;n ra tr&ecirc;n thế giới,&nbsp;<em>Doraemon</em>&nbsp;được coi như l&agrave; một trong những series manga nổi tiếng v&agrave; th&agrave;nh c&ocirc;ng nhất mọi thời đại. Được nhiều nh&agrave; ph&ecirc; b&igrave;nh v&agrave; chuy&ecirc;n gia khen ngợi, một số&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Mangaka\" title=\"Mangaka\">mangaka</a>&nbsp;nổi tiếng n&oacute;i rằng&nbsp;<em>Doraemon</em>&nbsp;đ&atilde; truyền cảm hứng cho t&aacute;c phẩm của họ, chẳng hạn như&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Oda_Eiichiro\" title=\"Oda Eiichiro\">Oda Eiichirō</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kishimoto_Masashi\" title=\"Kishimoto Masashi\">Kishimoto&nbsp;Masashi</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Takahashi_Rumiko\" title=\"Takahashi Rumiko\">Takahashi Rumiko</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Danh_s%C3%A1ch_nh%C3%A2n_v%E1%BA%ADt_trong_Doraemon\" title=\"Danh sách nhân vật trong Doraemon\">Danh s&aacute;ch nh&acirc;n vật trong Doraemon</a></p>\r\n\r\n<p><a href=\"https://vi.wikipedia.org/wiki/Doraemon_(nh%C3%A2n_v%E1%BA%ADt)\" title=\"Doraemon (nhân vật)\">Doraemon</a>&nbsp;l&agrave; một ch&uacute; m&egrave;o m&aacute;y được&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Sewashi\" title=\"Sewashi\">Nobi Sewashi (</a>Nobi Nobito), ch&aacute;u năm đời của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobi Nobita</a>, gửi từ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BA%BF_k%E1%BB%B7_22\" title=\"Thế kỷ 22\">thế kỷ 22</a>&nbsp;về qu&aacute; khứ của &ocirc;ng m&igrave;nh để gi&uacute;p đỡ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>&nbsp;trở n&ecirc;n tiến bộ v&agrave; gi&agrave;u c&oacute;, tức l&agrave; cũng sẽ cải thiện ho&agrave;n cảnh của con ch&aacute;u Nobita sau n&agrave;y. C&ograve;n ở hiện tại,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>&nbsp;l&agrave; một cậu b&eacute; lu&ocirc;n thất bại ở trường học, v&agrave; sau đ&oacute; c&ocirc;ng ty ph&aacute; sản, thất bại trong c&ocirc;ng việc, đẩy gia đ&igrave;nh v&agrave; con ch&aacute;u sau n&agrave;y v&agrave;o cảnh nợ nần.</p>\r\n\r\n<p>C&aacute;c c&acirc;u chuyện trong&nbsp;<em>Doraemon</em>&nbsp;thường c&oacute; một chủ đề chung, đ&oacute; l&agrave; xoay quanh những rắc rối hay xảy ra với cậu b&eacute;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobita\" title=\"Nobita\">Nobita</a>&nbsp;học lớp năm, nh&acirc;n vật ch&iacute;nh thứ hai của bộ truyện. Doraemon c&oacute; một chiếc t&uacute;i thần kỳ trước bụng với đủ loại bảo bối của tương lai. Cốt truyện thường gặp nhất sẽ l&agrave; Nobita trở về nh&agrave; kh&oacute;c l&oacute;c với những rắc rối m&agrave; cậu gặp phải ở trường học hoặc với bạn b&egrave;. Sau khi bị cậu b&eacute; van n&agrave;i hoặc th&uacute;c giục, Doraemon sẽ đưa ra một bảo bối gi&uacute;p&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>&nbsp;giải quyết những rắc rối của m&igrave;nh, hoặc l&agrave; để trả đũa hay khoe khoang với bạn b&egrave; của cậu.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>&nbsp;sẽ lại thường đi qu&aacute; xa so với dự định ban đầu của Doraemon, thậm ch&iacute; với những bảo bối mới cậu c&ograve;n gặp rắc rối lớn hơn trước đ&oacute;. Đ&ocirc;i khi những người bạn của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nobi_Nobita\" title=\"Nobi Nobita\">Nobita</a>, thường l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Honekawa_Suneo\" title=\"Honekawa Suneo\">Honekawa Suneo</a>&nbsp;hoặc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Jaian\" title=\"Jaian\">Goda Takeshi (Jaian)</a>, lại lấy trộm những bảo bối v&agrave; sử dụng ch&uacute;ng kh&ocirc;ng đ&uacute;ng mục đ&iacute;ch. Tuy nhi&ecirc;n thường th&igrave; ở cuối mỗi c&acirc;u chuyện, những ai sử dụng sai mục đ&iacute;ch bảo bối sẽ phải chịu hậu quả do m&igrave;nh g&acirc;y ra, v&agrave; người đọc sẽ r&uacute;t ra được b&agrave;i học từ đ&oacute;.<sup><a href=\"https://vi.wikipedia.org/wiki/Doraemon#cite_note-Gary-3\">[3]</a></sup></p>', '0', '0', '0', 1, 3, 1, '2022-05-12 05:08:28', '2022-05-12 05:08:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishings`
--

CREATE TABLE `publishings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_publishing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_publishing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_session` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat_session` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_session` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kichhoat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `view_session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `title_session`, `tomtat_session`, `content_session`, `kichhoat`, `slug_session`, `id_product`, `view_session`, `created_at`, `updated_at`) VALUES
(1, '1', 'Thiên Long Nhân Xuât Hiện', '<p><br />\r\nMuốn n&oacute;i thế giới mới nơi n&agrave;y, đ&acirc;y ch&iacute;nh l&agrave; to&agrave;n bộ Grand Line. . . Kh&ocirc;ng, n&ecirc;n n&oacute;i l&agrave; to&agrave;n bộ thế giới b&ecirc;n trong nguy hiểm nhất hải vực, nơi n&agrave;y bi&ecirc;̉n cả t&aacute;o bạo kh&ocirc;ng th&ocirc;i, mỗi ng&agrave;y đều tại diễn ra kh&aacute;c biệt kỳ cảnh, đi thuyền tại v&ugrave;ng biển n&agrave;y b&ecirc;n trong, v&ocirc; luận l&agrave; lợi hại cỡ n&agrave;o l&atilde;o thủ, đều t&ugrave;y thời có khả năng mất mạng, d&ugrave; sao nơi n&agrave;y hết thảy, đều ph&aacute; vỡ lấy tất cả h&agrave;ng hải gia m&ocirc;n nhận biết m&agrave;.<br />\r\nV&ocirc; luận l&agrave; bay ở tr&ecirc;n bầu trời h&ograve;n đảo, vẫn l&agrave; đột nhi&ecirc;n vỡ ra mặt biển, lại hoặc l&agrave; tinh kh&ocirc;ng ph&iacute;a dưới, đột nhi&ecirc;n rơi ra so đội thuyền c&ograve;n muốn lớn mưa đ&aacute;, t&oacute;m lại l&agrave; chỉ c&oacute; ngươi kh&ocirc;ng nghĩ tới, kh&ocirc;ng c&oacute; c&aacute;i mới thế giới l&agrave;m kh&ocirc;ng được, cho d&ugrave; l&agrave; mặt biển đột nhi&ecirc;n biến th&agrave;nh th&ocirc;n phệ hết thảy cực n&oacute;ng nham tương, tại thế giới mới, cũng l&agrave; phi thường b&igrave;nh thường sự t&igrave;nh.<br />\r\nM&agrave; bi&ecirc;̉n cả l&agrave; c&ocirc;ng bằng, cũng nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; như thế, bi&ecirc;̉n cả l&agrave; v&ocirc; t&igrave;nh, khỏi phải kh&ocirc;ng cần biết ngươi l&agrave; c&aacute;i g&igrave; th&acirc;n phận, Hải tặc cũng tốt, Hải qu&acirc;n cũng được, hay l&agrave; c&aacute;i g&igrave; nh&agrave; mạo hiểm, qu&yacute; tộc, thương đội, những n&agrave;y cũng kh&ocirc;ng đ&aacute;ng kể, tại đại trong Hải nh&atilde;n, tất cả mọi người th&acirc;n phận đều l&agrave; b&igrave;nh đẳng, c&aacute;i kia ch&iacute;nh l&agrave; con d&acirc;n của n&oacute;.</p>\r\n\r\n<p><br />\r\nB&acirc;y giờ tại thế giới mới m&ocirc;n hộ địa khu hải vực, c&aacute;i n&agrave;o đ&oacute; kh&ocirc;ng biết t&ecirc;n tr&ecirc;n đảo nhỏ, liền c&oacute; một c&aacute;i tại gặp nạn về sau, cẩu thả c&ograve;n sống gia hỏa.</p>\r\n\r\n<p><br />\r\nMuốn n&oacute;i sống tạm, ngược lại cũng kh&ocirc;ng phải thật đ&iacute;ch vận may sống tiếp được, x&aacute;c thực n&oacute;i, hẳn l&agrave; gia hỏa n&agrave;y chết một lần, sau đ&oacute; bị một c&aacute;i đến từ thế giới kh&aacute;c linh hồn chiếm lấy rồi th&acirc;n thể, mở ra ho&agrave;n to&agrave;n mới nh&acirc;n sinh lữ tr&igrave;nh?</p>\r\n\r\n<p><br />\r\nL&uacute;c n&agrave;y ở c&aacute;i n&agrave;y kh&ocirc;ng biết t&ecirc;n h&ograve;n đảo b&ecirc;n bờ biển b&ecirc;n tr&ecirc;n, c&oacute; một c&aacute;i nh&igrave;n qua mười mấy tuổi lớn nhỏ, th&acirc;n rộng thể b&eacute;o, quần &aacute;o r&aacute;ch rưới, lại c&oacute; thể nh&igrave;n ra nguy&ecirc;n bản hoa lệ, c&oacute; một đầu nhạt m&aacute;i t&oacute;c d&agrave;i v&agrave;ng &oacute;ng, diện mục c&oacute; vẻ hơi ương ngạnh, l&agrave;n da c&oacute; ch&uacute;t bệnh trạng trắng n&otilde;n cảm gi&aacute;c tiểu b&agrave;n đ&ocirc;n.</p>\r\n\r\n<p><br />\r\nPh&oacute;ng tầm mắt nh&igrave;n, phảng phất l&agrave; c&aacute; nh&acirc;n đều c&oacute; thể nh&igrave;n ra đến tiểu gia hỏa n&agrave;y xuất th&acirc;n bất ph&agrave;m, c&oacute; thể l&agrave; c&aacute;i tứ chi kh&ocirc;ng cần, ngũ cốc kh&ocirc;ng ph&acirc;n, ngoại trừ sẽ ngồi ăn rồi chờ chết b&ecirc;n ngo&agrave;i, c&ograve;n lại c&aacute;i g&igrave; cũng đều kh&ocirc;ng hiểu ngu ngốc qu&yacute; tộc.</p>\r\n\r\n<p><br />\r\nTr&ecirc;n thực tế, cũng quả thật l&agrave; như thế, c&aacute;i n&agrave;y tiểu b&agrave;n đ&ocirc;n th&acirc;n phận địa vị cực lớn, muốn n&oacute;i tr&ecirc;n thế giới n&agrave;y c&oacute; c&aacute;i g&igrave; người &aacute;p đảo cao hơn hết, từ xuất sinh đến tử vong, đều hưởng thụ lấy thế gian vốn c&oacute; tất cả mỹ hảo, nắm giữ lấy kh&ocirc;ng c&oacute; g&igrave; s&aacute;nh kịp quyền lực?</p>\r\n\r\n<p><br />\r\nNgươi khoan h&atilde;y n&oacute;i, c&aacute;i n&agrave;y đ&aacute;ng chết thế giới thật c&oacute;, c&aacute;i kia ch&iacute;nh l&agrave; được xưng l&agrave; &#39;Thế giới qu&yacute; tộc&#39; Thi&ecirc;n Long Nh&acirc;n.<br />\r\nN&oacute;i l&ecirc;n thế giới qu&yacute; tộc, vậy liền kh&ocirc;ng thể kh&ocirc;ng nhấc l&ecirc;n một đoạn t&aacute;m trăm năm trước chuyện cũ, tương truyền t&aacute;m trăm năm trước, c&oacute; hai mươi c&aacute;i quốc gia Vương tộc v&igrave; kiến lập thế giới trật tự mới, từ đ&oacute; g&acirc;y dựng một c&aacute;i ho&agrave;n to&agrave;n mới ch&iacute;nh quyền, xưng l&agrave; &#39;Ch&iacute;nh Phủ Thế Giới&#39;, m&agrave; c&aacute;i n&agrave;y Ch&iacute;nh Phủ Thế Giới, b&acirc;y giờ cũng đ&atilde; thống trị to&agrave;n bộ thế giới c&oacute; t&aacute;m trăm năm l&acirc;u.</p>\r\n\r\n<p><br />\r\nTrong l&uacute;c n&agrave;y, c&aacute;i kia đ&atilde; từng qu&acirc;n l&acirc;m thi&ecirc;n hạ hai mươi vị Vương hậu duệ, bị thế gian mang theo &#39;Tạo vật chủ hậu duệ&#39;, &#39;Thần hậu duệ&#39; loại h&igrave;nh đủ loại vĩ đại xưng h&agrave;o.<br />\r\nNhững n&agrave;y hậu duệ, được gọi chung l&agrave; &#39;Thế giới qu&yacute; tộc &middot; Thi&ecirc;n Long Nh&acirc;n&#39;, Thi&ecirc;n Long Nh&acirc;n tồn tại, liền l&agrave; Ch&iacute;nh Phủ Thế Giới tồn tại ph&aacute;p l&yacute; t&iacute;nh đại biểu, d&ugrave; sao Ch&iacute;nh Phủ Thế Giới l&agrave; từ Thi&ecirc;n Long Nh&acirc;n c&aacute;c vị tổ ti&ecirc;n chỗ x&acirc;y dựng m&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:279.125px; top:22px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p><br />\r\nMuốn n&oacute;i thế giới mới nơi n&agrave;y, đ&acirc;y ch&iacute;nh l&agrave; to&agrave;n bộ Grand Line. . . Kh&ocirc;ng, n&ecirc;n n&oacute;i l&agrave; to&agrave;n bộ thế giới b&ecirc;n trong nguy hiểm nhất hải vực, nơi n&agrave;y bi&ecirc;̉n cả t&aacute;o bạo kh&ocirc;ng th&ocirc;i, mỗi ng&agrave;y đều tại diễn ra kh&aacute;c biệt kỳ cảnh, đi thuyền tại v&ugrave;ng biển n&agrave;y b&ecirc;n trong, v&ocirc; luận l&agrave; lợi hại cỡ n&agrave;o l&atilde;o thủ, đều t&ugrave;y thời có khả năng mất mạng, d&ugrave; sao nơi n&agrave;y hết thảy, đều ph&aacute; vỡ lấy tất cả h&agrave;ng hải gia m&ocirc;n nhận biết m&agrave;.<br />\r\nV&ocirc; luận l&agrave; bay ở tr&ecirc;n bầu trời h&ograve;n đảo, vẫn l&agrave; đột nhi&ecirc;n vỡ ra mặt biển, lại hoặc l&agrave; tinh kh&ocirc;ng ph&iacute;a dưới, đột nhi&ecirc;n rơi ra so đội thuyền c&ograve;n muốn lớn mưa đ&aacute;, t&oacute;m lại l&agrave; chỉ c&oacute; ngươi kh&ocirc;ng nghĩ tới, kh&ocirc;ng c&oacute; c&aacute;i mới thế giới l&agrave;m kh&ocirc;ng được, cho d&ugrave; l&agrave; mặt biển đột nhi&ecirc;n biến th&agrave;nh th&ocirc;n phệ hết thảy cực n&oacute;ng nham tương, tại thế giới mới, cũng l&agrave; phi thường b&igrave;nh thường sự t&igrave;nh.<br />\r\nM&agrave; bi&ecirc;̉n cả l&agrave; c&ocirc;ng bằng, cũng nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; như thế, bi&ecirc;̉n cả l&agrave; v&ocirc; t&igrave;nh, khỏi phải kh&ocirc;ng cần biết ngươi l&agrave; c&aacute;i g&igrave; th&acirc;n phận, Hải tặc cũng tốt, Hải qu&acirc;n cũng được, hay l&agrave; c&aacute;i g&igrave; nh&agrave; mạo hiểm, qu&yacute; tộc, thương đội, những n&agrave;y cũng kh&ocirc;ng đ&aacute;ng kể, tại đại trong Hải nh&atilde;n, tất cả mọi người th&acirc;n phận đều l&agrave; b&igrave;nh đẳng, c&aacute;i kia ch&iacute;nh l&agrave; con d&acirc;n của n&oacute;.</p>\r\n\r\n<p><br />\r\nB&acirc;y giờ tại thế giới mới m&ocirc;n hộ địa khu hải vực, c&aacute;i n&agrave;o đ&oacute; kh&ocirc;ng biết t&ecirc;n tr&ecirc;n đảo nhỏ, liền c&oacute; một c&aacute;i tại gặp nạn về sau, cẩu thả c&ograve;n sống gia hỏa.</p>\r\n\r\n<p><br />\r\nMuốn n&oacute;i sống tạm, ngược lại cũng kh&ocirc;ng phải thật đ&iacute;ch vận may sống tiếp được, x&aacute;c thực n&oacute;i, hẳn l&agrave; gia hỏa n&agrave;y chết một lần, sau đ&oacute; bị một c&aacute;i đến từ thế giới kh&aacute;c linh hồn chiếm lấy rồi th&acirc;n thể, mở ra ho&agrave;n to&agrave;n mới nh&acirc;n sinh lữ tr&igrave;nh?</p>\r\n\r\n<p><br />\r\nL&uacute;c n&agrave;y ở c&aacute;i n&agrave;y kh&ocirc;ng biết t&ecirc;n h&ograve;n đảo b&ecirc;n bờ biển b&ecirc;n tr&ecirc;n, c&oacute; một c&aacute;i nh&igrave;n qua mười mấy tuổi lớn nhỏ, th&acirc;n rộng thể b&eacute;o, quần &aacute;o r&aacute;ch rưới, lại c&oacute; thể nh&igrave;n ra nguy&ecirc;n bản hoa lệ, c&oacute; một đầu nhạt m&aacute;i t&oacute;c d&agrave;i v&agrave;ng &oacute;ng, diện mục c&oacute; vẻ hơi ương ngạnh, l&agrave;n da c&oacute; ch&uacute;t bệnh trạng trắng n&otilde;n cảm gi&aacute;c tiểu b&agrave;n đ&ocirc;n.</p>\r\n\r\n<p><br />\r\nPh&oacute;ng tầm mắt nh&igrave;n, phảng phất l&agrave; c&aacute; nh&acirc;n đều c&oacute; thể nh&igrave;n ra đến tiểu gia hỏa n&agrave;y xuất th&acirc;n bất ph&agrave;m, c&oacute; thể l&agrave; c&aacute;i tứ chi kh&ocirc;ng cần, ngũ cốc kh&ocirc;ng ph&acirc;n, ngoại trừ sẽ ngồi ăn rồi chờ chết b&ecirc;n ngo&agrave;i, c&ograve;n lại c&aacute;i g&igrave; cũng đều kh&ocirc;ng hiểu ngu ngốc qu&yacute; tộc.</p>\r\n\r\n<p><br />\r\nTr&ecirc;n thực tế, cũng quả thật l&agrave; như thế, c&aacute;i n&agrave;y tiểu b&agrave;n đ&ocirc;n th&acirc;n phận địa vị cực lớn, muốn n&oacute;i tr&ecirc;n thế giới n&agrave;y c&oacute; c&aacute;i g&igrave; người &aacute;p đảo cao hơn hết, từ xuất sinh đến tử vong, đều hưởng thụ lấy thế gian vốn c&oacute; tất cả mỹ hảo, nắm giữ lấy kh&ocirc;ng c&oacute; g&igrave; s&aacute;nh kịp quyền lực?</p>\r\n\r\n<p><br />\r\nNgươi khoan h&atilde;y n&oacute;i, c&aacute;i n&agrave;y đ&aacute;ng chết thế giới thật c&oacute;, c&aacute;i kia ch&iacute;nh l&agrave; được xưng l&agrave; &#39;Thế giới qu&yacute; tộc&#39; Thi&ecirc;n Long Nh&acirc;n.<br />\r\nN&oacute;i l&ecirc;n thế giới qu&yacute; tộc, vậy liền kh&ocirc;ng thể kh&ocirc;ng nhấc l&ecirc;n một đoạn t&aacute;m trăm năm trước chuyện cũ, tương truyền t&aacute;m trăm năm trước, c&oacute; hai mươi c&aacute;i quốc gia Vương tộc v&igrave; kiến lập thế giới trật tự mới, từ đ&oacute; g&acirc;y dựng một c&aacute;i ho&agrave;n to&agrave;n mới ch&iacute;nh quyền, xưng l&agrave; &#39;Ch&iacute;nh Phủ Thế Giới&#39;, m&agrave; c&aacute;i n&agrave;y Ch&iacute;nh Phủ Thế Giới, b&acirc;y giờ cũng đ&atilde; thống trị to&agrave;n bộ thế giới c&oacute; t&aacute;m trăm năm l&acirc;u.</p>\r\n\r\n<p><br />\r\nTrong l&uacute;c n&agrave;y, c&aacute;i kia đ&atilde; từng qu&acirc;n l&acirc;m thi&ecirc;n hạ hai mươi vị Vương hậu duệ, bị thế gian mang theo &#39;Tạo vật chủ hậu duệ&#39;, &#39;Thần hậu duệ&#39; loại h&igrave;nh đủ loại vĩ đại xưng h&agrave;o.<br />\r\nNhững n&agrave;y hậu duệ, được gọi chung l&agrave; &#39;Thế giới qu&yacute; tộc &middot; Thi&ecirc;n Long Nh&acirc;n&#39;, Thi&ecirc;n Long Nh&acirc;n tồn tại, liền l&agrave; Ch&iacute;nh Phủ Thế Giới tồn tại ph&aacute;p l&yacute; t&iacute;nh đại biểu, d&ugrave; sao Ch&iacute;nh Phủ Thế Giới l&agrave; từ Thi&ecirc;n Long Nh&acirc;n c&aacute;c vị tổ ti&ecirc;n chỗ x&acirc;y dựng m&agrave;.</p>\r\n\r\n<p><br />\r\nLại th&ecirc;m cho tới nay, Ch&iacute;nh Phủ Thế Giới tầng cao nhất đều l&agrave; từ lợi hại Thi&ecirc;n Long Nh&acirc;n nắm giữ, bởi vậy c&aacute;i n&agrave;y t&aacute;m trăm năm đến, Thi&ecirc;n Long Nh&acirc;n giai tầng cũng đang kh&ocirc;ng ngừng &#39;Thăng hoa&#39;, b&acirc;y giờ đến xem, bọn hắn được hưởng lấy người b&igrave;nh thường vĩnh viễn cũng v&ocirc; ph&aacute;p với tới đặc th&ugrave; quyền lực c&ugrave;ng ưu đ&atilde;i.</p>\r\n\r\n<p><br />\r\nĐ&aacute;nh c&aacute;i đơn giản nhất so s&aacute;nh tới n&oacute;i đi, Hải qu&acirc;n Đại tướng, đ&acirc;y ch&iacute;nh l&agrave; Hải qu&acirc;n b&ecirc;n trong gần với Nguy&ecirc;n So&aacute;i chức cao, ph&oacute;ng nh&atilde;n to&agrave;n bộ thế giới, cũng l&agrave; thuộc về c&oacute; th&acirc;n phận, c&oacute; địa vị, c&oacute; quyền lực người, l&agrave; thuộc về loại kia ra lệnh một tiếng, c&oacute; thể đem một t&ograve;a đảo đều ph&aacute;n v&igrave; &#39;Tội &aacute;c&#39;, d&ugrave;ng Lệnh triệu tập bất thường (Buster Call) triệt để x&oacute;a đi tồn tại.<br />\r\nThực lực bản th&acirc;n cũng l&agrave; thuộc về c&aacute;i thế giới n&agrave;y nhất lưu, kh&ocirc;ng n&oacute;i l&agrave; c&aacute;i g&igrave; mạnh nhất, nhưng &iacute;t ra cũng l&agrave; tại &#39;Mạnh nhất đ&aacute;m người kia b&ecirc;n trong&#39;.<br />\r\nM&agrave; như vậy a một c&aacute;i mặc kệ h&agrave;nh tẩu ở nơi n&agrave;o đều được xưng tụng l&agrave; uy phong b&aacute;t diện nh&acirc;n vật, tại Thi&ecirc;n Long Nh&acirc;n nơi n&agrave;y, liền th&agrave;nh c&aacute;i &#39;Bảo ti&ecirc;u&#39;.<br />\r\nKh&ocirc;ng sai, lấy Thi&ecirc;n Long Nh&acirc;n th&acirc;n phận cao qu&yacute;, v&ocirc; luận l&agrave; c&aacute;i kia xưng h&ugrave;ng bi&ecirc;̉n cả Hải qu&acirc;n tổng bộ vẫn l&agrave; c&aacute;i kia thần thần b&iacute; b&iacute; CP cơ quan, đều chẳng qua l&agrave; m&igrave;nh &#39;T&ocirc;i tớ&#39; m&agrave; th&ocirc;i, một khi Thi&ecirc;n Long Nh&acirc;n nhận lấy mạo phạm, như vậy Hải qu&acirc;n tổng bộ c&ugrave;ng CP cơ quan nhất định phải lấy nhất cao quy c&aacute;ch cấp độ đi giữ g&igrave;n Thi&ecirc;n Long Nh&acirc;n t&ocirc;n qu&yacute;.<br />\r\nN&oacute;i c&aacute;ch kh&aacute;c, một khi Thi&ecirc;n Long Nh&acirc;n náo đ&atilde; xảy ra chuyện g&igrave; đến, Hải qu&acirc;n Đại tướng loại cao thủ cấp bậc n&agrave;y, đều muốn đ&iacute;ch th&acirc;n đi ra cho Thi&ecirc;n Long Nh&acirc;n thu thập cục diện rối rắm.<br />\r\nC&aacute;i thế giới n&agrave;y, liền l&agrave; như thế kh&ocirc;ng giảng đạo l&yacute;, cũng ch&iacute;nh l&agrave; bởi v&igrave; loại n&agrave;y kh&ocirc;ng giảng đạo l&yacute;, để Thi&ecirc;n Long Nh&acirc;n giai tầng tại c&aacute;i n&agrave;y t&aacute;m trăm năm ở giữa, kh&ocirc;ng ngừng &#39;Thăng hoa&#39; bản th&acirc;n, đem thế gian hết thảy đều kh&ocirc;ng để v&agrave;o mắt, trong mắt chỉ c&oacute; c&ugrave;ng thuộc về Thi&ecirc;n Long Nh&acirc;n người một nh&agrave;, c&ograve;n lại tồn tại, đều l&agrave; &#39;N&ocirc; lệ&#39; th&ocirc;i.<br />\r\nThậm ch&iacute; bởi v&igrave; tự cho m&igrave;nh cao qu&yacute;, m&agrave; lấy ra ch&uacute;t bong b&oacute;ng che đầu, nguy&ecirc;n nh&acirc;n liền l&agrave; kh&ocirc;ng muốn c&ugrave;ng đồng dạng &#39;D&acirc;n đen&#39; nh&oacute;m h&ocirc; hấp đồng dạng kh&ocirc;ng kh&iacute;, mặc d&ugrave; lộ ra buồn cười như vậy c&ugrave;ng nực cười, nhưng cũng từ kh&iacute;a cạnh hiển lộ r&otilde; r&agrave;ng Thi&ecirc;n Long Nh&acirc;n ngạo mạn c&ugrave;ng v&ocirc; lễ.<br />\r\nM&agrave; l&uacute;c n&agrave;y c&aacute;i n&agrave;y lưu lạc tại v&ocirc; danh tr&ecirc;n hoang đảo tiểu b&agrave;n đ&ocirc;n, ch&iacute;nh l&agrave; một t&ecirc;n th&acirc;n phận cực kỳ t&ocirc;n qu&yacute; Thi&ecirc;n Long Nh&acirc;n.<br />\r\n&quot;Donquixote &middot; Claudius. . . Danh tự c&ograve;n l&ecirc;n rất b&aacute; đạo, liền l&agrave; người đơn giản c&oacute; ch&uacute;t xuẩn đến qu&aacute; phận đi? Bất qu&aacute; ngẫm lại cũng thế, những n&agrave;y đ&acirc;̀y n&atilde;o ruột gi&agrave; hạ vị Thi&ecirc;n Long Nh&acirc;n nh&oacute;m kh&ocirc;ng đều l&agrave; c&aacute;i dạng n&agrave;y sao?&quot; Tiểu b&agrave;n đ&ocirc;n l&uacute;c n&agrave;y ngồi tại c&aacute;i n&agrave;y bờ biển n&agrave;o đ&oacute; tảng đ&aacute; b&ecirc;n tr&ecirc;n, kh&ocirc;ng ngừng đậu đen rau muống lấy m&igrave;nh tiền th&acirc;n.<br />\r\nDonquixote liền kh&ocirc;ng cần n&oacute;i nhiều, đường đường chính chính Thi&ecirc;n Long Nh&acirc;n thế gia, t&aacute;m trăm năm trước, Dressrosa Vương tộc, về sau ti&ecirc;n tổ g&acirc;y dựng Ch&iacute;nh Phủ Thế Giới, từ đ&oacute; để Donquixote gia tộc từ Dressrosa di cư đến Th&aacute;nh Địa &middot; Marijoa, trở th&agrave;nh b&acirc;y giờ mười ch&iacute;n c&aacute;i Thi&ecirc;n Long Nh&acirc;n trong gia tộc một th&agrave;nh vi&ecirc;n.<br />\r\nKh&ocirc;ng sai, liền l&agrave; mười ch&iacute;n c&aacute;i, d&ugrave; sao c&aacute;i kia năm đ&oacute; hai mươi vị Vương hậu duệ thứ nhất. . . Alabasta Nefertari Vương tộc cũng kh&ocirc;ng c&oacute; di cư Th&aacute;nh Địa &middot; Marijoa, cho n&ecirc;n cũng kh&ocirc;ng c&oacute; trở th&agrave;nh Thi&ecirc;n Long Nh&acirc;n, ngược lại l&agrave; đi qua tám trăm năm thời gian thay đổi, biến th&agrave;nh Thi&ecirc;n Long Nh&acirc;n nh&oacute;m trong mắt &#39;Thổ b&aacute; vương&#39; .</p>\r\n\r\n<p><br />\r\nBất qu&aacute; mặc d&ugrave; l&agrave; như thế, nhưng l&agrave; Nefertari Vương tộc bao nhi&ecirc;u tại Th&aacute;nh Địa &middot; Marijoa c&ugrave;ng Ch&iacute;nh Phủ Thế Giới b&ecirc;n n&agrave;y c&oacute; ch&uacute;t bề mặt ở, nhưng đ&acirc;y đều l&agrave; n&oacute;i sau, liền kh&ocirc;ng cần n&oacute;i th&ecirc;m c&aacute;i g&igrave;.<br />\r\nT&oacute;m lại c&aacute;i n&agrave;y tiểu b&agrave;n đ&ocirc;n liền l&agrave; Donquixote trong gia tộc một th&agrave;nh vi&ecirc;n, từ về mặt th&acirc;n phận đến xem, c&oacute; thể n&oacute;i l&agrave; ng&agrave;y sau c&aacute;i kia Đại hải tặc &middot; Heavenly Yaksha &middot; Donquixote &middot; Doflamingo đại biểu ca đi, hắn so Doflamingo muốn lớn hơn v&agrave;i tuổi.<br />\r\nVề phần t&ecirc;n l&agrave; &#39;Claudius&#39;, c&oacute; lẽ tr&ecirc;n thế giới n&agrave;y ngược lại l&agrave; kh&ocirc;ng c&oacute; c&aacute;i g&igrave; đặc th&ugrave;, chẳng qua hiện nay Claudius thế nhưng l&agrave; rất r&otilde; r&agrave;ng, c&aacute;i t&ecirc;n n&agrave;y ch&iacute;nh l&agrave; kiếp trước La M&atilde; đế quốc ho&agrave;ng đế truyền thừa t&ecirc;n, n&oacute;i l&agrave; Haki, cũng x&aacute;c thực Haki.<br />\r\nDonquixote &middot; Claudius cầm trong tay một c&acirc;y c&ocirc;n gỗ, tại c&aacute;i kia tr&ecirc;n bờ c&aacute;t khoa tay m&uacute;a ch&acirc;n một lần về sau, nhẹ giọng tự nhủ: &quot;Bất kể n&oacute;i thế n&agrave;o, tốt xấu trước chải vuốt một ch&uacute;t t&igrave;nh huống a. . .&quot;<br />\r\n&quot;Đầu ti&ecirc;n điểm thứ nhất, tiền th&acirc;n c&aacute;i n&agrave;y thật qu&aacute; ngu xuẩn ngớ ngẩn gia hỏa bị người hố đ&atilde; ăn Tr&aacute;i &Aacute;c Quỷ. . . C&aacute;i n&agrave;y ta liền kh&ocirc;ng cải biến được, bất qu&aacute; tốt xấu l&agrave; hệ Logia năng lực, bằng v&agrave;o ta c&aacute;i n&agrave;y ưu t&uacute; đại n&atilde;o. . . Hẳn l&agrave; sẽ kh&ocirc;ng giống c&aacute;i n&agrave;y ngu ngốc đồng dạng l&agrave;m trễ nải năng lực a?&quot; Claudius nhẹ giọng nỉ non n&oacute;i.<br />\r\nKh&ocirc;ng sai, c&aacute;i n&agrave;y đ&aacute;ng chết tiền th&acirc;n, r&otilde; r&agrave;ng l&agrave; một người cao qu&yacute; Thi&ecirc;n Long Nh&acirc;n, lại c&ograve;n bị người hố ăn c&aacute;i Tr&aacute;i &Aacute;c Quỷ, cho d&ugrave; l&agrave; hệ Logia, nhưng cũng đủ để nh&igrave;n ra hắn c&oacute; bao nhi&ecirc;u ngu xuẩn.<br />\r\nĐương nhi&ecirc;n, muốn n&oacute;i b&acirc;y giờ Claudius sẽ có hay kh&ocirc;ng có hiện tại Thi&ecirc;n Long Nh&acirc;n loại kia kh&ocirc;ng hiểu thấu cao qu&yacute; cảm gi&aacute;c, t&igrave;nh nguyện đem v&ocirc; c&ugrave;ng cường đại Tr&aacute;i &Aacute;c Quỷ coi như đồ chơi n&eacute;m cho n&ocirc; lệ, cũng kh&ocirc;ng nguyện lấy ra tăng cường thực lực của m&igrave;nh, đ&acirc;y nhất định l&agrave; kh&ocirc;ng c&oacute;, Claudius l&agrave; c&aacute;i tương đối phải thiết thực người, hắn mới kh&ocirc;ng c&oacute; loại n&agrave;y &#39;Phong kiến&#39; &yacute; nghĩ, huống chi, đều đi tới Hải tặc trong thế giới, nếu l&agrave; kh&ocirc;ng trải nghiệm một c&aacute;i Tr&aacute;i &Aacute;c Quỷ cảm gi&aacute;c, c&ugrave;ng loại kia vượt mức b&igrave;nh thường lực lượng thần b&iacute;, chẳng phải l&agrave; c&oacute; loại đến kh&ocirc;ng một lần trải nghiệm cảm gi&aacute;c?<br />\r\nBởi vậy nếu l&agrave; th&acirc;n thể n&agrave;y kh&ocirc;ng c&oacute; ngu xuẩn bị hố lấy ăn Tr&aacute;i &Aacute;c Quỷ, Claudius c&ograve;n nghĩ đến nếu l&agrave; c&oacute; cơ hội, liền đi l&agrave;m c&aacute;i g&igrave; Goro Goro no Mi năng lực như vậy tới chơi đ&ugrave;a đ&acirc;u, b&acirc;y giờ xem ra, giấc mộng n&agrave;y l&agrave; thực hiện kh&ocirc;ng được nữa, thật sự l&agrave; bực m&igrave;nh.<br />\r\n&quot;Điểm thứ hai, Claudius. . . Cũng ch&iacute;nh l&agrave; ta, l&agrave; thuộc về hạ vị Thi&ecirc;n Long Nh&acirc;n, cũng chẳng tr&aacute;ch hồ gia hỏa n&agrave;y đ&acirc;̀y n&atilde;o ruột gi&agrave;, d&aacute;ng người cồng kềnh, nh&igrave;n qua tựa như c&aacute;i phế vật, đơn giản ảnh hưởng ta anh tuấn suất kh&iacute; linh hồn. . .&quot; Claudius c&oacute; ch&uacute;t bất đắc dĩ lắc đầu, nh&igrave;n xem c&aacute;i kia căng căng lui lui triều trong nước, dung mạo của m&igrave;nh, mở miệng đậu đen rau muống n&oacute;i.<br />\r\nNhắc tới hạ vị Thi&ecirc;n Long Nh&acirc;n, kỳ thật cũng rất dễ l&yacute; giải, Ch&iacute;nh Phủ Thế Giới loại n&agrave;y khổng lồ cơ cấu, c&oacute; thể duy tr&igrave; c&ugrave;ng ổn định thế giới t&aacute;m trăm năm l&acirc;u, c&aacute;i kia cưỡi tại Ch&iacute;nh Phủ Thế Giới tr&ecirc;n đầu tầng ch&oacute;t nhất những c&aacute;i kia Thi&ecirc;n Long Nh&acirc;n, lu&ocirc;n kh&ocirc;ng khả năng tất cả đều l&agrave; giống &#39;Claudius&#39; dạng n&agrave;y chỉ biết l&agrave; ngồi ăn rồi chờ chết phế vật mới l&agrave;, bởi vậy c&aacute;i n&agrave;y Thi&ecirc;n Long Nh&acirc;n mặc d&ugrave; l&agrave; đồng dạng cao qu&yacute; huyết mạch, nhưng cũng sẽ ph&acirc;n ra tr&ecirc;n dưới giai cấp.<br />\r\nĐ&aacute;nh c&aacute;i đơn giản nhất so s&aacute;nh tới n&oacute;i, vậy liền n&acirc;ng n&acirc;ng b&acirc;y giờ Ch&iacute;nh Phủ Thế Giới b&ecirc;n ngo&agrave;i nhất quyền cao lực chưởng khống giả nh&oacute;m &middot; Gorosei.<br />\r\nGorosei bọn hắn năm c&aacute;i vốn l&agrave; thuộc về Thi&ecirc;n Long Nh&acirc;n giai tầng, m&agrave; lại l&agrave; địa vị cao nhất Thi&ecirc;n Long Nh&acirc;n, giống bọn hắn kẻ như vậy, rất r&otilde; r&agrave;ng liền c&ugrave;ng Claudius phế vật như vậy kh&aacute;c biệt, c&oacute; được tr&iacute; tuệ đại n&atilde;o c&ugrave;ng kinh nghiệm phong ph&uacute;, nắm giữ lấy Ch&iacute;nh Phủ Thế Giới chiếc n&agrave;y cự lu&acirc;n b&aacute;nh l&aacute;i, đi thuyền tại b&ecirc;n trong thế giới n&agrave;y.</p>\r\n\r\n<p><br />\r\nTrừ bỏ địa vị cao nhất Thi&ecirc;n Long Nh&acirc;n b&ecirc;n ngo&agrave;i, Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong c&ograve;n chia l&agrave;m thượng vị, trung vị Thi&ecirc;n Long Nh&acirc;n, cũng ch&iacute;nh l&agrave; từng c&aacute;i Thi&ecirc;n Long Nh&acirc;n gia tộc tộc trưởng c&ograve;n c&oacute; một số bản th&acirc;n m&igrave;nh tương đối c&oacute; năng lực Thi&ecirc;n Long Nh&acirc;n c&aacute;i g&igrave;, bọn hắn tại Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong cũng coi l&agrave; tay cầm một phương quyền lực, đầu &oacute;c b&igrave;nh thường gia hỏa, cuối c&ugrave;ng liền l&agrave; giống Claudius phế vật như vậy, thuộc về loại kia ngồi ăn rồi chờ chết hạ vị Thi&ecirc;n Long Nh&acirc;n.<br />\r\nLại cẩn thận quan s&aacute;t dưới c&aacute;i n&agrave;y thủy triều phản chiếu đi ra dung mạo, Claudius sờ l&ecirc;n cằm nghĩ nghĩ, cuối c&ugrave;ng gật gật đầu, c&oacute; ch&uacute;t rắm th&uacute;i cảm kh&aacute;i n&oacute;i: &quot;Từ nội t&igrave;nh đến xem, c&oacute; lẽ vẫn l&agrave; c&oacute; thể cứu, liền l&agrave; kh&iacute; chất n&agrave;y c&ugrave;ng d&aacute;ng người c&oacute; ch&uacute;t qu&aacute; phận. . . Chỉ cần c&oacute; thể đem hai điểm n&agrave;y cải biến, để c&aacute;i n&agrave;y th&acirc;n t&uacute;i da xứng với ta c&aacute;i kia anh tuấn lại anh tuấn linh hồn, nghĩ đến c&oacute; lẽ vẫn l&agrave; c&oacute; thể l&agrave;m được.&quot;<br />\r\nNguy&ecirc;n bản Claudius thuộc về dưới nhất vị Thi&ecirc;n Long Nh&acirc;n, ngồi ăn rồi chờ chết l&agrave; được rồi, muốn c&aacute;i g&igrave; nhan trị? Bởi vậy tăng th&ecirc;m c&aacute;i kia ngu ngốc v&ocirc; năng phế vật kh&iacute; chất, phối hợp với m&igrave;nh c&aacute;i kia ăn uống v&ocirc; độ nu&ocirc;i đi ra to&agrave;n th&acirc;n thịt thừa, dẫn đến Claudius trở th&agrave;nh một c&aacute;i nh&igrave;n qua liền mười phần l&ocirc;i th&ocirc;i buồn n&ocirc;n &#39;Mập mạp chết bầm&#39; .<br />\r\nNhưng l&agrave; trừ bỏ c&aacute;i n&agrave;y hậu thi&ecirc;n nh&acirc;n tố đến xem, chỉ nh&igrave;n c&aacute;i n&agrave;y ti&ecirc;n thi&ecirc;n nội t&igrave;nh, kh&ocirc;ng hề nghi ngờ, Claudius cũng l&agrave; rất ưu t&uacute; suất ca người kế tục, suy nghĩ kỹ một ch&uacute;t cũng thế, c&aacute;i n&agrave;y Thi&ecirc;n Long Nh&acirc;n l&agrave; c&aacute;i g&igrave; ch&oacute; đức hạnh? Nh&igrave;n thấy c&ocirc; nương xinh đẹp, liền muốn cường lấy về nh&agrave; l&agrave;m l&atilde;o b&agrave;, lại kh&ocirc;ng n&oacute;i c&oacute; đ&uacute;ng hay kh&ocirc;ng đồ chơi, ch&iacute; &iacute;t đ&atilde; chứng minh thẩm mỹ quan l&agrave; b&igrave;nh thường.<br />\r\nTiếp theo, những thế giới n&agrave;y c&aacute;c qu&yacute; tộc ăn uống d&ugrave;ng tất cả đều l&agrave; tốt nhất, t&aacute;m trăm năm đến, bao nhi&ecirc;u cũng sẽ cải biến một ch&uacute;t trong cơ thể &#39;Ưu t&uacute; gen&#39; a?<br />\r\nLại th&ecirc;m nguy&ecirc;n bản những người n&agrave;y ti&ecirc;n tổ liền l&agrave; Vương tộc, c&oacute; thể n&oacute;i trong cơ thể gen c&ograve;n l&agrave; rất kh&ocirc;ng tệ, tr&ecirc;n cơ bản loại kia trời sinh d&aacute;ng dấp để cho người ta kh&ocirc;ng vừa mắt đ&iacute;ch x&aacute;c rất &iacute;t người, tuyệt đại đa số đều l&agrave; bởi v&igrave; hậu thi&ecirc;n m&igrave;nh ăn uống v&ocirc; độ, ph&oacute;ng t&uacute;ng dục vọng, giày vò đi ra.<br />\r\nTừ tr&ecirc;n tổng hợp lại, Claudius cảm thấy chỉ cần m&igrave;nh cố gắng một ch&uacute;t, khắc chế trong cơ thể m&igrave;nh c&aacute;c loại r&aacute;c rưởi dục vọng, như vậy kh&ocirc;i phục d&aacute;ng người, loại trừ loại kia tự mang đầy mỡ cảm gi&aacute;c, biến th&agrave;nh một c&aacute;i đại suất ca c&aacute;i g&igrave;, c&oacute; lẽ vẫn l&agrave; c&oacute; thể l&agrave;m được.<br />\r\nD&ugrave; sao m&igrave;nh đại biểu đệ, Donquixote &middot; Doflamingo về sau như thế mạo liền rất suất kh&iacute; nha, ch&iacute; &iacute;t so c&aacute;i n&agrave;y Th&aacute;nh Địa &middot; Marijoa b&ecirc;n trong Thi&ecirc;n Long Nh&acirc;n nh&oacute;m đẹp trai hơn rất nhiều, c&aacute;i n&agrave;y tại Claudius xem ra, cũng l&agrave; bởi v&igrave; Doflamingo về sau ho&agrave;n cảnh lớn l&ecirc;n kh&aacute;c biệt, nếu l&agrave; vẫn như cũ để hắn tại MariJoa l&agrave;m c&aacute;i ngồi ăn rồi chờ chết Thi&ecirc;n Long Nh&acirc;n, vậy hắn đo&aacute;n chừng hội trưởng t&agrave;n.<br />\r\n&quot;Cuối c&ugrave;ng x&aacute;c định một điểm, ta Claudius sẽ tao ngộ tai nạn tr&ecirc;n biển, lưu lạc đến tận đ&acirc;y, cũng l&agrave; một trận &acirc;m mưu a, d&ugrave; sao ta vốn n&ecirc;n l&agrave; đ&atilde; chết mới đ&uacute;ng.&quot; Claudius trong mắt l&oacute;e l&ecirc;n một đạo phức tạp h&agrave;o quang, nhẹ giọng nỉ non n&oacute;i.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:279.125px; top:29px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '0', 'thien-long-nhan-xuat-hien', 1, '5', '2022-05-12 03:12:37', '2022-05-12 06:19:55'),
(2, '2', 'Ta tiền nhiệm là cái thiểu năng trí tuệ?', '<p>Bởi v&igrave; c&aacute;i gọi l&agrave; nơi c&oacute; người, liền c&oacute; giang hồ, c&oacute; giang hồ, liền c&oacute; tranh đấu, tại Th&aacute;nh Địa &middot; Marijoa Thi&ecirc;n Long Nh&acirc;n quần thể b&ecirc;n trong, tự nhi&ecirc;n cũng l&agrave; như thế.<br />\r\nThi&ecirc;n Long Nh&acirc;n nh&oacute;m khinh thường tại c&ugrave;ng b&igrave;nh thường &#39;D&acirc;n đen&#39; nh&oacute;m c&aacute;i g&igrave; tranh đoạt, bởi v&igrave; bọn họ kh&ocirc;ng cần đi c&ugrave;ng những người n&agrave;y tranh, muốn c&aacute;i g&igrave;, trực tiếp đi &#39;Cầm&#39; đến ch&iacute;nh l&agrave;, tại Thi&ecirc;n Long Nh&acirc;n kh&aacute;i niệm b&ecirc;n trong, bọn hắn l&agrave; thuộc về &#39;Thượng vị giả&#39;, bởi vậy kh&ocirc;ng cần tranh đấu, d&ugrave; sao những c&aacute;i kia bọn tiện d&acirc;n cũng kh&ocirc;ng d&aacute;m phản b&aacute;c bọn hắn, chẳng lẽ bọn tiện d&acirc;n c&ograve;n d&aacute;m đoạt bọn hắn Thi&ecirc;n Long Nh&acirc;n đồ vật kh&ocirc;ng th&agrave;nh?<br />\r\nCho n&ecirc;n n&oacute;i như vậy, Thi&ecirc;n Long Nh&acirc;n nh&oacute;m ở giữa tranh đấu, liền cực hạn tại Thi&ecirc;n Long Nh&acirc;n c&aacute;i giai tầng n&agrave;y b&ecirc;n trong, chỉ c&oacute; ngang h&agrave;ng cao qu&yacute;, mới coi l&agrave; bọn hắn &#39;Đối thủ&#39; ?<br />\r\nDonquixote &middot; Claudius tao ngộ, ngươi muốn n&oacute;i hắn cẩu huyết, vậy thật đ&uacute;ng l&agrave; tương đương cẩu huyết, chớ nh&igrave;n hắn hiện tại l&agrave; c&aacute;i hạ vị Thi&ecirc;n Long Nh&acirc;n, nhưng l&agrave; hắn th&acirc;n thể n&agrave;y song th&acirc;n vẫn l&agrave; rất lợi hại, ch&iacute;nh l&agrave; nguy&ecirc;n bản Donquixote gia tộc chủ nh&acirc;n, cho n&ecirc;n n&oacute;i hắn l&agrave; c&aacute;i Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong &#39;Quan nhị đại&#39; cũng kh&ocirc;ng sao.</p>\r\n\r\n<p><br />\r\nChỉ bất qu&aacute; trời c&oacute; bất trắc phong v&acirc;n, người c&oacute; họa hề đ&aacute;n ph&uacute;c, cho d&ugrave; l&agrave; tự xưng l&agrave; thần Thi&ecirc;n Long Nh&acirc;n, cũng cuối c&ugrave;ng bất qu&aacute; l&agrave; c&aacute;i nh&acirc;n loại th&ocirc;i, l&agrave; nh&acirc;n loại, cũng chạy kh&ocirc;ng tho&aacute;t sinh l&atilde;o bệnh tử lu&acirc;n hồi, Claudius phụ mẫu cũng bởi v&igrave; một loại n&agrave;o đ&oacute; bệnh bất trị, tại ba năm trước đ&acirc;y qua đời.</p>', '<p>Bởi v&igrave; c&aacute;i gọi l&agrave; nơi c&oacute; người, liền c&oacute; giang hồ, c&oacute; giang hồ, liền c&oacute; tranh đấu, tại Th&aacute;nh Địa &middot; Marijoa Thi&ecirc;n Long Nh&acirc;n quần thể b&ecirc;n trong, tự nhi&ecirc;n cũng l&agrave; như thế.<br />\r\nThi&ecirc;n Long Nh&acirc;n nh&oacute;m khinh thường tại c&ugrave;ng b&igrave;nh thường &#39;D&acirc;n đen&#39; nh&oacute;m c&aacute;i g&igrave; tranh đoạt, bởi v&igrave; bọn họ kh&ocirc;ng cần đi c&ugrave;ng những người n&agrave;y tranh, muốn c&aacute;i g&igrave;, trực tiếp đi &#39;Cầm&#39; đến ch&iacute;nh l&agrave;, tại Thi&ecirc;n Long Nh&acirc;n kh&aacute;i niệm b&ecirc;n trong, bọn hắn l&agrave; thuộc về &#39;Thượng vị giả&#39;, bởi vậy kh&ocirc;ng cần tranh đấu, d&ugrave; sao những c&aacute;i kia bọn tiện d&acirc;n cũng kh&ocirc;ng d&aacute;m phản b&aacute;c bọn hắn, chẳng lẽ bọn tiện d&acirc;n c&ograve;n d&aacute;m đoạt bọn hắn Thi&ecirc;n Long Nh&acirc;n đồ vật kh&ocirc;ng th&agrave;nh?<br />\r\nCho n&ecirc;n n&oacute;i như vậy, Thi&ecirc;n Long Nh&acirc;n nh&oacute;m ở giữa tranh đấu, liền cực hạn tại Thi&ecirc;n Long Nh&acirc;n c&aacute;i giai tầng n&agrave;y b&ecirc;n trong, chỉ c&oacute; ngang h&agrave;ng cao qu&yacute;, mới coi l&agrave; bọn hắn &#39;Đối thủ&#39; ?<br />\r\nDonquixote &middot; Claudius tao ngộ, ngươi muốn n&oacute;i hắn cẩu huyết, vậy thật đ&uacute;ng l&agrave; tương đương cẩu huyết, chớ nh&igrave;n hắn hiện tại l&agrave; c&aacute;i hạ vị Thi&ecirc;n Long Nh&acirc;n, nhưng l&agrave; hắn th&acirc;n thể n&agrave;y song th&acirc;n vẫn l&agrave; rất lợi hại, ch&iacute;nh l&agrave; nguy&ecirc;n bản Donquixote gia tộc chủ nh&acirc;n, cho n&ecirc;n n&oacute;i hắn l&agrave; c&aacute;i Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong &#39;Quan nhị đại&#39; cũng kh&ocirc;ng sao.</p>\r\n\r\n<p><br />\r\nChỉ bất qu&aacute; trời c&oacute; bất trắc phong v&acirc;n, người c&oacute; họa hề đ&aacute;n ph&uacute;c, cho d&ugrave; l&agrave; tự xưng l&agrave; thần Thi&ecirc;n Long Nh&acirc;n, cũng cuối c&ugrave;ng bất qu&aacute; l&agrave; c&aacute;i nh&acirc;n loại th&ocirc;i, l&agrave; nh&acirc;n loại, cũng chạy kh&ocirc;ng tho&aacute;t sinh l&atilde;o bệnh tử lu&acirc;n hồi, Claudius phụ mẫu cũng bởi v&igrave; một loại n&agrave;o đ&oacute; bệnh bất trị, tại ba năm trước đ&acirc;y qua đời.</p>\r\n\r\n<p><br />\r\nKhi đ&oacute; Claudius c&ograve;n rất tuổi nhỏ, mới bảy tuổi m&agrave; th&ocirc;i, d&ugrave; sao hắn hiện nay cũng mới mười tuổi, căn bản kh&ocirc;ng c&oacute; khả năng tiếp nhận hắn lão tử vị tr&iacute;, trở th&agrave;nh Donquixote gia tộc chủ nh&acirc;n.</p>\r\n\r\n<p><br />\r\nSau đ&oacute; Donquixote gia tộc, liền bị Doflamingo l&atilde;o cha, cũng ch&iacute;nh l&agrave; Donquixote &middot; Homing cho tiếp nhận, c&aacute;i n&agrave;y St.Homing thuộc về loại kia Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong dị loại, t&acirc;m địa thiện lương, cũng kh&ocirc;ng c&oacute; nhiều như vậy &yacute; nghĩ xấu xa, chỗ lấy đối đ&atilde;i Claudius c&aacute;i n&agrave;y &#39;Trước Thiếu chủ&#39; c&ograve;n l&agrave; rất kh&ocirc;ng tệ, ba năm n&agrave;y, đều đem Claudius coi như l&agrave; con của m&igrave;nh đồng dạng tại dưỡng dục.</p>\r\n\r\n<p><br />\r\nL&uacute;c đầu vậy liền coi l&agrave;, nếu l&agrave; kh&ocirc;ng xảy ra chuyện g&igrave; ngo&agrave;i &yacute; muốn, Claudius hẳn l&agrave; c&oacute; thể tại St.Homing chiếu kh&aacute;n dưới, ngồi ăn rồi chờ chết đến trưởng th&agrave;nh, sau đ&oacute; cả đời l&agrave;m c&aacute;i tầm thường v&ocirc; vi, lại c&oacute; thể l&agrave;m mưa l&agrave;m gi&oacute;, hưởng thụ vốn c&oacute; hết thảy phế vật Thi&ecirc;n Long Nh&acirc;n, bất qu&aacute; giống như trong tr&iacute; nhớ, St.Homing l&agrave; dự định tại m&igrave;nh sau trưởng th&agrave;nh, đem vị tr&iacute; gia chủ một lần nữa giao trả lại cho m&igrave;nh.</p>\r\n\r\n<p><br />\r\n&quot;Suy nghĩ kỹ một ch&uacute;t, loại n&agrave;y khi củi mục, nhưng lại c&oacute; thể hưởng thụ hết thảy nh&acirc;n sinh. . . Giống như cũng thật thoải m&aacute;i?&quot; Claudius cười cười, tự nhủ.</p>\r\n\r\n<p><br />\r\nKh&ocirc;ng thể kh&ocirc;ng n&oacute;i, loại người n&agrave;y sinh, x&aacute;c thực cũng thật thoải m&aacute;i, muốn c&aacute;i g&igrave; c&oacute; c&aacute;i đ&oacute;, c&ograve;n kh&ocirc;ng cần phấn đấu, kh&ocirc;ng cần mơ mộng những c&aacute;i kia bực m&igrave;nh sự t&igrave;nh. . .<br />\r\nNhưng vấn đề l&agrave;. . . Kh&ocirc;ng biết c&oacute; phải hay kh&ocirc;ng l&agrave; thực chất b&ecirc;n trong c&oacute; loại kh&ocirc;ng hiểu &#39;Chủ nghĩa l&yacute; tưởng huyết mạch&#39;, Donquixote nhất tộc thỉnh thoảng liền sẽ xuất hiện một hai c&aacute;i tại Claudius xem ra, đầu &oacute;c c&oacute; vấn đề gia hỏa, thảm hại hơn ch&iacute;nh l&agrave;, b&acirc;y giờ Donquixote gia tộc chủ nh&acirc;n &middot; Donquixote &middot; St.Homing. . . Hắn liền l&agrave; một c&aacute;i dạng n&agrave;y đầu &oacute;c c&oacute; vấn đề gia hỏa.</p>\r\n\r\n<p><br />\r\nGần nhất hơn một năm nay đến, c&oacute; thể l&agrave; bởi v&igrave; trước đ&oacute; hắn mang theo vợ con của m&igrave;nh nh&oacute;m c&ugrave;ng đi Bắc Hải lữ h&agrave;nh nguy&ecirc;n nh&acirc;n, kiến thức rất nhiều c&aacute;i thế giới n&agrave;y phong thổ, để trong cơ thể hắn người chủ nghĩa l&yacute; tưởng huyết mạch bị k&iacute;ch hoạt l&ecirc;n.</p>\r\n\r\n<p><br />\r\nC&aacute;i n&agrave;y tại Th&aacute;nh Địa &middot; Marijoa l&agrave;m tộc trưởng, khi đại l&atilde;o, khi Thi&ecirc;n Long Nh&acirc;n l&agrave;m thật tốt gia hỏa, đầu &oacute;c b&acirc;y giờ thiếu một c&acirc;y d&acirc;y cung, thỉnh thoảng liền sẽ nghĩ đến m&igrave;nh kh&ocirc;ng l&agrave;m Thi&ecirc;n Long Nh&acirc;n, muốn đi &#39;Hạ giới&#39; khi b&igrave;nh thường d&acirc;n ch&uacute;ng.</p>\r\n\r\n<p><br />\r\nC&aacute;i n&agrave;y tại Thi&ecirc;n Long Nh&acirc;n giai tầng b&ecirc;n trong quả thực l&agrave; &#39;Đầu &oacute;c c&oacute; bệnh&#39; đại biểu a, bị h&oacute;a đi&ecirc;n cái chủng loại kia.<br />\r\nM&agrave; c&agrave;ng mấu chốt ch&iacute;nh l&agrave;, đang suy tư d&agrave;i đến thời gian một năm về sau, c&aacute;i n&agrave;y đầu &oacute;c c&oacute; bệnh gia hỏa, kh&ocirc;ng chỉ c&oacute; kh&ocirc;ng hề từ bỏ m&igrave;nh c&aacute;i kia suy nghĩ ấu tr&iacute;, ngược lại l&agrave; c&agrave;ng cảm thấy loại &yacute; nghĩ n&agrave;y rất c&oacute; t&iacute;nh khả thi.<br />\r\nBởi v&igrave; c&aacute;i gọi l&agrave; &#39;Ước mơ l&agrave; khoảng c&aacute;ch l&yacute; giải nhất xa x&ocirc;i cự ly&#39;, Homing gia hỏa n&agrave;y r&otilde; r&agrave;ng liền l&agrave; tại m&igrave;nh trong đầu qu&aacute; mức ước mơ c&aacute;i kia d&acirc;n ch&uacute;ng sinh sống, giống như v&ocirc; ưu v&ocirc; lự, chỉ cần l&agrave;m ruộng l&agrave; được rồi, ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; nghĩ qua t&igrave;nh huống thực tế, bất qu&aacute; ngược lại cũng kh&ocirc;ng phải l&agrave; kh&ocirc;ng thể l&yacute; giải, d&ugrave; sao từ xuất sinh l&ecirc;n liền đứng ở tr&ecirc;n đỉnh thế giới Thi&ecirc;n Long Nh&acirc;n nh&oacute;m, nếu l&agrave; c&oacute; thể l&yacute; giải d&acirc;n ch&uacute;ng khổ sở, vậy thật đ&uacute;ng l&agrave; c&oacute; quỷ.<br />\r\nCho n&ecirc;n c&aacute;i n&agrave;y khiến St.Homing sinh ra một loại &#39;Sao kh&ocirc;ng ăn thịt ch&aacute;o&#39; nực cười huyễn tưởng.<br />\r\nBởi vậy một năm qua n&agrave;y, St.Homing bắt đầu cho Donquixote gia tộc an b&agrave;i &#39;Đường lui&#39;, d&ugrave; sao hắn b&acirc;y giờ l&agrave; Donquixote gia tộc chủ nh&acirc;n nha, gia hỏa n&agrave;y bao nhi&ecirc;u cũng coi l&agrave; c&oacute; chút l&ograve;ng tr&aacute;ch nhiệm người, kh&ocirc;ng nghĩ lấy m&igrave;nh trực tiếp phủi m&ocirc;ng một c&aacute;i đi, bắt đầu an b&agrave;i giao tiếp l&ecirc;n c&oacute; quan hệ với Donquixote gia tộc c&aacute;c loại quyền lực c&ugrave;ng t&agrave;i ph&uacute; loại h&igrave;nh đồ vật.<br />\r\nL&uacute;c n&agrave;y, nguy&ecirc;n bản kh&ocirc;ng thế n&agrave;o thu h&uacute;t &#39;Claudius&#39; liền bị c&aacute;i n&agrave;y St.Homing cho lừa thảm rồi, d&ugrave; sao từ ph&aacute;p l&yacute; c&ugrave;ng huyết mạch nh&igrave;n lại, hắn Claudius l&agrave; thuộc về ch&iacute;nh thống Donquixote gia tộc người thừa kế.<br />\r\nM&agrave; hết lần n&agrave;y tới lần kh&aacute;c, Thi&ecirc;n Long Nh&acirc;n nh&oacute;m, coi trọng nhất liền l&agrave; huyết mạch, d&ugrave; sao đ&acirc;y cũng l&agrave; duy tr&igrave; lấy bọn hắn giai tầng căn bản lực lượng c&ugrave;ng chế độ m&agrave;.<br />\r\nNhư vậy, khi nguy&ecirc;n bản gia chủ St.Homing muốn rời khỏi Donquixote gia tộc l&uacute;c, Claudius liền bị đương nhi&ecirc;n đẩy ng&atilde; tr&ecirc;n đầu s&oacute;ng ngọn gi&oacute;.<br />\r\nSt.Homing thật đ&uacute;ng l&agrave; muốn đem Donquixote gia tộc một lần nữa giao cho Claudius, m&agrave; Claudius c&aacute;i n&agrave;y củi mục c&ograve;n một ch&uacute;t cũng kh&ocirc;ng c&oacute; cảm thấy c&oacute; c&aacute;i g&igrave; kh&ocirc;ng tốt, phi thường vui mừng tiếp nhận c&aacute;i n&agrave;y an b&agrave;i.<br />\r\nNghĩ đến đ&acirc;y, Claudius đ&atilde; cảm thấy v&ocirc; c&ugrave;ng im lặng, quả nhi&ecirc;n tiền th&acirc;n l&agrave; c&aacute;i ngu ngốc v&ocirc; năng phế vật a, hắn cũng kh&ocirc;ng nghĩ một ch&uacute;t, m&igrave;nh ngoại trừ c&aacute;i kia tr&ecirc;n người huyết mạch tương đối ch&iacute;nh thống b&ecirc;n ngo&agrave;i, c&ograve;n c&oacute; c&aacute;i g&igrave; năng lực c&oacute; thể ch&egrave;o chống hắn tiếp nhận Donquixote gia tộc tộc trưởng?<br />\r\nĐầu ti&ecirc;n tuổi đời n&agrave;y liền kh&ocirc;ng cho ph&eacute;p a, hắn Donquixote gia tộc nam nh&acirc;n cũng kh&ocirc;ng phải chết sạch, c&acirc;̀n ngươi c&aacute;i mười tuổi tiểu quỷ đi l&agrave;m l&atilde;o đại? Tiếp theo, ch&iacute;nh l&agrave; bởi v&igrave; l&agrave; tuổi t&aacute;c rất nhỏ, tăng th&ecirc;m phụ mẫu chết sớm, St.Homing lại l&agrave; c&aacute;i ngốc bạch ngọt, cho n&ecirc;n căn bản kh&ocirc;ng cho hắn Claudius lưu lại c&aacute;i g&igrave; hữu dụng th&agrave;nh vi&ecirc;n tổ chức, bởi vậy tại thế lực tr&ecirc;n phương diện, Claudius cũng l&agrave; một điểm căn cơ đều kh&ocirc;ng c&oacute; củi mục th&ocirc;i.<br />\r\nCuối c&ugrave;ng của cuối c&ugrave;ng, ngươi nếu l&agrave; c&aacute;i nh&acirc;n vật thi&ecirc;n t&agrave;i th&igrave; cũng th&ocirc;i đi, mọi người nếu l&agrave; c&oacute; thể tr&ocirc;ng thấy đi theo ngươi c&oacute; hi vọng, tương lai c&oacute; thể tại mười ch&iacute;n c&aacute;i trong gia tộc n&acirc;ng cao một bước c&aacute;i g&igrave;, n&oacute;i kh&ocirc;ng chừng cũng liền tạm thời ủy khuất một c&aacute;i, thừa nhận ngươi Claudius c&oacute; thể khi l&atilde;o đại rồi.<br />\r\nNhưng hết lần n&agrave;y tới lần kh&aacute;c, tiền th&acirc;n Claudius liền l&agrave; một c&aacute;i l&agrave;m g&igrave; c&aacute;i g&igrave; kh&ocirc;ng được, ăn c&aacute;i g&igrave; c&aacute;i g&igrave; kh&ocirc;ng dư thừa thật &middot; phế vật!</p>\r\n\r\n<p><br />\r\nNhư vậy, Donquixote gia tộc c&ograve;n lại những c&aacute;i kia Thi&ecirc;n Long Nh&acirc;n nh&oacute;m sẽ nghĩ như thế n&agrave;o? Muốn l&agrave; theo ch&acirc;n Claudius loại n&agrave;y v&ocirc; năng lại ngu ngốc tiểu quỷ c&ugrave;ng một chỗ lăn lộn, c&aacute;i n&agrave;y nguy&ecirc;n bản c&ograve;n tại MariJoa x&ecirc;́p hạng kh&ocirc;ng sai Donquixote gia tộc. . . Chỉ sợ kh&ocirc;ng cần hai ba năm, liền muốn đi mười ch&iacute;n gia tộc b&ecirc;n trong khi tầng dưới ch&oacute;t nhất Thi&ecirc;n Long Nh&acirc;n đi.<br />\r\nBởi vậy v&ocirc; luận l&agrave; v&igrave; vinh dự của gia tộc vẫn l&agrave; v&igrave; quyền lực của m&igrave;nh, d&ugrave; sao to&agrave;n bộ Donquixote trong gia tộc những c&aacute;i kia c&oacute; đầu &oacute;c người, đều l&agrave; &acirc;m thầm phản đối lấy để Claudius đến trở th&agrave;nh Donquixote gia tộc chủ nh&acirc;n.<br />\r\nĐiểm n&agrave;y, hiện tại Claudius rất l&yacute; giải, d&ugrave; sao nếu l&agrave; đổi lại hắn tới l&agrave;m lựa chọn, hắn cũng kh&ocirc;ng c&oacute; khả năng lựa chọn để loại phế vật n&agrave;y đến l&agrave;m gia chủ a!<br />\r\nNhưng hết lần n&agrave;y tới lần kh&aacute;c &#39;Người chủ nghĩa l&yacute; tưởng&#39; St.Homing c&aacute;i n&agrave;y ngốc bạch ngọt nh&igrave;n kh&ocirc;ng minh bạch đạo l&yacute; n&agrave;y, c&ograve;n cảm thấy m&igrave;nh đ&acirc;y l&agrave; phi thường ch&iacute;nh nghĩa lựa chọn, đem nguy&ecirc;n bản liền n&ecirc;n thuộc về Claudius quyền h&agrave;nh trả lại cho Claudius m&agrave; th&ocirc;i.<br />\r\nVề sau liền ph&aacute;t sinh đủ loại sự kiện, đầu ti&ecirc;n l&agrave; Claudius bị lừa lấy ăn nhầm bị l&agrave;m th&agrave;nh hoa quả salad Tr&aacute;i &Aacute;c Quỷ, trở th&agrave;nh Thi&ecirc;n Long Nh&acirc;n b&ecirc;n trong tr&ograve; cười.<br />\r\nNguy&ecirc;n bản đ&acirc;y l&agrave; đủ rồi, nhưng hết lần n&agrave;y tới lần kh&aacute;c St.Homing cũng kh&ocirc;ng c&oacute; bởi v&igrave; Claudius trở th&agrave;nh &#39;Tr&ograve; cười&#39; liền cải biến &yacute; nghĩ của m&igrave;nh, c&aacute;i n&agrave;y l&agrave;m cho những c&aacute;i kia kh&ocirc;ng nguyện &yacute; để Claudius trở th&agrave;nh Donquixote gia tộc tộc trưởng số &iacute;t c&oacute; đầu &oacute;c Thi&ecirc;n Long Nh&acirc;n nh&oacute;m c&agrave;ng th&ecirc;m l&agrave;m kh&oacute;.<br />\r\nNếu l&agrave; c&oacute; tuyển, bọn hắn kỳ thật cũng kh&ocirc;ng muốn hại c&aacute;i kia c&ugrave;ng thuộc về &#39;Hậu duệ của Thần&#39; &#39;Đồng b&agrave;o&#39;, bất qu&aacute; tại St.Homing chết đầu &oacute;c ph&iacute;a dưới, tại Claudius c&aacute;i kia kh&ocirc;ng hiểu thấu &#39;Cảm gi&aacute;c ưu việt&#39; ph&iacute;a dưới, bức đến bọn hắn kh&ocirc;ng thể kh&ocirc;ng thống hạ s&aacute;t thủ.<br />\r\nThế l&agrave; liền c&oacute; Claudius lần n&agrave;y tai nạn tr&ecirc;n biển sự kiện, ăn Tr&aacute;i &Aacute;c Quỷ, lại tao ngộ tai nạn tr&ecirc;n biển, nguy&ecirc;n bản Claudius vẫn l&agrave; c&aacute;i l&agrave;m g&igrave; c&aacute;i g&igrave; kh&ocirc;ng được củi mục, dựa theo những n&agrave;y lẽ thường đến xem, hắn hẳn phải chết kh&ocirc;ng nghi ngờ mới đ&uacute;ng chứ.<br />\r\nTr&ecirc;n thực tế, cũng quả thật l&agrave; như thế, Claudius rất xui xẻo chết tại lần n&agrave;y tai nạn tr&ecirc;n biển b&ecirc;n trong, sau đ&oacute; hắn lại đạt được tr&ugrave;ng sinh!<br />\r\nNgồi tại c&aacute;i n&agrave;y bờ biển tr&ecirc;n đ&aacute; ngầm, Claudius nhớ tới trước đ&acirc;y th&acirc;n trải qua cẩu huyết sự t&igrave;nh, liền v&ocirc; c&ugrave;ng im lặng, ph&agrave;m l&agrave; hỗn đản n&agrave;y c&oacute; thể c&oacute; chút tự m&igrave;nh hiểu lấy, chẳng phải bản th&acirc;n cảm gi&aacute;c tốt đẹp đi nguyện &yacute; l&agrave;m c&aacute;i n&agrave;y Donquixote gia tộc gia chủ, vậy hắn hiện tại đừng n&oacute;i sẽ tao ngộ tai nạn tr&ecirc;n biển chết ở chỗ n&agrave;y, thậm ch&iacute; đều kh&oacute; c&oacute; khả năng bị hố lấy ăn c&aacute;i kia Tr&aacute;i &Aacute;c Quỷ.<br />\r\nBất qu&aacute; việc đ&atilde; đến nước n&agrave;y, Claudius cũng kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o xoay xoay qua chỗ kh&aacute;c, chỉ c&oacute; thể suy nghĩ tại tương lai.<br />\r\nL&uacute;c n&agrave;y hắn th&acirc;n ở tại tr&ecirc;n hoang đảo, để ch&iacute;nh hắn tạo con thuyền lời n&oacute;i. . . Kỳ thật cũng kh&ocirc;ng phải l&agrave; kh&ocirc;ng được, nhưng vấn đề l&agrave; hắn cũng kh&ocirc;ng c&oacute; h&agrave;ng hải kinh nghiệm, chớ n&oacute;i chi l&agrave; tại c&aacute;i n&agrave;y hung hiểm thế giới mới b&ecirc;n trong h&agrave;ng hải, bởi vậy Claudius cho l&agrave; m&igrave;nh nếu l&agrave; gi&atilde;y dụa lấy cưỡng &eacute;p ra biển, sẽ chết c&agrave;ng nhanh một ch&uacute;t.<br />\r\nCho n&ecirc;n từ vừa mới bắt đầu, Claudius liền kh&ocirc;ng chuẩn bị tạo thuyền ra biển c&aacute;i g&igrave;, c&ograve;n lại cũng chỉ c&oacute; hai con đường tới chọn, con đường thứ nhất, ở chỗ n&agrave;y c&aacute;i g&igrave; cũng kh&ocirc;ng l&agrave;m, tiếp nhận c&aacute;i n&agrave;y đ&aacute;ng chết vận mệnh, thẳng đến ch&acirc;n ch&iacute;nh chết mất.</p>\r\n\r\n<p><br />\r\nCon đường n&agrave;y cỗ th&acirc;n thể n&agrave;y b&ecirc;n tr&ecirc;n một nhiệm kỳ chủ nh&acirc;n đ&atilde; đi qua, nếu kh&ocirc;ng phải hắn ngồi ăn rồi chờ chết, m&igrave;nh cũng sẽ kh&ocirc;ng tu h&uacute; chiếm tổ chim kh&aacute;ch.<br />\r\nM&agrave; một con đường kh&aacute;c, liền l&agrave; ở chỗ n&agrave;y trước nghĩ biện ph&aacute;p sống s&oacute;t, sau đ&oacute; chờ cứu viện.<br />\r\nKh&ocirc;ng sai, d&ugrave; l&agrave; đ&acirc;y l&agrave; một trận &acirc;m mưu, nhưng Claudius d&ugrave; sao cũng l&agrave; Thi&ecirc;n Long Nh&acirc;n, liền xem như l&agrave;m cho gia tộc kh&aacute;c người đến xem, Donquixote gia tộc cũng tất nhi&ecirc;n sẽ ph&aacute;i người đến t&igrave;m kiếm cứu vớt hắn c&aacute;i n&agrave;y củi mục.<br />\r\nChỉ bất qu&aacute; c&oacute; lẽ thời gian n&agrave;y sẽ hơi k&eacute;o d&agrave;i một ch&uacute;t, thẳng đến k&eacute;o d&agrave;i đến những gia tộc kia b&ecirc;n trong đ&aacute;m người cho l&agrave; hắn Claudius tất nhưng đ&atilde; chết kh&ocirc;ng t&aacute;ng th&acirc;n chi địa về sau, mới c&oacute; h&agrave;nh động.<br />\r\nBất qu&aacute; c&aacute;i n&agrave;y như vậy đủ rồi, Claudius tự nhận l&agrave; m&igrave;nh c&oacute; lẽ vẫn l&agrave; c&oacute; thể chống đỡ cho đến l&uacute;c đ&oacute;, chỉ cần được ph&aacute;i tới đội cứu viện t&igrave;m được, hắn liền c&oacute; thể một lần nữa trở lại MariJoa.<br />\r\n&quot;Mẹ n&oacute;, chờ lão tử một lần nữa về tới MariJoa, chuyện thứ nhất liền l&agrave; tuy&ecirc;n bố c&aacute;i n&agrave;y Donquixote gia tộc tộc trưởng lão tử về sau kh&ocirc;ng l&agrave;m, người n&agrave;o th&iacute;ch l&agrave;m ai l&agrave;m!&quot; Claudius tức giận chửi bới n&oacute;i.<br />\r\nLấy Claudius hiện tại năng lực, coi như hắn đổi c&aacute;i linh hồn, cũng kh&ocirc;ng c&oacute; khả năng một c&aacute;i liền đạt được ủng hộ, trở th&agrave;nh Donquixote gia tộc tộc trưởng.<br />\r\nCho n&ecirc;n c&ugrave;ng n&oacute; đi tranh đoạt c&aacute;i n&agrave;y, c&ograve;n kh&ocirc;ng bằng cứ thế từ bỏ, thay c&aacute;i mạch suy nghĩ, thay c&aacute;i chiến lược đ&acirc;u.<br />\r\nVề phần muốn n&oacute;i Claudius đối với những c&aacute;i kia hố chết th&acirc;n thể n&agrave;y chủ nh&acirc;n đời trước đ&aacute;m gia hỏa c&oacute; c&aacute;i g&igrave; hận &yacute;. . . &Acirc;n, khoan h&atilde;y n&oacute;i, quả nhi&ecirc;n l&agrave; một ch&uacute;t cũng kh&ocirc;ng c&oacute;, d&ugrave; sao ch&iacute;nh hắn đều chướng mắt c&aacute;i n&agrave;y tiền nhiệm.<br />\r\nClaudius l&agrave; tương đối phải thiết thực gia hỏa, hắn cũng sẽ kh&ocirc;ng bởi v&igrave; tiếp nhận th&acirc;n thể của ngươi, liền đem ngươi trước đ&oacute; những c&aacute;i kia &#39;Nợ&#39; tất cả đều tiếp tục chống đỡ, thề muốn v&igrave; trước đ&acirc;y th&acirc;n chủ nh&acirc;n b&aacute;o th&ugrave; c&aacute;i g&igrave;, kh&ocirc;ng tồn tại. . .<br />\r\nĐương nhi&ecirc;n, nếu l&agrave; tại c&aacute;i n&agrave;y về sau, c&ograve;n c&oacute; người ra tay với hắn lời n&oacute;i. . . &Acirc;n, ta Claudius th&iacute;ch nhất đối những c&aacute;i kia tự nhận l&agrave; c&oacute; năng lực đ&aacute;m gia hỏa xuất thủ.<br />\r\n&quot;Nha, b&acirc;y giờ nghĩ nhiều như vậy cũng v&ocirc; dụng, vẫn l&agrave; trước hết nghĩ muốn l&agrave;m sao t&agrave;i năng tại cứu viện tiến đến trước đ&oacute; sống s&oacute;t a. . . S&aacute;ch, Thi&ecirc;n Long Nh&acirc;n d&atilde; ngoại cầu sinh? Đ&uacute;ng l&agrave; mẹ n&oacute; th&uacute; vị. . .&quot; Claudius tự giễu cười cười n&oacute;i.</p>', '0', 'ta-tien-nhiem-la-cai-thieu-nang-tri-tue', 1, '27393', '2022-05-12 04:33:32', '2022-05-12 06:27:18'),
(3, '1', 'test 1', '<p>test 1</p>', '<p>test1</p>', '0', 'test-1', 2, '1', '2022-05-12 05:35:57', '2022-05-12 06:37:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloais`
--

CREATE TABLE `theloais` (
  `id` int(10) UNSIGNED NOT NULL,
  `theloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugtl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloais`
--

INSERT INTO `theloais` (`id`, `theloai`, `slugtl`, `created_at`, `updated_at`) VALUES
(1, 'Kinh dị', 'kinh-di', '2022-05-12 02:58:37', '2022-05-12 02:58:37'),
(2, 'Ma Ám', 'ma-am', '2022-05-12 02:58:40', '2022-05-12 02:58:40'),
(3, 'Hài Hước', 'hai-huoc', '2022-05-12 02:58:42', '2022-05-12 02:58:42'),
(4, 'Võ Thuật', 'vo-thuat', '2022-05-12 02:58:45', '2022-05-12 02:58:45'),
(5, 'Ảo thuật', 'ao-thuat', '2022-05-12 02:58:47', '2022-05-12 02:58:47'),
(6, 'Ngôn Tình', 'ngon-tinh', '2022-05-12 02:58:50', '2022-05-12 02:58:50'),
(7, 'Trinh Thám', 'trinh-tham', '2022-05-12 02:58:55', '2022-05-12 02:58:55'),
(8, 'Phép Thuật', 'phep-thuat', '2022-05-12 02:59:14', '2022-05-12 02:59:14'),
(9, 'anime', 'anime', '2022-05-12 02:59:32', '2022-05-12 02:59:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuocdanhs`
--

CREATE TABLE `thuocdanhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `danhmuc_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuocdanhs`
--

INSERT INTO `thuocdanhs` (`id`, `truyen_id`, `danhmuc_id`) VALUES
(13, 1, 10),
(14, 1, 9),
(15, 1, 3),
(16, 1, 1),
(17, 2, 3),
(18, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuocloais`
--

CREATE TABLE `thuocloais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `theloai_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuocloais`
--

INSERT INTO `thuocloais` (`id`, `truyen_id`, `theloai_id`) VALUES
(16, 1, 9),
(17, 1, 8),
(18, 1, 7),
(19, 1, 4),
(20, 1, 3),
(21, 2, 9),
(22, 2, 8),
(23, 2, 5),
(24, 2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baiviets`
--
ALTER TABLE `baiviets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dmtruyens`
--
ALTER TABLE `dmtruyens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dmtruyens_danhmuc_unique` (`danhmuc`),
  ADD UNIQUE KEY `dmtruyens_slugdm_unique` (`slugdm`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `publishings`
--
ALTER TABLE `publishings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloais`
--
ALTER TABLE `theloais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `theloais_theloai_unique` (`theloai`),
  ADD UNIQUE KEY `theloais_slugtl_unique` (`slugtl`);

--
-- Chỉ mục cho bảng `thuocdanhs`
--
ALTER TABLE `thuocdanhs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuocdanhs_truyen_id_foreign` (`truyen_id`),
  ADD KEY `thuocdanhs_danhmuc_id_foreign` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `thuocloais`
--
ALTER TABLE `thuocloais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuocloais_truyen_id_foreign` (`truyen_id`),
  ADD KEY `thuocloais_theloai_id_foreign` (`theloai_id`);

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
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `baiviets`
--
ALTER TABLE `baiviets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dmtruyens`
--
ALTER TABLE `dmtruyens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `publishings`
--
ALTER TABLE `publishings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `theloais`
--
ALTER TABLE `theloais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `thuocdanhs`
--
ALTER TABLE `thuocdanhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `thuocloais`
--
ALTER TABLE `thuocloais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `thuocdanhs`
--
ALTER TABLE `thuocdanhs`
  ADD CONSTRAINT `thuocdanhs_danhmuc_id_foreign` FOREIGN KEY (`danhmuc_id`) REFERENCES `dmtruyens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thuocdanhs_truyen_id_foreign` FOREIGN KEY (`truyen_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thuocloais`
--
ALTER TABLE `thuocloais`
  ADD CONSTRAINT `thuocloais_theloai_id_foreign` FOREIGN KEY (`theloai_id`) REFERENCES `theloais` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thuocloais_truyen_id_foreign` FOREIGN KEY (`truyen_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
