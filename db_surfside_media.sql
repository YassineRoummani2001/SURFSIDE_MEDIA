-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table db_surfside_media.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.categories: ~8 rows (approximately)
INSERT INTO `categories` (`id`, `image`, `name`, `slug`, `is_popular`, `created_at`, `updated_at`) VALUES
	(9, '1683303892.jpg', 'T-SHIRT', 't-shirt', 1, '2023-05-05 16:24:52', '2023-05-05 16:38:21'),
	(10, '1683304806.jpg', 'Hats', 'hats', 1, '2023-05-05 16:40:06', '2023-05-05 16:40:06'),
	(11, '1683304846.jpg', 'Jumpsuits', 'jumpsuits', 1, '2023-05-05 16:40:46', '2023-05-05 16:40:46'),
	(12, '1683304880.jpg', 'Bags', 'bags', 1, '2023-05-05 16:41:21', '2023-05-05 16:41:21'),
	(13, '1683304925.jpg', 'Sandan', 'sandan', 1, '2023-05-05 16:42:05', '2023-05-05 16:42:05'),
	(14, '1683304977.jpg', 'Scarf Cap', 'scarf-cap', 1, '2023-05-05 16:42:57', '2023-05-05 16:42:57'),
	(15, '1683305022.jpg', 'Shoes', 'shoes', 1, '2023-05-05 16:43:42', '2023-05-05 16:43:42'),
	(16, '1683305062.jpg', 'Pillowcase', 'pillowcase', 1, '2023-05-05 16:44:22', '2023-05-05 16:44:22');

-- Dumping structure for table db_surfside_media.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table db_surfside_media.home_sliders
CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.home_sliders: ~2 rows (approximately)
INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(2, 'Trade-in offer', 'Supper vlue deals', 'On all products', 'Save more with coupons & up 50% Off', 'http://localhost:8000/shop', '1683218390.png', 1, '2023-05-04 16:23:00', '2023-05-04 16:39:50'),
	(3, 'Hot promotions', 'Fashion Trending', 'Great Collection', 'Save more with coupons & up to 50% off', 'http://localhost:8000/shop', '1683218545.png', 1, '2023-05-04 16:42:25', '2023-05-04 16:42:25'),
	(4, 'Every Day', 'Up To Savings', 'Over 400 Products Daily', 'Save more with coupons & up to 20% off', 'http://localhost:8000/shop', '1683220003.png', 1, '2023-05-04 17:06:43', '2023-05-04 17:06:43');

-- Dumping structure for table db_surfside_media.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_04_30_123626_create_categories_table', 2),
	(6, '2023_04_30_123839_create_products_table', 2),
	(7, '2023_05_04_134550_create_home_sliders_table', 3),
	(8, '2023_05_05_152952_add_image_and_is_popular_column_to_categories_table', 4);

-- Dumping structure for table db_surfside_media.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.password_resets: ~0 rows (approximately)

