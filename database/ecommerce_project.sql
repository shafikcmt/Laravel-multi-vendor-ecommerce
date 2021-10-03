-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 03:05 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quia iure', 'quia-iure', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(2, 'consequatur facere', 'consequatur-facere', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(3, 'occaecati ea', 'occaecati-ea', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(4, 'maxime hic', 'maxime-hic', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(5, 'aut deserunt', 'aut-deserunt', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(6, 'numquam sint', 'numquam-sint', '2021-07-28 11:47:15', '2021-07-28 11:47:15'),
(7, 'laudantium et', 'laudantium-et', '2021-07-28 11:48:43', '2021-07-28 11:48:43'),
(8, 'blanditiis fugiat', 'blanditiis-fugiat', '2021-07-28 11:48:43', '2021-07-28 11:48:43'),
(9, 'itaque tempora', 'itaque-tempora', '2021-07-28 11:48:43', '2021-07-28 11:48:43'),
(10, 'ipsum nesciunt', 'ipsum-nesciunt', '2021-07-28 11:48:43', '2021-07-28 11:48:43'),
(11, 'ducimus quos', 'ducimus-quos', '2021-07-28 11:48:43', '2021-07-28 11:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,6', 5, '2021-08-04 02:39:14', '2021-08-05 12:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'First slide title', 'First slide subtitle', '250', 'http://127.0.0.1:8000/shop', '1628036057.jpg', '0', '2021-08-03 18:14:17', '2021-08-03 18:23:56'),
(4, 'Second slide title', 'Second slide subtitle', '352', 'http://127.0.0.1:8000/shop', '1628036144.jpg', '1', '2021-08-03 18:15:44', '2021-08-03 18:15:44'),
(5, 'Third slide title', 'Third slide subtitle', '520', 'http://127.0.0.1:8000/shop', '1628036195.jpg', '1', '2021-08-03 18:16:35', '2021-08-03 18:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_27_133704_create_sessions_table', 1),
(7, '2021_07_28_104029_create_categories_table', 1),
(8, '2021_07_28_104140_create_products_table', 1),
(9, '2021_08_03_133819_create_home_sliders_table', 2),
(10, '2021_08_04_022929_create_home_categories_table', 3),
(11, '2021_08_07_134546_create_sales_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_discription` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `sort_discription`, `discription`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores quo sint quis', 'dolores-quo-sint-quis', 'Quibusdam et enim iste. Quo nihil enim eius maxime. Vel aut rerum possimus ullam.', 'Molestiae rem nemo architecto dolor. Placeat officia quo fugit magni quia ipsa quibusdam. Voluptate corporis sit sint sapiente laudantium corporis. Fuga asperiores veniam aspernatur nostrum nam quia. Blanditiis rerum nisi nihil sit quia rerum. Ea non sunt sequi beatae. Voluptate qui saepe laboriosam cupiditate maxime id dolores. Tempora perferendis aliquam delectus tenetur laudantium repellendus deserunt accusamus.', '248.00', '200.00', 'DIGI313', 'instock', 0, 117, 'digital_8.jpg', NULL, 2, '2021-07-28 11:47:15', '2021-08-06 04:19:23'),
(2, 'vero laboriosam quibusdam dolor', 'vero-laboriosam-quibusdam-dolor', 'Fugit harum tempore deserunt quia impedit id tenetur impedit. Ducimus architecto harum rerum quaerat qui quia eos. Tempora voluptas in magnam. Cumque cumque est consequatur quia aliquid.', 'Ut atque est autem ut. Est eveniet voluptatibus molestias maiores non sit animi iusto. Quae aut ut placeat voluptas aut et voluptatem voluptatem. Fugiat maxime alias porro a dolores. Est vel quia voluptatem magni libero et. Repellendus aut quis ut quas praesentium ipsum ratione quam. Molestias eos qui aut repellendus nisi quisquam. Ut eius occaecati qui quis maxime. Maiores placeat nihil quia. Possimus maxime aspernatur repudiandae voluptatibus deserunt.', '320.00', '300.00', 'DIGI244', 'instock', 0, 196, 'digital_19.jpg', NULL, 3, '2021-07-28 11:48:43', '2021-08-06 04:19:37'),
(3, 'eum porro libero ducimus', 'eum-porro-libero-ducimus', 'Quia aut enim libero quis impedit. Libero velit qui voluptatem cumque molestiae. Voluptas consequuntur non itaque dolore et tempore.', 'Quae doloribus harum maxime beatae laboriosam. Numquam ut vero incidunt modi. Fuga doloremque rerum eveniet et et. Laboriosam aut ut nihil sequi modi. Voluptates in omnis ad possimus non. Ipsa incidunt inventore id aliquid. Enim quis officiis dolor. Aspernatur corrupti qui quia pariatur sunt. Eos dolorem magni ut quis enim. Voluptatem asperiores expedita aperiam. Excepturi quia nihil maiores sit itaque voluptatem.', '359.00', '320.00', 'DIGI201', 'instock', 0, 168, 'digital_3.jpg', NULL, 4, '2021-07-28 11:48:43', '2021-08-06 04:19:52'),
(4, 'tempore facere et ut', 'tempore-facere-et-ut', 'Ut molestiae nesciunt aperiam nihil consequuntur deserunt doloribus. Itaque earum minima ipsam quo. Ut at at fuga corporis minima labore.', 'Ut veritatis omnis fuga id et ea neque. Est molestiae voluptate incidunt sunt aut est. Consequuntur et delectus numquam temporibus non. Voluptatum corporis dolor voluptatem eos sit asperiores molestias. Doloremque quia corrupti optio. Facere illo nemo placeat molestias. Itaque consequuntur molestias quaerat molestiae quo eius omnis. Incidunt eum repellat dolorem. Optio nostrum esse quam fugiat quidem nisi alias. Velit repudiandae maxime et soluta nisi quos.', '176.00', '100.00', 'DIGI161', 'instock', 0, 120, 'digital_15.jpg', NULL, 5, '2021-07-28 11:48:43', '2021-08-06 04:20:06'),
(5, 'qui eos laborum sapiente', 'qui-eos-laborum-sapiente', 'Sint omnis et saepe ut iure et adipisci. Animi quos vel pariatur similique. Animi et dolorem pariatur illo.', 'Sed quas temporibus qui pariatur sint. Aut est nostrum repellat quae. Error distinctio qui labore expedita sapiente numquam sint consequuntur. Laboriosam non qui sit quia quisquam cum velit. Maxime laborum voluptas accusantium atque illum. Sit ut iure nostrum ipsam. Rerum et eos ex adipisci. Earum sed atque maxime enim mollitia. Beatae qui amet provident iure non qui. Explicabo sed quia nesciunt corrupti quos est expedita omnis. Quisquam numquam minus qui temporibus est saepe aut.', '374.00', '350.00', 'DIGI433', 'instock', 0, 163, 'digital_2.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-08-06 04:20:25'),
(6, 'rerum quibusdam ut omnis', 'rerum-quibusdam-ut-omnis', 'Minima rerum omnis quis saepe est perferendis fugit. Nihil ab quisquam laborum optio alias voluptatibus esse quos. Nam et qui non.', 'Sequi aut sit vel. Reprehenderit voluptatem soluta et maiores. Voluptas pariatur aut libero tempore. Eligendi iure optio odit repellat repellendus doloremque nam. Quis maxime doloremque accusantium eos rerum est aliquam. Ipsum deserunt iusto quibusdam doloribus molestiae molestiae voluptates. Rerum et et asperiores dignissimos. Dolores commodi qui ratione ut rerum.', '130.00', '100.00', 'DIGI174', 'instock', 0, 183, 'digital_18.jpg', NULL, 3, '2021-07-28 11:48:44', '2021-08-06 04:20:39'),
(7, 'aperiam perferendis sequi ipsam', 'aperiam-perferendis-sequi-ipsam', 'Impedit debitis ut reprehenderit. A consequatur ad doloremque in voluptatem. Totam et necessitatibus consequuntur consectetur in cumque.', 'Quae quis voluptas excepturi fugiat et. Quo eum placeat expedita magni. Soluta assumenda porro est saepe sunt id. Dolores aut sed non et cumque quisquam autem. Et autem cumque rerum est ut eos qui. Sunt inventore esse voluptatibus est iste libero quisquam culpa. Non quia officiis tempora et dolor. Vitae dignissimos voluptates omnis dicta dolorem et labore. Quidem nisi et pariatur nesciunt hic aut.', '214.00', NULL, 'DIGI157', 'instock', 0, 159, 'digital_5.jpg', NULL, 1, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(8, 'beatae nobis aut molestiae', 'beatae-nobis-aut-molestiae', 'Molestiae qui minima voluptatum. Ad aperiam repudiandae magnam ut sapiente quisquam. Consequatur quo ut consequatur ut ex non sunt. Qui numquam vel quia voluptatem.', 'Et praesentium eius est animi quod mollitia. Eum eos enim labore ducimus occaecati perferendis cupiditate. Atque et eum aut laboriosam voluptas nisi quibusdam mollitia. Qui earum culpa quis voluptatum ex maxime. Repellendus explicabo totam eum sit. Facere vel quam dolorem omnis. Laboriosam incidunt labore esse ad sint molestias. Nam sit reprehenderit laborum delectus atque id. Dolore nisi deleniti sit quos temporibus quae autem. Voluptatum non voluptas omnis ab qui autem distinctio.', '243.00', NULL, 'DIGI379', 'instock', 0, 156, 'digital_14.jpg', NULL, 3, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(9, 'deleniti cupiditate ea doloremque', 'deleniti-cupiditate-ea-doloremque', 'Excepturi et rem soluta vel fugiat accusamus vero facere. Nihil non doloremque consequuntur eveniet. Delectus sed occaecati animi blanditiis ratione quo nihil vero.', 'Et accusantium provident quo quam. Nulla praesentium maxime ut eveniet. Odit quis rerum nulla debitis dolorum dolores. Dolores architecto cumque ea esse assumenda corrupti eius aut. Repellendus omnis autem perferendis inventore distinctio tempora quia consequatur. Consequatur tenetur consectetur et natus voluptatem non illo autem. Animi quia qui tenetur sunt qui iste. Qui blanditiis expedita rerum consectetur enim. Animi qui blanditiis facere et.', '320.00', NULL, 'DIGI147', 'instock', 0, 146, 'digital_1.jpg', NULL, 2, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(10, 'quaerat ab itaque voluptatum', 'quaerat-ab-itaque-voluptatum', 'Quidem dolorem explicabo est. Laboriosam sint id veniam veniam dolores omnis dignissimos. Saepe eveniet esse eum voluptatem.', 'Dolores sunt error asperiores qui sit. Porro neque consequatur qui. Atque aut consequatur ut explicabo. Quibusdam sit voluptatem delectus quia ut laborum. Maxime voluptas quod est minima. Perferendis quae fuga dolore. Suscipit cumque blanditiis expedita eaque et soluta. Autem rerum est in magnam est iure eligendi sint.', '441.00', NULL, 'DIGI216', 'instock', 0, 165, 'digital_12.jpg', NULL, 2, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(11, 'velit quis maiores nam', 'velit-quis-maiores-nam', 'Est ex mollitia sint velit corporis. Molestiae non qui sint incidunt voluptas sit. Qui ducimus eos impedit harum minima quia.', 'Repellendus fugit voluptatem sint ipsum minus labore. Dolores ab omnis minus possimus necessitatibus. Nesciunt voluptas aperiam voluptate repellat eum. Possimus quibusdam aut et sunt voluptas mollitia ex. Iste quia odit facere cupiditate fugiat incidunt quos. Sequi dolor expedita cumque. Est eos natus voluptas voluptatem fugiat non quibusdam possimus. Natus nostrum doloremque totam delectus fugit vel.', '56.00', NULL, 'DIGI230', 'instock', 0, 184, 'digital_7.jpg', NULL, 3, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(12, 'omnis eveniet perspiciatis dolorem', 'omnis-eveniet-perspiciatis-dolorem', 'Expedita doloribus quidem impedit enim blanditiis. Voluptatem aut quibusdam qui aut. Excepturi iure sint et autem eius illo. Facilis veritatis odit quia temporibus at.', 'Explicabo modi consectetur autem ipsum tenetur. Earum et fugiat omnis veniam. Ipsa quia ut possimus maxime ex eveniet nemo aut. Fugit libero ipsum illo a voluptatem. Debitis ea laudantium quae inventore molestiae. Qui ullam esse commodi aut est neque est odit. Deserunt ducimus occaecati dolor molestias tempora molestiae. Aperiam repellendus occaecati maiores iste vel labore. Voluptatem sed soluta ea nisi mollitia. Et sequi quaerat voluptates molestiae.', '19.00', NULL, 'DIGI154', 'instock', 0, 132, 'digital_16.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(13, 'aliquam laboriosam et et', 'aliquam-laboriosam-et-et', 'Distinctio nostrum blanditiis voluptatem facilis. Sit eaque labore porro. Possimus debitis doloremque sequi suscipit harum fugiat.', 'Dolor error esse nihil temporibus nam. Consequatur ducimus excepturi est. Debitis eum explicabo iste qui est vero eveniet. Quae consequatur accusantium ut ratione. Voluptatibus sit sed ipsam aperiam non. Debitis est facere asperiores esse quaerat voluptatum. Fugiat fugit quam dignissimos et eius. Dolore voluptatibus illum natus quis consequatur aut quia. Enim quaerat fuga deserunt et. A quam voluptas dolorem voluptates possimus quam exercitationem quos.', '371.00', NULL, 'DIGI100', 'instock', 0, 132, 'digital_8.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(14, 'error debitis cupiditate consectetur', 'error-debitis-cupiditate-consectetur', 'Libero quidem sit facilis dicta illo minus ut. Itaque omnis ducimus voluptatem porro accusamus. Suscipit mollitia facilis perferendis vel rem eum. Nostrum rerum quasi qui consectetur.', 'Et id delectus vitae eius placeat sit. Omnis saepe eum qui earum laborum eum pariatur. Illum ab excepturi maxime molestias sit voluptatem impedit. Illo labore perspiciatis unde magni. Sit et quia voluptatem asperiores. Dolor velit architecto qui sint. Esse earum quaerat repudiandae numquam eum. Libero nam assumenda odio sed fugit qui. Dolores pariatur rem dolorem quia et. Eveniet totam pariatur nam excepturi itaque. Nostrum rerum cupiditate repudiandae accusantium iste impedit dolorum.', '483.00', NULL, 'DIGI301', 'instock', 0, 144, 'digital_10.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(15, 'iste eos est illo', 'iste-eos-est-illo', 'Ut neque magni aperiam enim velit ducimus et. Aperiam sint facilis ipsa magnam eum omnis ut officia. Ut amet aperiam sapiente dolorum sed in in.', 'Cupiditate eos magni illo nulla aut aut repellat. Accusamus sed natus atque doloremque qui. Et a beatae culpa aperiam dolores. Autem a labore commodi est nesciunt autem mollitia et. Ut ab in necessitatibus corrupti. Deleniti delectus molestias explicabo rem. Quam quasi repudiandae labore corrupti ullam. Accusantium ut et qui similique. Ut nihil qui voluptate repellendus qui doloribus asperiores. Deserunt nam sit doloribus quaerat at voluptas. Eligendi nesciunt consequatur molestiae deleniti.', '98.00', NULL, 'DIGI401', 'instock', 0, 116, 'digital_22.jpg', NULL, 1, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(16, 'mollitia qui quia deleniti', 'mollitia-qui-quia-deleniti', 'Hic quasi et dolore. Corporis veritatis laborum eligendi voluptates. Expedita officiis perferendis omnis non. Ea molestiae sed aliquam repellat exercitationem alias dolorem.', 'Vel quisquam sed et nostrum porro fuga ut. Porro iusto delectus perspiciatis repellat dolores aperiam officia. Vel magni qui quibusdam maiores qui enim. Aut iure totam voluptatem et. Qui neque non repellendus molestiae. Voluptas officia assumenda quas voluptatibus molestiae. Impedit a quod dignissimos beatae fuga nobis mollitia pariatur.', '439.00', NULL, 'DIGI370', 'instock', 0, 108, 'digital_6.jpg', NULL, 3, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(17, 'dolores non ipsam non', 'dolores-non-ipsam-non', 'Praesentium autem odio nulla corrupti molestiae qui sint. Voluptatibus voluptatibus quaerat ipsa ab eaque sed eius quaerat.', 'Incidunt voluptatem sit optio dolorem asperiores vitae. Similique vitae nobis neque repudiandae vitae. Ducimus praesentium assumenda tenetur. Voluptas aliquam aliquam exercitationem quia. Velit quae perferendis et cumque. Quis similique sunt voluptatem delectus tenetur asperiores quos. Omnis qui et aspernatur omnis fugit at. Sint debitis qui doloribus rerum. Quas quasi neque voluptatem enim quia commodi.', '85.00', NULL, 'DIGI344', 'instock', 0, 103, 'digital_4.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(18, 'architecto nobis consequatur dignissimos', 'architecto-nobis-consequatur-dignissimos', 'Delectus adipisci est delectus ipsum repellat ea rerum. In nobis sint fuga ullam dolores et molestiae. Officiis iste provident voluptas non ipsam.', 'Minima aut est laboriosam et. Repudiandae maxime ut et optio. Nisi maiores vel recusandae et. Quidem ex qui ipsa ea et error blanditiis deserunt. Labore cum dolor est quo omnis hic magni vel. Inventore omnis molestiae magni et reprehenderit. Maiores sed est est qui tenetur. Minima et sit et quam sint eos aut. Amet assumenda sequi labore et quo veniam. Ea temporibus enim suscipit voluptatem voluptas.', '64.00', NULL, 'DIGI309', 'instock', 0, 105, 'digital_20.jpg', NULL, 1, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(19, 'repudiandae et commodi eaque', 'repudiandae-et-commodi-eaque', 'Consequuntur provident vitae ut nesciunt consequatur adipisci hic. Autem expedita sint quo consequatur nam. Nesciunt magnam aut et est dolor eum.', 'Ad qui tempora et aperiam sint quo. Ratione dolorem eveniet adipisci fuga. Et alias aut dignissimos voluptates quo magnam dignissimos. Quos dignissimos sit nesciunt illum. Sit possimus non ullam quo quo rerum qui. Consequatur eum ad sit quia nulla mollitia dolor. Laudantium porro ut voluptatem deserunt adipisci. Qui cumque pariatur temporibus dolores repellendus. Nesciunt neque nostrum molestias qui laboriosam odit. Earum repellat et consequatur fuga rem.', '81.00', NULL, 'DIGI360', 'instock', 0, 134, 'digital_21.jpg', NULL, 3, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(20, 'et placeat ut quam', 'et-placeat-ut-quam', 'Dolorem ut quis asperiores non ut eos quisquam. Illo in esse labore. Aut sed enim dolor. Maiores fugiat ea suscipit commodi.', 'Vel officia tempore quia in exercitationem et voluptatem quia. Nihil qui reiciendis aut qui perferendis et exercitationem eaque. Nobis aliquid quidem itaque molestiae eum quis. Rerum vitae sint tenetur et explicabo pariatur quisquam. Aut non sint incidunt atque delectus. Consequatur natus est harum corrupti voluptas vitae. Ea natus enim eum omnis error. Ducimus ut nobis quia qui. Est natus sint enim. Nemo debitis aut libero omnis.', '487.00', NULL, 'DIGI206', 'instock', 0, 172, 'digital_13.jpg', NULL, 4, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(21, 'aperiam debitis eum velit', 'aperiam-debitis-eum-velit', 'Error veniam qui sit et reprehenderit est nisi. Distinctio magnam similique ea omnis. Repudiandae et laudantium vitae quod officiis.', 'Inventore deserunt harum consequatur in quis dolore quis. Libero ut accusantium ut et dolor magnam eos dolorem. Est veniam vel ipsam ratione maxime totam. Aut ut soluta neque ex rerum. At dolores repellat aut ipsam. Tenetur similique rerum consectetur dicta dignissimos quo iste quidem. Rem maxime quia laboriosam commodi dolorem in. Est voluptatem dolores accusamus accusantium. In nesciunt velit repellat consequatur voluptates et. Ullam consequatur beatae soluta est dolor quam.', '365.00', NULL, 'DIGI264', 'instock', 0, 179, 'digital_17.jpg', NULL, 1, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(22, 'et rerum voluptatem magni', 'et-rerum-voluptatem-magni', 'Ipsam voluptatum consequatur et tempore. Tempore dolor aut mollitia a facere et. Temporibus porro quae ex cupiditate cum quia. Expedita ut sed modi optio dicta et.', 'Aut quia cum perspiciatis qui est magnam. Quasi illum quas aspernatur et. Voluptatem harum eaque voluptas unde pariatur dolore aut doloremque. Ad ipsam hic nam harum consequatur cumque facere accusamus. Rerum dicta qui perferendis repudiandae. Iste nisi dolor nihil. Est quis cupiditate aperiam aperiam necessitatibus qui dolorem.', '333.00', NULL, 'DIGI292', 'instock', 0, 120, 'digital_11.jpg', NULL, 5, '2021-07-28 11:48:44', '2021-07-28 11:48:44'),
(25, 'new product-1', 'new-product-1', 'new-product-1 short discription', 'new-product-1  discription', '354.00', NULL, 'DIGI1245', 'instock', 0, 120, '1628038462.jpg', NULL, 7, '2021-08-03 18:54:22', '2021-08-03 18:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-08-11 06:18:15', 1, NULL, '2021-08-07 12:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LKJiozhR7OPSofB7IX7qWZeLPVCCPmzMVNc3QkOt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidmsxTnJHSk83QUYzZllpZk93OHZJNzgzN1k1M2g3T25CZk1HWFVKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMGQ4ODE4MTdiYjgxZTYwMTdkMmRmOTJkMDMxM2Y2MDciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwZDg4MTgxN2JiODFlNjAxN2QyZGY5MmQwMzEzZjYwNyI7czoyOiJpZCI7aToyNTtzOjM6InF0eSI7aToyO3M6NDoibmFtZSI7czoxMzoibmV3IHByb2R1Y3QtMSI7czo1OiJwcmljZSI7ZDozNTQ7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1630076878),
('TWTlK7xN5AKaKCDjFcZQrGby0NhsbEj1rMFRz25j', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiOXQ4anBFUnUzcHBnU0xraE9vd2FESGxXaWRJdG83OEpCMG1SUkxyciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRnTWVsQ0s5OG1WSFhMU1JZU1JKM3dlc0pqa3Z0R1hYRTBQc2x1SmFSL2hFb1hjYVdCT3VSZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZ01lbENLOThtVkhYTFNSWVNSSjN3ZXNKamt2dEdYWEUwUHNsdUphUi9oRW9YY2FXQk91UmUiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjhhNDhhYTdjOGU1MjAyODQxZGRhZjc2N2JiNGQxMGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiOGE0OGFhN2M4ZTUyMDI4NDFkZGFmNzY3YmI0ZDEwZGEiO3M6MjoiaWQiO2k6NjtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoyNDoicmVydW0gcXVpYnVzZGFtIHV0IG9tbmlzIjtzOjU6InByaWNlIjtkOjEwMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1628362562);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for user or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$gMelCK98mVHXLSRYSRJ3wesJjkvtGXXE0PsluJaR/hEoXcaWBOuRe', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-07-31 16:50:03', '2021-07-31 16:50:03'),
(2, 'User', 'user@user.com', NULL, '$2y$10$pWE3FibfyjPVQ1Wwo9HmQ.zkYimQnxG/9Jcf7mvxZuvRLzdqLWqTu', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-07-31 16:51:08', '2021-07-31 16:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
