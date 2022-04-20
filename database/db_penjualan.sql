-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2022 pada 07.55
-- Versi server: 8.0.17
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hijab', '2021-12-13 01:50:13', '2022-04-16 21:40:21', '2022-04-16 21:40:21'),
(2, 'wad', '2021-12-13 01:51:21', '2021-12-13 02:02:01', '2021-12-13 02:02:01'),
(3, 'Pashmina', '2021-12-13 02:13:01', '2021-12-13 02:13:38', '2021-12-13 02:13:38'),
(4, 'Hijab Instan', '2021-12-13 02:13:16', '2021-12-13 02:13:41', '2021-12-13 02:13:41'),
(5, 'Pakaian Pria', '2021-12-13 02:13:25', '2022-04-16 21:40:25', '2022-04-16 21:40:25'),
(6, 'Pakaian Wanita', '2021-12-13 02:13:30', '2022-04-16 21:40:36', '2022-04-16 21:40:36'),
(7, 'Aksesoris', '2021-12-13 02:14:00', '2022-04-16 21:40:52', '2022-04-16 21:40:52'),
(8, 'Makanan', '2022-04-16 19:33:44', NULL, NULL),
(9, 'Minuman', '2022-04-16 19:33:50', NULL, NULL),
(10, 'Pakaian', '2022-04-16 19:33:57', NULL, NULL),
(11, 'Obat-obatan', '2022-04-16 19:34:18', NULL, NULL),
(12, 'Sembako', '2022-04-16 19:34:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `harga_jual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_kategori`, `gambar`, `nama_produk`, `deskripsi`, `harga_jual`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'produk_1643112196.jpg', 'HIJAB VOAL SEGI EMPAT', 'Sempurnakan tampilan harianmu dengan hijab segiempat', 98000, '2021-12-13 02:45:21', '2022-04-17 21:09:10', '2022-04-17 21:09:10'),
(2, 5, 'produk_1643112182.jpg', 'Koko Kurta Agno Big Size', 'Koko Kurta Agno Koko simpel, elegan dan special berbahan katun Toyobo', 200000, '2021-12-13 04:37:41', '2022-04-17 21:09:04', '2022-04-17 21:09:04'),
(3, 5, 'produk_1643112164.jpg', 'Jersey/Sportwear Oslo Long', 'Jersey/Sportwear Oslo Long', 275000, '2021-12-13 04:41:58', '2022-04-17 21:08:59', '2022-04-17 21:08:59'),
(4, 6, 'produk_1643112151.jpg', 'New Kaleena Tunic Blue for HIJUP', 'Koleksi terbaru', 346500, '2021-12-13 04:43:04', '2022-04-17 21:08:54', '2022-04-17 21:08:54'),
(5, 7, 'produk_1643112137.jpg', 'OWIEN WHITE', 'Material : Premium Synthetic Leather K+ Accesories', 314000, '2021-12-13 04:45:03', '2022-04-17 21:08:44', '2022-04-17 21:08:44'),
(6, 7, 'produk_1643112115.jpg', 'Kalung Etnik Tenun Batu', 'Ukuran Lingkaran kalung 75 cm', 198000, '2021-12-13 04:46:26', '2022-04-17 21:08:38', '2022-04-17 21:08:38'),
(7, 1, 'produk_1643112104.jpg', 'HIJAB VOAL SEGI EMPAT', 'Sempurnakan tampilan harianmu dengan hijab segiempat printed berbahan voal yang adem anti gerah, tegak didahi.', 116100, '2021-12-13 04:47:30', '2022-04-17 21:08:33', '2022-04-17 21:08:33'),
(8, 5, 'produk_1643112055.jpg', 'Koko Long Sleeves Black Red', 'Koko Long Sleeves Black Red dari Fatih Indonesia.', 399000, '2021-12-13 04:48:39', '2022-04-17 21:08:28', '2022-04-17 21:08:28'),
(9, 12, 'produk_1650163155.jpg', 'Beras Ramos 5kg', 'Beras kualitas terbaik, diproses dengan teknologi tinggi.', 55000, '2022-04-16 19:39:15', NULL, NULL),
(10, 8, 'produk_1650255299.jpg', 'Sosis Sonice Siap Makan', 'Sosis So nice Siap Makan kemasan Toples isi [24+1] 525 GR', 22000, '2022-04-17 21:14:59', NULL, NULL),
(11, 10, 'produk_1650255455.jpg', 'Baju Koko Pria', 'Lebaran sebentar lagi. Tapi sudahkah Anda menyiapkan baju terbaik untuk berkumpul bersama keluarga? Sebagai seorang pria, Anda ingin mengenakan baju muslim yang nyaman. Anda butuh baju koko yang kainnya sejuk dengan model yang tidak ketinggalan zaman.', 150000, '2022-04-17 21:17:35', NULL, NULL),
(12, 9, 'produk_1650255562.jpg', 'Aqua Botol 650ml', 'AQUA berasal dari sumber mata air yang terpilih dengan segala kemurnian dan kandungan mineral alami yang terpelihara./nDengan proses yang baik, memastikan higienis tetap terjaga./nAQUA dikemas dengan proses higienis dalam beberapa ukuran', 3500, '2022-04-17 21:19:22', NULL, NULL),
(13, 11, 'produk_1650255697.jpg', 'Bodrex', 'Bodrex Tab adalah obat untuk meringankan sakit kepala, sakit gigi dan menurunkan demam.', 8500, '2022-04-17 21:21:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anderson Halim', 'admin@gmail.com', '6285399197199', 'Jln Tugas No.1 Kampus Biru', NULL, '$2y$10$Smvi/6/Os44lWBD11tv6aOjZuyEfFcumtcvVK5j68K0WRStjP1ykq', NULL, '2021-12-13 00:13:32', '2022-04-17 22:51:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
