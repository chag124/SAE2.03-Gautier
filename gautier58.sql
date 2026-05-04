-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 27 avr. 2026 à 15:03
-- Version du serveur : 10.11.14-MariaDB-0+deb12u2
-- Version de PHP : 8.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gautier58`
--
CREATE DATABASE IF NOT EXISTS 'gautier58' DEFAULT CHARACTER SET ift8mb4 COLLATE utf8mb4_general_ci;
USE 'gautier58';
-- --------------------------------------------------------

--
-- Structure de la table `Repas`
--

CREATE TABLE `Repas` (
  `semaine` int(11) NOT NULL,
  `jour` varchar(25) NOT NULL,
  `entree` varchar(256) NOT NULL,
  `plat` varchar(256) NOT NULL,
  `dessert` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Repas`
--

INSERT INTO `Repas` (`semaine`, `jour`, `entree`, `plat`, `dessert`) VALUES
(7, 'dimanche', 'Velouté aux cèpes', 'Côtes d\'agneau et poêlée forestière', 'Glace colonel'),
(1, 'jeudi', 'Oeuf mimosa', 'escalope de veau et gratin de courgettes', 'Fromage'),
(2, 'lundi', 'hcvrejvcr', 'vrevre', 'vrvr'),
(3, 'mardi', 'Asperges sauce blanche', 'Filet de flétan et riz basmati', 'Ile flottante'),
(5, 'mercredi', 'Rosette de Lyon et radis noir', 'Filet de boeuf et frites', 'Crême brulée'),
(4, 'samedi', 'Carottes rapées', 'Petit salé aux lentilles', 'Salade de fruits'),
(6, 'vendredi', 'Avocat surimi', 'Magret de canard sauce foie gras et patates grasses', 'Indigeste au chocolat');

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Category`
--

CREATE TABLE `SAE203_Category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `SAE203_Category`
--

INSERT INTO `SAE203_Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire'),
(11, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Movie`
--

