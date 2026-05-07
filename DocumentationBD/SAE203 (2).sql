-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 mai 2026 à 10:14
-- Version du serveur : 8.0.45-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Category`
--

CREATE TABLE `SAE203_Category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id_profile` int NOT NULL,
  `id_movie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `SAE203_Favorites`
--

INSERT INTO `SAE203_Favorites` (`id_profile`, `id_movie`) VALUES
(1, 7),
(4, 12),
(2, 38),
(5, 43),
(5, 44),
(5, 45),
(5, 49),
(2, 50),
(1, 52),
(3, 56),
(4, 56),
(2, 58),
(4, 59);

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Movie`
--

CREATE TABLE `SAE203_Movie` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `banniere` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `SAE203_Movie`
--

INSERT INTO `SAE203_Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`, `popular`, `banniere`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12, 0, 'interstellar_banniere.jpeg'),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16, 0, 'liste_banniere.jpg'),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10, 0, 'yourname_banniere.png'),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12, 0, 'brute_banniere.jpg'),
(38, 'The Dark Knight', 2008, 152, 'Dans sa lutte contre le crime organisé, Batman doit faire face à un nouveau génie du mal, le Joker, qui plonge Gotham dans l\'anarchie.', 'Christopher Nolan', 4, 'dark_knight.jpg', 'https://www.youtube.com/embed/EXeTwQWrcwY', 12, 0, 'darkknight_banniere.jpg'),
(43, 'annihilation', 2018, 115, 'super film', 'alex garland', 1, 'annihilation.jpg', 'https://www.youtube.com/embed/89OP78l9oF0', 15, 0, 'annihilation_banniere.jpg'),
(44, 'Divergente', 2014, 139, 'Dans un monde post-apocalyptique où la société est divisée en cinq clans, Tris découvre qu\'elle est Divergente : elle n\'entre dans aucune catégorie. Menacée, elle doit découvrir pourquoi son statut est si dangereux.', 'Neil Burger', 1, 'divergente.jpg', 'https://www.youtube.com/embed/sMKRw-Lalq8', 12, 0, 'divergente_banniere.jpg'),
(45, 'Joséphine, ange gardien', 1995, 90, 'Un ange gardien envoyé sur Terre pour aider les gens à résoudre leurs problèmes d\'un simple claquement de doigts.', 'Laurent Chouchan', 2, 'josephine.jpg', 'https://www.youtube.com/embed/Sg6a9tfJHWU&msockid=caee61e03fcc11f1bb7f0bf8fd8e58a2', 0, 0, 'josephine_banniere.jpg'),
(46, 'Spiderman: Far From Home', 2019, 129, 'Peter Parker part en voyage scolaire en Europe, mais son repos est interrompu par Nick Fury qui le sollicite pour combattre des créatures élémentaires aux côtés de Mysterio.', 'Jon Watts', 1, 'spiderman.jpg', 'https://www.youtube.com/embed/Nt9L1jCKGnE', 0, 0, 'spiderman_banniere.jpg'),
(48, 'Aquaman', 2018, 143, 'Arthur Curry, l\'héritier réticent du royaume sous-marin d\'Atlantis, doit s\'avancer pour empêcher une guerre entre les mondes de l\'océan et de la terre ferme.', 'James Wan', 8, 'aquaman.jpg', 'https://www.youtube.com/embed/WDkg3h8PCVU', 0, 0, 'aquaman_banniere.jpg'),
(49, 'Avatar', 2009, 162, 'Sur la lointaine lune de Pandora, un Marine paraplégique, Jake Sully, se retrouve écartelé entre suivre ses ordres et protéger le monde qu\'il a appris à considérer comme le sien après avoir pris la forme d\'un avatar.', 'James Cameron', 4, 'avatar.jpg', 'https://www.youtube.com/embed/5PSNL1qE6VY', 0, 0, 'avatar_banniere.jpg'),
(50, 'Ça', 2017, 135, 'Dans la petite ville de Derry, des enfants disparaissent un à un. Un groupe de sept adolescents se réunit pour affronter une créature métamorphe qui prend la forme d\'un clown maléfique.', 'Andy Muschietti', 7, 'ca.jpeg', 'https://www.youtube.com/embed/G8fR1vvrLmI&msockid=8f448f6a3fde11f1862b99513337ddc3', 16, 0, 'ca_banniere.jpg'),
(52, 'Charlie\'s Angels', 2019, 118, 'Une nouvelle génération d\'Anges travaille pour le mystérieux Charles Townsend, dont l\'agence de sécurité et d\'investigation s\'est étendue à l\'international.', 'Elizabeth Banks', 1, 'charlisangels.jpg', 'https://www.youtube.com/embed/0POgCPcnG0Y', 10, 0, 'charlis_banniere.jpg'),
(53, 'Conjuring : Les dossiers Warren', 2013, 112, 'Ed et Lorraine Warren, enquêteurs paranormaux, viennent en aide à une famille terrorisée par une présence sombre dans leur ferme isolée.', 'James Wan', 7, 'conjuring.jpg', 'https://www.youtube.com/embed/dF0MWVGDbeo', 12, 0, 'conjuring1_banniere.jpg'),
(54, 'Annabelle', 2014, 99, 'Un couple commence à vivre des expériences terrifiantes impliquant une poupée vintage peu après que leur maison a été envahie par des membres d\'une secte satanique.', 'John R.Leonetti', 7, 'annabelle.jpeg', 'https://www.youtube.com/embed/LHaoIdqfwzE&msockid=b854f170420b11f1aef5de591c63fcbd', 12, 0, 'annabelle_banniere.jpg'),
(55, 'Babysitting', 2014, 85, 'Faute de baby-sitter, Marc Schaudel confie son fils à Franck, un employé de sa société. Le lendemain, la police retrouve une caméra qui révèle le chaos de la nuit passée.', 'Philippe Lacheau', 2, 'babysitting.jpeg', 'https://www.youtube.com/embed/j0sGiA_-HXI', 0, 0, 'babysitting_banniere.jpg'),
(56, 'Jumanji', 2017, 119, 'Quatre lycéens découvrent une vieille console de jeu et se retrouvent aspirés dans l\'univers de Jumanji, transformés en avatars incarnés par Dwayne Johnson, Jack Black, Kevin Hart et Karen Gillan.', 'Jake Kasdan', 8, 'jumanji.jpg', 'https://www.youtube.com/embed/2QKg5SZ_35I', 0, 0, 'jumanji_banniere.jpg'),
(57, 'Wonder Woman', 2017, 141, 'Avant d\'être Wonder Woman, elle était Diana, princesse des Amazones. Entraînée pour être une guerrière invincible, elle quitte son île pour mettre fin à un conflit mondial.', 'Patty Jenkins', 1, 'wonderwoman.webp', 'https://www.youtube.com/embed/z_IYn1NqIJ0\r\n\r\n', 0, 1, 'wonderwoman_banniere.jpg'),
(58, 'Petits secrets entre voisins', 2013, 26, 'Derrière des façades tranquilles, des voisins cachent des secrets inavouables. Entre trahisons, jalousies et mystères, la vie de quartier n\'est jamais celle que l\'on croit.', 'Jean-Luc Azoulay', 3, 'secrets.jpg', 'https://www.youtube.com/embed/zwtv7ACA-4o', 0, 0, 'secrets_banniere.jpg'),
(59, 'En eaux troubles', 2018, 113, 'Un submersible est attaqué par une créature préhistorique que l\'on croyait disparue : un requin de 23 mètres de long, le Megalodon. Un sauveteur-plongeur doit alors risquer sa vie.', 'Jon Turteltaub', 1, 'eauxtroubles.jpg', 'https://www.youtube.com/embed/UyMELy_RFbA', 12, 0, 'eauxtroubles_banniere.jpg'),
(60, 'Conjuring 2 : Le Cas Enfield', 2016, 134, 'Ed et Lorraine Warren se rendent dans le nord de Londres pour aider une mère célibataire qui élève seule ses quatre enfants dans une maison hantée par des esprits maléfiques.', 'James Wan', 7, 'conjuring2.jpg', 'https://www.youtube.com/embed/eJRqFgwSwgs', 12, 0, 'conjuring2_banniere.jpg'),
(61, 'Le Labyrinthe', 2014, 113, 'Thomas se réveille dans un ascenseur sans aucun souvenir de son passé. Il se retrouve avec d\'autres garçons au milieu d\'un labyrinthe géant dont les murs se déplacent chaque nuit.', 'Wes Ball', 1, 'labyrinthe.jpg', 'https://www.youtube.com/embed/LyPiCH_4Al4', 10, 0, 'labyrinthe_banniere.jpeg'),
(62, 'Shutter Island', 2010, 136, 'En 1954, le maréchal américain Teddy Daniels enquête sur la disparition d\'une patiente d\'un hôpital psychiatrique situé sur une île isolée, où les apparences sont trompeuses.', 'Martin Scorsese', 6, 'shutter.png', 'https://www.youtube.com/embed/v8yrZSkKxTA', 12, 0, 'shutter_banniere.jpeg'),
(63, 'Titanic', 1995, 194, 'En 1912, sur le paquebot Titanic, une jeune aristocrate et un artiste pauvre tombent éperdument amoureux, ignorant que le navire fonce vers un destin tragique.', 'James Cameron', 11, 'titanic.png', 'https://www.youtube.com/embed/I7c1etV7D7g', 0, 0, 'titanic_banniere.jpeg'),
(64, 'Le Seigneur des Anneaux : La Communauté de l\'Anneau', 2001, 178, 'Un jeune Hobbit, Frodon Sacquet, hérite d\'un anneau unique et doit entreprendre un voyage périlleux vers la Montagne du Destin pour le détruire et sauver la Terre du Milieu.', 'Peter Jackson', 9, 'seigneur.jpg', 'https://www.youtube.com/embed/KCYr5PpGOvk', 0, 0, 'seigneur_banniere.jpg'),
(65, 'Notre planète', 2019, 50, 'Cette série documentaire explore la richesse et la fragilité de la nature à travers le monde, des calottes glaciaires aux jungles luxuriantes, pour alerter sur l\'urgence climatique.', 'Alastair Fothergill', 10, 'planete.jpg', 'https://www.youtube.com/embed/D552cNK3p7E', 0, 0, 'planete_banniere.jpg'),
(66, 'Pirates des Caraïbes', 2003, 143, 'Le capitaine Jack Sparrow tente de récupérer son navire avec l\'aide d\'un forgeron audacieux', 'Gore Verbinski', 8, 'pirate.jpg', 'https://www.youtube.com/embed/naQr0uTrH_s', 0, 0, 'pirate_banniere.jpg'),
(67, 'Le Monde de Narnia', 2005, 143, 'Quatre enfants découvrent un monde gelé caché au fond d\'une armoire et s\'allient à un lion légendaire.', 'Andrew Adamson', 9, 'narnia.jpg', 'https://www.youtube.com/embed/pYcGFLgJ8Uo', 0, 0, 'narnia_banniere.jpeg'),
(68, 'Maman, j\'ai raté l\'avion', 1990, 103, 'Un garçon de 8 ans est oublié par sa famille et doit protéger sa maison contre deux cambrioleurs.', 'Chris Columbus', 2, 'avion.jpg', 'https://www.youtube.com/embed/jEDaVHmw7Cw', 0, 0, 'avion_banniere.jpeg'),
(69, 'La Belle et la Bête ', 2017, 129, 'Une jeune femme accepte de vivre dans un château enchanté pour sauver son père prisonnier.', 'Bill Condon', 9, 'belle.jpeg', 'https://www.youtube.com/embed/e3Nl_TCQXuw', 0, 0, 'belle_banniere.jpg'),
(70, 'Avengers', 2012, 143, 'Pour sauver la Terre d\'une menace extraterrestre, le directeur du S.H.I.E.L.D. rassemble une équipe de super-héros hors du commun.', 'Joss Whedon', 1, 'avengers.jpeg', 'https://www.youtube.com/embed/eOrNdBpGMv8', 0, 0, 'avengers_banniere.jpg'),
(71, 'Black Panther', 2018, 134, 'Après la mort de son père, T\'Challa rentre au Wakanda pour prendre sa place sur le trône, mais un vieil ennemi remet en cause son titre.', 'Ryan Coogler', 1, 'panther.jpg', 'https://www.youtube.com/embed/PjGk7S6_NCo', 0, 0, 'panther_banniere.jpeg'),
(72, 'Creed : L\'Héritage de Rocky Balboa', 2015, 133, 'Adonis Johnson, fils du champion du monde Apollo Creed, se rend à Philadelphie pour demander à Rocky Balboa de devenir son entraîneur et de le mener vers la gloire.', 'Ryan Coogler', 1, 'creed.jpg', 'https://www.youtube.com/embed/Uv554B7W5uE', 0, 0, 'creed_banniere.jpeg'),
(73, 'Insaisissables', 2013, 115, 'Un agent du FBI et un détective d\'Interpol traquent une équipe de prestidigitateurs nommée « les Quatre Cavaliers », qui braquent des banques pendant leurs spectacles et récompensent leur public avec l\'argent.', 'Louis Leterrier', 1, 'insaisissables.jpg', 'https://www.youtube.com/embed/8MRE_A_o2tY', 0, 0, 'insaisissables_banniere.jpeg'),
(74, 'Le Roi Lion', 1994, 88, 'Simba, un jeune lionceau héritier du trône, doit surmonter l\'exil et la trahison de son oncle Scar pour reprendre sa place légitime de roi de la savane.', 'Roger Allers & Rob Minkoff', 8, 'lion.jpeg', 'https://www.youtube.com/embed/un7a-i6pTS4', 0, 0, 'lion_banniere.jpg'),
(75, 'Holidate', 2020, 104, 'Las d\'être seuls pendant les fêtes, deux inconnus jurent de s\'accompagner mutuellement pour chaque occasion spéciale au cours de l\'année. Mais les sentiments s\'en mêlent.', 'John Whitesell', 11, 'holidate.jpg', 'https://www.youtube.com/embed/h81uoe7Uas8', 0, 0, 'holidate_banniere.jpg'),
(76, 'À tous les garçons que j\'ai aimés', 2016, 99, 'La vie lycéenne de Lara Jean bascule le jour où ses lettres d\'amour secrètes, adressées à ses cinq coups de cœur passés, sont mystérieusement envoyées à leurs destinataires.', 'Susan Johnson', 11, 'garcon.jpg', 'https://www.youtube.com/embed/555oiY9RWM4', 0, 0, 'garcon_banniere.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_Profils`
--

CREATE TABLE `SAE203_Profils` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'default_avatar.png',
  `age_restriction` int NOT NULL DEFAULT '0'
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `SAE203_Movie`
--
ALTER TABLE `SAE203_Movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `SAE203_Profils`
--
ALTER TABLE `SAE203_Profils`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
