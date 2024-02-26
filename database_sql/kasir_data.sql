-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 03:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `harga_beli` double(8,2) NOT NULL,
  `harga_jual` double(8,2) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode`, `nama`, `kategori_id`, `harga_beli`, `harga_jual`, `satuan_id`, `stok`, `diskon`, `created_at`, `updated_at`) VALUES
(2, 'B-0002', 'indomie soto', '3', 3000.00, 4000.00, 2, 95, 0.00, '2024-02-14 17:48:32', '2024-02-18 18:57:01'),
(3, 'B-0001', 'sabun lifebuoy', '3', 20000.00, 22000.00, 2, 97, 0.00, '2024-02-14 17:56:34', '2024-02-14 20:40:28'),
(4, 'B-0001', 'sabun lifebuoy', '3', 20000.00, 22000.00, 2, 97, 1.00, '2024-02-14 18:20:53', '2024-02-14 19:22:19'),
(5, 'B-0002', 'Mie Goreng', '2', 3000.00, 4000.00, 2, 97, 0.00, '2024-02-15 17:25:50', '2024-02-18 18:53:36'),
(6, 'B-0001', 'sabun dettol', '3', 20000.00, 32000.00, 2, 97, 2.00, '2024-02-15 17:26:46', '2024-02-18 18:57:01'),
(7, 'B-0002', 'Rinso', '3', 3000.00, 5000.00, 2, 99, 0.00, '2024-02-18 18:53:18', '2024-02-18 18:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(3, 'sabun', '2024-02-14 17:54:15', '2024-02-14 17:54:15'),
(4, 'mie', '2024-02-18 18:52:05', '2024-02-18 18:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_08_132653_create_kategoris_table', 1),
(6, '2024_01_08_132723_create_satuans_table', 1),
(7, '2024_01_08_132733_create_barangs_table', 1),
(8, '2024_01_08_132801_create_penjualans_table', 1),
(9, '2024_01_12_125330_create_transaksis_table', 1),
(10, '2024_01_12_125358_create_transaksi_sementaras_table', 1),
(11, '2024_01_15_004113_create_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `diskon` double(8,2) DEFAULT NULL,
  `total_belanja` double(8,2) NOT NULL,
  `kembali` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(2, 'pcs', '2024-02-14 17:46:47', '2024-02-14 17:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `total` double(10,2) NOT NULL,
  `bayar` double(10,2) NOT NULL,
  `kembali` double(10,2) NOT NULL,
  `kode_kasir` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `kode_transaksi`, `total`, `bayar`, `kembali`, `kode_kasir`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, '2024210000001', 4000.00, 6000.00, 2000.00, 'K-20241100001', '2024-02-15 07:52:46', '2024-02-14 17:52:46', '2024-02-14 17:52:46'),
(2, '2024210000002', 22000.00, 40000.00, 18000.00, 'K-20241100001', '2024-02-15 08:00:22', '2024-02-14 18:00:22', '2024-02-14 18:00:22'),
(3, '2024210000003', 4000.00, 1.00, -3999.00, 'K-20241100001', '2024-02-15 08:00:40', '2024-02-14 18:00:40', '2024-02-14 18:00:40'),
(4, '2024210000004', 22000.00, 1.00, -21999.00, 'K-20241100001', '2024-02-15 08:07:40', '2024-02-14 18:07:40', '2024-02-14 18:07:40'),
(5, '2024210000005', 21780.00, 25000.00, 3220.00, 'K-20241100001', '2024-02-15 08:23:20', '2024-02-14 18:23:20', '2024-02-14 18:23:20'),
(6, '2024210000006', 4000.00, 20000.00, 16000.00, 'K-20242100002', '2024-02-15 08:39:18', '2024-02-14 18:39:18', '2024-02-14 18:39:18'),
(7, '2024210000007', 21780.00, 1000000.00, 978220.00, 'K-20241100001', '2024-02-15 08:47:29', '2024-02-14 18:47:29', '2024-02-14 18:47:29'),
(8, '2024210000008', 4000.00, 1000000.00, 996000.00, 'K-20241100001', '2024-02-15 08:48:42', '2024-02-14 18:48:42', '2024-02-14 18:48:42'),
(9, '2024210000009', 21780.00, 2000000.00, 1978220.00, 'K-20242100002', '2024-02-15 09:22:19', '2024-02-14 19:22:19', '2024-02-14 19:22:19'),
(10, '2024210000010', 4000.00, 1000000.00, 996000.00, 'K-20241100001', '2024-02-15 09:31:22', '2024-02-14 19:31:22', '2024-02-14 19:31:22'),
(11, '2024210000011', 22000.00, 50000.00, 28000.00, 'K-20241100001', '2024-02-15 10:40:28', '2024-02-14 20:40:28', '2024-02-14 20:40:28'),
(12, '2024210000012', 31360.00, 40000.00, 8640.00, 'K-20241100001', '2024-02-16 07:27:22', '2024-02-15 17:27:22', '2024-02-15 17:27:22'),
(13, '2024210000013', 768000.00, 1000000.00, 232000.00, 'K-20241100001', '2024-02-16 07:38:21', '2024-02-15 17:38:21', '2024-02-15 17:38:21'),
(14, '2024210000014', 4000.00, 1000000.00, 996000.00, 'K-20241100001', '2024-02-16 09:21:02', '2024-02-15 19:21:02', '2024-02-15 19:21:02'),
(15, '2024210000015', 4000.00, 1000000.00, 996000.00, 'K-20242100002', '2024-02-16 09:21:55', '2024-02-15 19:21:55', '2024-02-15 19:21:55'),
(16, '2024210000016', 8000.00, 20000.00, 12000.00, 'K-20241100001', '2024-02-19 08:44:29', '2024-02-18 18:44:29', '2024-02-18 18:44:29'),
(17, '2024210000017', 35360.00, 50000.00, 14640.00, 'K-20241100001', '2024-02-19 08:45:20', '2024-02-18 18:45:20', '2024-02-18 18:45:20'),
(18, '2024210000018', 9000.00, 10000.00, 1000.00, 'K-20241100001', '2024-02-19 08:53:36', '2024-02-18 18:53:36', '2024-02-18 18:53:36'),
(19, '2024210000019', 35360.00, 50000.00, 14640.00, 'K-20241100001', '2024-02-19 08:57:01', '2024-02-18 18:57:01', '2024-02-18 18:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `harga` double(10,2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `kode_transaksi`, `barang`, `harga`, `jumlah`, `diskon`, `total`, `created_at`, `updated_at`) VALUES
(1, '2024210000001', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-14 17:52:46', '2024-02-14 17:52:46'),
(2, '2024210000002', 'sabun lifebuoy', 22000.00, 1, 0.00, 22000.00, '2024-02-14 18:00:22', '2024-02-14 18:00:22'),
(3, '2024210000003', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-14 18:00:40', '2024-02-14 18:00:40'),
(4, '2024210000004', 'sabun lifebuoy', 22000.00, 1, 0.00, 22000.00, '2024-02-14 18:07:40', '2024-02-14 18:07:40'),
(5, '2024210000005', 'sabun lifebuoy', 22000.00, 1, 1.00, 21780.00, '2024-02-14 18:23:20', '2024-02-14 18:23:20'),
(6, '2024210000006', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-14 18:39:18', '2024-02-14 18:39:18'),
(7, '2024210000007', 'sabun lifebuoy', 22000.00, 1, 1.00, 21780.00, '2024-02-14 18:47:29', '2024-02-14 18:47:29'),
(8, '2024210000008', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-14 18:48:41', '2024-02-14 18:48:41'),
(9, '2024210000009', 'sabun lifebuoy', 22000.00, 1, 1.00, 21780.00, '2024-02-14 19:22:19', '2024-02-14 19:22:19'),
(10, '2024210000010', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-14 19:31:03', '2024-02-14 19:31:03'),
(11, '2024210000011', 'sabun lifebuoy', 22000.00, 1, 0.00, 22000.00, '2024-02-14 20:40:28', '2024-02-14 20:40:28'),
(12, '2024210000012', 'sabun dettol', 32000.00, 1, 2.00, 31360.00, '2024-02-15 17:27:21', '2024-02-15 17:27:21'),
(13, '2024210000013', 'indomie soto', 4000.00, 96, 0.00, 384000.00, '2024-02-15 17:38:21', '2024-02-15 17:38:21'),
(14, '2024210000013', 'indomie soto', 4000.00, 96, 0.00, 384000.00, '2024-02-15 17:38:21', '2024-02-15 17:38:21'),
(15, '2024210000014', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-15 19:21:02', '2024-02-15 19:21:02'),
(16, '2024210000015', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-15 19:21:55', '2024-02-15 19:21:55'),
(17, '2024210000016', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-18 17:10:46', '2024-02-18 17:10:46'),
(18, '2024210000016', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-18 18:44:29', '2024-02-18 18:44:29'),
(19, '2024210000016', 'Mie Goreng', 4000.00, 1, 0.00, 4000.00, '2024-02-18 18:44:29', '2024-02-18 18:44:29'),
(20, '2024210000017', 'sabun dettol', 32000.00, 1, 2.00, 31360.00, '2024-02-18 18:45:20', '2024-02-18 18:45:20'),
(21, '2024210000017', 'Mie Goreng', 4000.00, 1, 0.00, 4000.00, '2024-02-18 18:45:20', '2024-02-18 18:45:20'),
(22, '2024210000018', 'Rinso', 5000.00, 1, 0.00, 5000.00, '2024-02-18 18:53:36', '2024-02-18 18:53:36'),
(23, '2024210000018', 'Mie Goreng', 4000.00, 1, 0.00, 4000.00, '2024-02-18 18:53:36', '2024-02-18 18:53:36'),
(24, '2024210000019', 'indomie soto', 4000.00, 1, 0.00, 4000.00, '2024-02-18 18:57:01', '2024-02-18 18:57:01'),
(25, '2024210000019', 'sabun dettol', 32000.00, 1, 2.00, 31360.00, '2024-02-18 18:57:01', '2024-02-18 18:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_sementaras`
--

CREATE TABLE `transaksi_sementaras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` double(10,2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `kode`, `nama`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'K-20241100001', 'administrator', 'admin@gmail.com', NULL, '$2y$12$TlSc2Q/QF5x4GRnQO3r5DOpeaavK/RtRLzJZNAxz3McZ/uyulZlCu', 'Admin', NULL, NULL, NULL),
(2, 'K-20242100002', 'arya', 'kasir@gmail.com', NULL, '$2y$12$MM7sMmyDbNLea68TfNp8/e3T5PBNIjaOjS6wclf78lqoq93vhgvca', 'Kasir', NULL, '2024-02-11 21:51:49', '2024-02-11 21:51:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_sementaras`
--
ALTER TABLE `transaksi_sementaras`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaksi_sementaras`
--
ALTER TABLE `transaksi_sementaras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
