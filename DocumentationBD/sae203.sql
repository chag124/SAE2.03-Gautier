-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 04 mai 2026 à 08:25
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
-- Structure de la table `SAE203_Favorites`
--

CREATE TABLE `SAE203_Favorites` (
  `id_profile` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `SAE203_Favorites`
--

INSERT INTO `SAE203_Favorites` (`id_profile`, `id_movie`) VALUES
(1, 52),
(2, 52),
(3, 56),
(4, 12),
(4, 56),
(4, 59),
(5, 43),
(5, 44),
(5, 45),
(5, 49);

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
  `min_age` int(11) DEFAULT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `SAE203_Movie`
--

INSERT INTO `SAE203_Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`, `popular`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12, 1),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16, 0),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10, 0),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12, 0),
(38, 'The Dark Knight', 2008, 152, 'Dans sa lutte contre le crime organisé, Batman doit faire face à un nouveau génie du mal, le Joker, qui plonge Gotham dans l\'anarchie.', 'Christopher Nolan', 4, 'dark_knight.jpg', 'https://www.youtube.com/embed/EXeTwQWrcwY', 12, 0),
(43, 'annihilation', 2018, 115, 'super film', 'alex garland', 1, 'annihilation.jpg', 'https://www.youtube.com/embed/89OP78l9oF0', 15, 1),
(44, 'Divergente', 2014, 139, 'Dans un monde post-apocalyptique où la société est divisée en cinq clans, Tris découvre qu\'elle est Divergente : elle n\'entre dans aucune catégorie. Menacée, elle doit découvrir pourquoi son statut est si dangereux.', 'Neil Burger', 1, 'divergente.jpg', 'https://www.youtube.com/embed/sMKRw-Lalq8', 12, 0),
(45, 'Joséphine, ange gardien', 1995, 90, 'Un ange gardien envoyé sur Terre pour aider les gens à résoudre leurs problèmes d\'un simple claquement de doigts.', 'Laurent Chouchan', 2, 'josephine.jpg', 'https://www.youtube.com/embed/Sg6a9tfJHWU&msockid=caee61e03fcc11f1bb7f0bf8fd8e58a2', 10, 0),
(46, 'Spiderman: Far From Home', 2019, 129, 'Peter Parker part en voyage scolaire en Europe, mais son repos est interrompu par Nick Fury qui le sollicite pour combattre des créatures élémentaires aux côtés de Mysterio.', 'Jon Watts', 1, 'spiderman.jpg', 'https://www.youtube.com/embed/Nt9L1jCKGnE', 6, 0),
(48, 'Aquaman', 2018, 143, 'Arthur Curry, l\'héritier réticent du royaume sous-marin d\'Atlantis, doit s\'avancer pour empêcher une guerre entre les mondes de l\'océan et de la terre ferme.', 'James Wan', 8, 'aquaman.jpg', 'https://www.youtube.com/embed/WDkg3h8PCVU', 10, 0),
(49, 'Avatar', 2009, 162, 'Sur la lointaine lune de Pandora, un Marine paraplégique, Jake Sully, se retrouve écartelé entre suivre ses ordres et protéger le monde qu\'il a appris à considérer comme le sien après avoir pris la forme d\'un avatar.', 'James Cameron', 4, 'avatar.jpg', 'https://www.youtube.com/embed/5PSNL1qE6VY', 10, 0),
(50, 'Ça', 2017, 135, 'Dans la petite ville de Derry, des enfants disparaissent un à un. Un groupe de sept adolescents se réunit pour affronter une créature métamorphe qui prend la forme d\'un clown maléfique.', 'Andy Muschietti', 7, 'ca.jpeg', 'https://www.youtube.com/embed/G8fR1vvrLmI&msockid=8f448f6a3fde11f1862b99513337ddc3', 16, 0),
(52, 'Charlie\'s Angels', 2019, 118, 'Une nouvelle génération d\'Anges travaille pour le mystérieux Charles Townsend, dont l\'agence de sécurité et d\'investigation s\'est étendue à l\'international.', 'Elizabeth Banks', 1, 'charlisangels.jpg', 'https://www.youtube.com/embed/0POgCPcnG0Y', 10, 0),
(53, 'Conjuring : Les dossiers Warren', 2013, 112, 'Ed et Lorraine Warren, enquêteurs paranormaux, viennent en aide à une famille terrorisée par une présence sombre dans leur ferme isolée.', 'James Wan', 7, 'conjuring.jpg', 'https://www.youtube.com/embed/dF0MWVGDbeo', 12, 0),
(54, 'Annabelle', 2014, 99, 'Un couple commence à vivre des expériences terrifiantes impliquant une poupée vintage peu après que leur maison a été envahie par des membres d\'une secte satanique.', 'John R.Leonetti', 7, 'annabelle.jpeg', 'https://www.youtube.com/embed/LHaoIdqfwzE&msockid=b854f170420b11f1aef5de591c63fcbd', 12, 0),
(55, 'Babysitting', 2014, 85, 'Faute de baby-sitter, Marc Schaudel confie son fils à Franck, un employé de sa société. Le lendemain, la police retrouve une caméra qui révèle le chaos de la nuit passée.', 'Philippe Lacheau', 2, 'babysitting.jpeg', 'https://www.youtube.com/embed/j0sGiA_-HXI', 0, 0),
(56, 'Jumanji', 2017, 119, 'Quatre lycéens découvrent une vieille console de jeu et se retrouvent aspirés dans l\'univers de Jumanji, transformés en avatars incarnés par Dwayne Johnson, Jack Black, Kevin Hart et Karen Gillan.', 'Jake Kasdan', 8, 'jumanji.jpg', 'https://www.youtube.com/embed/2QKg5SZ_35I', 0, 0),
(57, 'Wonder Woman', 2017, 141, 'Avant d\'être Wonder Woman, elle était Diana, princesse des Amazones. Entraînée pour être une guerrière invincible, elle quitte son île pour mettre fin à un conflit mondial.', 'Patty Jenkins', 1, 'wonderwoman.jpg', 'https://www.youtube.com/embed/1Q8fG0TtVAY&msockid=fcc2a41d424311f1a4d7faca69ead821', 0, 1),
(58, 'Petits secrets entre voisins', 2013, 26, 'Derrière des façades tranquilles, des voisins cachent des secrets inavouables. Entre trahisons, jalousies et mystères, la vie de quartier n\'est jamais celle que l\'on croit.', 'Jean-Luc Azoulay', 3, 'secrets.jpg', 'https://www.youtube.com/embed/zwtv7ACA-4o', 10, 0),
(59, 'En eaux troubles', 2018, 113, 'Un submersible est attaqué par une créature préhistorique que l\'on croyait disparue : un requin de 23 mètres de long, le Megalodon. Un sauveteur-plongeur doit alors risquer sa vie.', 'Jon Turteltaub', 1, 'eauxtroubles.jpg', 'https://www.youtube.com/embed/UyMELy_RFbA', 12, 0),
(60, 'Conjuring 2 : Le Cas Enfield', 2016, 134, 'Ed et Lorraine Warren se rendent dans le nord de Londres pour aider une mère célibataire qui élève seule ses quatre enfants dans une maison hantée par des esprits maléfiques.', 'James Wan', 7, 'conjuring2.jpg', 'https://www.youtube.com/embed/eJRqFgwSwgs', 12, 0),
(61, 'Le Labyrinthe', 2014, 113, 'Thomas se réveille dans un ascenseur sans aucun souvenir de son passé. Il se retrouve avec d\'autres garçons au milieu d\'un labyrinthe géant dont les murs se déplacent chaque nuit.', 'Wes Ball', 1, 'labyrinthe.jpg', 'https://www.youtube.com/embed/LyPiCH_4Al4', 10, 0);

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
(2, 'Michael', 'michael.png', 25),
(3, 'Daisy', 'daisy.png', 6),
(4, 'Noah', 'noah.png', 17),
(5, 'Myla', 'myla.png', 30);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `SAE203_Category`
--
ALTER TABLE `SAE203_Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SAE203_Favorites`
--
ALTER TABLE `SAE203_Favorites`
  ADD PRIMARY KEY (`id_profile`,`id_movie`),
  ADD KEY `id_movie` (`id_movie`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `SAE203_Profils`
--
ALTER TABLE `SAE203_Profils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `SAE203_Favorites`
--
ALTER TABLE `SAE203_Favorites`
  ADD CONSTRAINT `SAE203_Favorites_ibfk_1` FOREIGN KEY (`id_profile`) REFERENCES `SAE203_Profils` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SAE203_Favorites_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `SAE203_Movie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `SAE203_Movie`
--
ALTER TABLE `SAE203_Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `SAE203_Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