-- Dumping structure for table db_surfside_media.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table db_surfside_media.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.products: ~19 rows (approximately)
INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
	(20, 'T-shirt Tupac Me Against', 't-shirt-tupac-me-against', 'T-shirt gris sous licence Tupac à manches courtes et col rond.', 'T-shirt gris sous licence Tupac à manches courtes et col rond, avec inscription contrastante Me Against The World et 100 % coton.', 20.99, 17.99, 'TDSFD1715', 'instock', 1, 150, '1683304167.jpg', NULL, 9, '2023-05-05 16:29:27', '2023-05-05 16:30:24'),
	(21, 'T-SHIRT SS', 't-shirt-ss', 'The Sven T-shirt is made from organic cotton, making it not only very comfortable.', 'The Sven T-shirt is made from organic cotton, making it not only very comfortable, but also made in a sustainable way and using methods that take into account the impact on the environment.', 23.90, 23.90, 'TDSSD2390', 'instock', 1, 100, '1683305361.jpg', NULL, 9, '2023-05-05 16:49:21', '2023-05-05 16:49:21'),
	(22, 'T-SHIRT', 't-shirt', 'The T-shirt is made from organic cotton, making it not only very comfortable, but also made in a sustainable way and using methods that take into account the impact on the environmen.', 'The T-shirt is made from organic cotton, making it not only very comfortable.', 30.00, 30.00, 'GDDFD4343', 'instock', 1, 100, '1683305474.jpg', NULL, 9, '2023-05-05 16:51:14', '2023-05-05 16:51:14'),
	(24, 'T-Shirt Tupac ', 't-shirt-tupac', 'The Sven T-shirt is made from organic  but also made in a sustainable way and using methods that take into account the impact on the environment.', 'The Sven T-shirt is made from organic , but also made in a sustainable way and using methods that take into account the impact on the environment.', 199.99, 199.99, 'NDPFP0202', 'instock', 1, 100, '1683305644.jpg', NULL, 9, '2023-05-05 16:54:04', '2023-05-05 16:54:04'),
	(25, 'Litioi T-SHIRT SS', 'litioit-shirt-ss', 'Light, fast drying and simple looking T-shirt made from super lightweight DELTAPEAK fabric. You can use it as base layer for summer trail running, hiking or cycling, but as a leisure wear it works great too.', 'Light, fast drying and simple looking T-shirt made from super lightweight DELTAPEAK fabric.', 14.90, 14.90, 'TDSSL9014', 'instock', 1, 100, '1683305821.jpg', NULL, 9, '2023-05-05 16:57:01', '2023-05-05 16:57:01'),
	(26, 'Cloud 5 Running Shoe (Men)', 'cloud-5-running-shoe-men', 'Runner-tech performance meets all-day comfort in a hybrid running/lifestyle shoe that goes the distance on the road, in the game or around town.', 'Runner-tech performance meets all-day comfort .', 100.99, 100.99, 'TDSHM1090', 'instock', 1, 100, '1683306158.jpg', NULL, 15, '2023-05-05 17:01:26', '2023-05-05 17:02:38'),
	(27, 'New Balance', 'new-balance', 'New Balance numeric collaborates with Tokyo-based label Challenger Brigade for a fashionable take on the 440 Skate shoe. With a grey combination suede and mesh upper paying homage to retro New Balance models.', 'New Balance numeric collaborates with Tokyo-based label Challenger Brigade for a fashionable take on the 440 Skate shoe', 109.95, 109.95, 'TDSNB1715', 'instock', 1, 100, '1683306472.webp', NULL, 15, '2023-05-05 17:07:52', '2023-05-05 17:07:52'),
	(28, 'Specialized x Fjallraven', 'specialized-x-fjallraven', 'Buy the Specialized x Fjallraven Hat online or shop all Men from Steepandcheap.com.', 'Buy the Specialized x Fjallraven Hat online or shop all Men from Steepandcheap.com.', 36.99, 36.99, 'GDSFD3699', 'instock', 1, 100, '1683306810.jpg', NULL, 10, '2023-05-05 17:13:30', '2023-05-05 17:13:30'),
	(29, 'x Fjallraven Hat', 'x-fjallraven-hat', 'Part of the Specialized/Fjllrven Exchange series for urban rides and bikepacking adventures.', 'Part of the Specialized/Fjllrven Exchange series for urban rides and bikepacking adventures.', 39.99, 39.99, 'TDSFX3999', 'instock', 1, 100, '1683306963.jpg', NULL, 10, '2023-05-05 17:16:03', '2023-05-05 17:16:03'),
	(30, 'Jersey Jumpsuit - 16', 'jersey-jumpsuit-16', 'MATERNITY Khaki Jersey Jumpsuit - 16', 'MATERNITY Khaki Jersey Jumpsuit - 16', 299.49, 299.49, 'TDJJE1616', 'instock', 1, 100, '1683307218.jpg', NULL, 11, '2023-05-05 17:20:18', '2023-05-05 17:20:18'),
	(31, 'Best-Selling Jumpsuits', 'best-selling-jumpsuits', 'Jumpsuits are a timeless piece of clothing, are easy to wear, are fashionable, while simultaneously comfortable. They are generally regarded as an outfit of convenience, as they are simpler, lighter and more flexible to wear.', 'Jumpsuits are a timeless piece of clothing, are easy to wear, are fashionable, while simultaneously comfortable. ', 589.49, 589.49, 'GDDJJ4343', 'instock', 1, 100, '1683307491.jpg', NULL, 11, '2023-05-05 17:24:51', '2023-05-05 17:24:51'),
	(32, 'Classic Easy Tote', 'classic-easy-tote', 'Designed to go everywhere. A soft and lightweight bag for casual outing', 'Designed to go everywhere. A soft and lightweight bag for casual outing', 248.00, 248.00, 'TDSBG2480', 'instock', 1, 100, '1683307621.jpg', NULL, 12, '2023-05-05 17:27:01', '2023-05-05 17:27:01'),
	(33, 'Slim Wristlet Wallet', 'slim-wristlet-wallet', 'A versatile accessory for the woman on the go that also plays double-duty as a clutch for quick outings and evening events, made from soft and durable Italian pebbled leather.', 'A versatile accessory for the woman on the go that also plays double-duty as a clutch for quick outings and evening events.', 118.00, 118.00, 'GDDBG1188', 'instock', 1, 100, '1683307732.jpg', NULL, 12, '2023-05-05 17:28:52', '2023-05-05 17:28:52'),
	(34, 'Sandals for women PUL-115', 'sandals-for-women-pul-115', 'Flaunt your style with this charming cross strap design. Adjustable belt & extra soft in-sole ensure good fit & comfort.', 'Flaunt your style with this charming cross strap design. Adjustable belt & extra soft in-sole ensure good fit & comfort.', 289.49, 289.49, 'NDPFSL2920', 'instock', 1, 100, '1683307914.jpg', NULL, 13, '2023-05-05 17:31:54', '2023-05-05 17:31:54'),
	(35, 'Sandals for women SS-619', 'sandals-for-women-ss-619', 'A lightweight, comfortable and attractive design with cushioned outsole which adds comfort & style quotient.', 'A lightweight, comfortable and attractive design with cushioned outsole which adds comfort & style quotient.', 765.00, 765.00, 'TDSLD1715', 'instock', 1, 100, '1683308000.jpg', NULL, 13, '2023-05-05 17:33:20', '2023-05-05 17:33:20'),
	(36, 'Gajraj Winter', 'gajraj-winter', 'Gajraj Winter Knit Beanie Woolen Cap Hat and Neck Warmer Scarf Set for Men & Women (2 Piece)', 'Gajraj Winter Knit Beanie Woolen Cap Hat and Neck Warmer Scarf Set for Men & Women (2 Piece)', 276.00, 276.00, 'TDSCC9014', 'instock', 1, 100, '1683308306.jpg', NULL, 14, '2023-05-05 17:38:26', '2023-05-05 17:38:26'),
	(37, 'FURTALK Beanie', 'furtalk-beanie', 'FURTALK Beanie Men Women Warm Winter Hats Acrylic Knit Cuffed Beanie Daily Beanie Hat Unisex Plain Skull Cap', 'FURTALK Beanie Men Women Warm Winter Hats Acrylic Knit Cuffed Beanie Daily Beanie Hat Unisex Plain Skull Cap', 789.00, 789.00, 'TDSCC7089', 'instock', 1, 100, '1683308461.jpg', NULL, 14, '2023-05-05 17:41:01', '2023-05-05 17:41:01'),
	(38, 'PERCALE', 'percale', 'Our classic percale-weave pillowcase is simple and stylish, woven in 100% organic cotton. The dense weave makes the pillowcase soft, durable and breathable, and creates a matte and crisp look.', 'Our classic percale-weave pillowcase is simple and stylish, woven in 100% organic cotton.', 262.00, 262.00, 'TDPLL2625', 'instock', 1, 100, '1683308709.jpg', NULL, 16, '2023-05-05 17:45:09', '2023-05-05 17:45:09'),
	(39, 'Lunarable Paint Throw', 'lunarable-paint-throw', 'Lunarable Paint Throw Pillow Cushion Cover, Exotic Dahlia Flowers Inspirational Nature Beauty Flourish Print, Decorative Square Accent Pillow Case, 40" X 40", Lavender Violet Blue', 'Lunarable Paint Throw Pillow Cushion Cover, Exotic Dahlia Flowers Inspirational Nature Beauty Flourish Print, Decorative Square Accent Pillow Case, 40" X 40", Lavender Violet Blue', 18.99, 18.99, 'TDPLL1890', 'instock', 1, 100, '1683308910.jpg', NULL, 16, '2023-05-05 17:48:30', '2023-05-05 17:48:30');

