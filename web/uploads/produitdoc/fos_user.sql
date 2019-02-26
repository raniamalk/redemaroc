-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 06 sep. 2018 à 14:01
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `businessmag`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'rania', 'rania', 'ranyamalk@gmail.com', 'ranyamalk@gmail.com', 1, '2zv8z3utuww0g0gckcwc48o88wk40ok', '$2y$13$2zv8z3utuww0g0gckcwc4uOvl/y9s4/XiORNAESF7byLM/lXfYQs.', '2018-09-06 13:50:27', 0, 0, NULL, 'uW93j_nZ8bOVFoCFn1q0LBgBTZQy7g0v0KvjraBgWXE', '2018-07-23 14:48:16', 'a:0:{}', 0, NULL),
(3, 'Zaina Oumlil', 'zaina oumlil', 'z.oumlil@telecontact.ma', 'z.oumlil@telecontact.ma', 1, 'cbua1nngvmog000k0socck0gowwwgcc', '$2y$13$cbua1nngvmog000k0socce/AFlLEejnmpnrQcFYSysgQlwsDmd9v.', '2018-09-06 09:01:48', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(4, 'rania malk', 'rania malk', 'r.malk@edicom.ma', 'r.malk@edicom.ma', 1, 'p1utynwx69wk8sw0ggwksocs0w4kssk', '$2y$13$p1utynwx69wk8sw0ggwkseoUGM/2FHcFABJewvY6CVO51lREDP3BO', '2018-09-06 13:08:50', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
