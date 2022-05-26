-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : jeu. 26 mai 2022 à 02:44
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `matchdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
CREATE TABLE IF NOT EXISTS `equipes` (
  `id_equipe` int(11) NOT NULL AUTO_INCREMENT,
  `nom_equipe` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_equipe`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`) VALUES
(1, 'real madrid'),
(2, 'paris saint germain'),
(3, 'liverpool');

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

DROP TABLE IF EXISTS `joueurs`;
CREATE TABLE IF NOT EXISTS `joueurs` (
  `id_joueur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_et_prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `equipe` int(11) NOT NULL,
  PRIMARY KEY (`id_joueur`),
  KEY `equipe` (`equipe`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id_joueur`, `nom_et_prenom`, `equipe`) VALUES
(1, 'CARVAJAL', 1),
(2, 'E MILITÃO', 1),
(3, 'MARCELO', 1),
(4, 'NACHO', 1),
(5, 'VALLEJO', 1),
(6, 'ALABA', 1),
(7, 'MODRIĆ', 1),
(8, 'KROOS', 1),
(9, 'LUCAS V.', 1),
(10, 'BENZEMA', 1),
(11, 'ASENSIO', 1),
(12, 'E lionel mesii', 2),
(13, 'E lionel mesii', 2),
(14, 'E lionel mesii', 2),
(15, 'Neymar jt', 2),
(16, 'mauro icardi', 2),
(17, 'kylian mbappe', 2),
(18, 'angel di maria', 2),
(19, 'marco veratti', 2),
(20, 'leandro paredes', 2),
(21, 'marquinhos', 2),
(22, 'sergio ramos', 2),
(23, 'presnel kimpembe ', 2),
(24, 'achref hkimi', 2),
(25, 'keylor navas', 2),
(26, 'Sadio Mané', 3),
(27, 'Divock Origi', 3),
(28, 'Roberto Firmino', 3),
(29, 'Kaide Gordon', 3),
(30, 'Mohamed Salah', 3),
(31, 'Luis Díaz', 3),
(32, 'Diogo Jota', 3),
(33, 'Takumi Minamino', 3);

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

DROP TABLE IF EXISTS `matchs`;
CREATE TABLE IF NOT EXISTS `matchs` (
  `id_match` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipe1` int(11) NOT NULL,
  `id_equipe2` int(11) NOT NULL,
  `horraire` datetime NOT NULL,
  PRIMARY KEY (`id_match`),
  KEY `id_equipe1` (`id_equipe1`),
  KEY `id_equipe2` (`id_equipe2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