-- Dumping structure for table db_surfside_media.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_surfside_media.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Yassine Roummani', 'yassinerou221@email.com', NULL, '$2y$10$W3ZPJqDztVWvsWQmFxmIyOnA0uI0xqIRftT.CZ6iQkUaTe02Mxhmi', 'ADM', 'DZAQeoNUAUVndIAjH3w71j3yANU9e8GxX7KoGhV9oPYcFzOgbi4J1lQkDOrh', '2023-04-29 15:50:06', '2023-04-29 15:50:06'),
	(2, 'yassine yassine', 'yassine@email.com', NULL, '$2y$10$4ZTo3DuR43.BSASJPXv10OWCud1NMmRXNxJ3WG5se6UNtIPlZKAwa', 'USR', 'VdnkI6hOjFo7akpa7J0QxbGpBuxM3mpbwSuK9YCGv3M5xhHkKZag9wbVKjj6', '2023-04-29 15:52:19', '2023-04-29 15:52:19'),
	(3, 'Mohamed Elmahi', 'mohamedelmahi@email.com', NULL, '$2y$10$apfa.lh9eiZiD2fhmJr8wuNkCz6TRuajyP2dCU7KlP7U4cs/jiP7O', 'USR', NULL, '2023-04-30 12:21:12', '2023-04-30 12:21:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