CREATE TABLE `SAE203_Movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `SAE203_Movie`
--

INSERT INTO `SAE203_Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12),
(38, 'The Dark Knight', 2008, 152, 'Dans sa lutte contre le crime organisé, Batman doit faire face à un nouveau génie du mal, le Joker, qui plonge Gotham dans l\'anarchie.', 'Christopher Nolan', 4, 'dark_knight.jpg', 'https://www.youtube.com/embed/EXeTwQWrcwY', 12),
(43, 'annihilation', 2018, 115, 'super film', 'alex garland', 1, 'annihilation.jpg', 'https://www.youtube.com/embed/89OP78l9oF0', 15),
(44, 'Divergente', 2014, 139, 'Dans un monde post-apocalyptique où la société est divisée en cinq clans, Tris découvre qu\'elle est Divergente : elle n\'entre dans aucune catégorie. Menacée, elle doit découvrir pourquoi son statut est si dangereux.', 'Neil Burger', 1, 'divergente.jpg', 'https://www.youtube.com/embed/sMKRw-Lalq8', 12),
(45, 'Joséphine, ange gardien', 1995, 90, 'Un ange gardien envoyé sur Terre pour aider les gens à résoudre leurs problèmes d\'un simple claquement de doigts.', 'Laurent Chouchan', 2, 'josephine.jpg', 'https://www.youtube.com/embed/Sg6a9tfJHWU&msockid=caee61e03fcc11f1bb7f0bf8fd8e58a2', 10),
(46, 'Spiderman: Far From Home', 2019, 129, 'Peter Parker part en voyage scolaire en Europe, mais son repos est interrompu par Nick Fury qui le sollicite pour combattre des créatures élémentaires aux côtés de Mysterio.', 'Jon Watts', 1, 'spiderman.jpg', 'https://www.youtube.com/embed/Nt9L1jCKGnE', 6),
(48, 'Aquaman', 2018, 143, 'Arthur Curry, l\'héritier réticent du royaume sous-marin d\'Atlantis, doit s\'avancer pour empêcher une guerre entre les mondes de l\'océan et de la terre ferme.', 'James Wan', 8, 'aquaman.jpg', 'https://www.youtube.com/embed/WDkg3h8PCVU', 10),
(49, 'Avatar', 2009, 162, 'Sur la lointaine lune de Pandora, un Marine paraplégique, Jake Sully, se retrouve écartelé entre suivre ses ordres et protéger le monde qu\'il a appris à considérer comme le sien après avoir pris la forme d\'un avatar.', 'James Cameron', 4, 'avatar.jpg', 'https://www.youtube.com/embed/5PSNL1qE6VY', 10),
(50, 'Ça', 2017, 135, 'Dans la petite ville de Derry, des enfants disparaissent un à un. Un groupe de sept adolescents se réunit pour affronter une créature métamorphe qui prend la forme d\'un clown maléfique.', 'Andy Muschietti', 7, 'ca.jpeg', 'https://www.youtube.com/embed/G8fR1vvrLmI&msockid=8f448f6a3fde11f1862b99513337ddc3', 16),
(52, 'Charlie\'s Angels', 2019, 118, 'Une nouvelle génération d\'Anges travaille pour le mystérieux Charles Townsend, dont l\'agence de sécurité et d\'investigation s\'est étendue à l\'international.', 'Elizabeth Banks', 1, 'charlisangels.jpg', 'https://www.youtube.com/embed/0POgCPcnG0Y', 10),
(53, 'Conjuring : Les dossiers Warren', 2013, 112, 'Ed et Lorraine Warren, enquêteurs paranormaux, viennent en aide à une famille terrorisée par une présence sombre dans leur ferme isolée.', 'James Wan', 7, 'conjuring.jpg', 'https://www.youtube.com/embed/dF0MWVGDbeo', 12),
(54, 'Annabelle', 2014, 99, 'Un couple commence à vivre des expériences terrifiantes impliquant une poupée vintage peu après que leur maison a été envahie par des membres d\'une secte satanique.', 'John R.Leonetti', 7, 'annabelle.jpeg', 'https://www.youtube.com/embed/LHaoIdqfwzE&msockid=b854f170420b11f1aef5de591c63fcbd', 12),
(55, 'Babysitting', 2014, 85, 'Faute de baby-sitter, Marc Schaudel confie son fils à Franck, un employé de sa société. Le lendemain, la police retrouve une caméra qui révèle le chaos de la nuit passée.', 'Philippe Lacheau', 2, 'babysitting.jpeg', 'https://www.youtube.com/embed/j0sGiA_-HXI', 0),
(56, 'Jumanji', 2017, 119, 'Quatre lycéens découvrent une vieille console de jeu et se retrouvent aspirés dans l\'univers de Jumanji, transformés en avatars incarnés par Dwayne Johnson, Jack Black, Kevin Hart et Karen Gillan.', 'Jake Kasdan', 8, 'jumanji.jpg', 'https://www.youtube.com/embed/2QKg5SZ_35I', 0),
(57, 'Wonder Woman', 2017, 141, 'Avant d\'être Wonder Woman, elle était Diana, princesse des Amazones. Entraînée pour être une guerrière invincible, elle quitte son île pour mettre fin à un conflit mondial.', 'Patty Jenkins', 1, 'wonderwoman.jpg', 'https://www.youtube.com/embed/1Q8fG0TtVAY&msockid=fcc2a41d424311f1a4d7faca69ead821', 0),
(58, 'Petits secrets entre voisins', 2013, 26, 'Derrière des façades tranquilles, des voisins cachent des secrets inavouables. Entre trahisons, jalousies et mystères, la vie de quartier n\'est jamais celle que l\'on croit.', 'Jean-Luc Azoulay', 3, 'secrets.jpg', 'https://www.youtube.com/embed/zwtv7ACA-4o', 10);

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Profils`
--

CREATE TABLE `SAE203_Profils` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT 'default_avatar.png',
  `age_restriction` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `SAE203_Profils`
--

INSERT INTO `SAE203_Profils` (`id`, `name`, `avatar`, `age_restriction`) VALUES
(1, 'Junior', 'avatar1.png', 12),
(2, 'Michael', 'michael.png', 18),
(3, 'Daisy', 'daisy.png', 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Repas`
--
ALTER TABLE `Repas`
  ADD PRIMARY KEY (`jour`);

--
-- Index pour la table `SAE203_Category`
--
ALTER TABLE `SAE203_Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SAE203_Movie`
--
ALTER TABLE `SAE203_Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `SAE203_Profils`
--
ALTER TABLE `SAE203_Profils`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `SAE203_Category`
--
ALTER TABLE `SAE203_Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `SAE203_Movie`
--
ALTER TABLE `SAE203_Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `SAE203_Profils`
--
ALTER TABLE `SAE203_Profils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `SAE203_Movie`
--
ALTER TABLE `SAE203_Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `SAE203_Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
