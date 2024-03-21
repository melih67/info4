-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 mars 2024 à 13:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `app`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `desciption` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `desciption`) VALUES
(1, 'Cartes graphiques', 'Catégorie regroupant une sélection de cartes graphiques haut de gamme, idéales pour les joueurs exigeants.'),
(2, 'Processeurs (CPU)', 'Catégorie comprenant une gamme de processeurs puissants, adaptés aux besoins des PC gamers pour des performances optimales.'),
(3, 'Cartes mères', 'Catégorie offrant une variété de cartes mères compatibles avec les dernières générations de processeurs et cartes graphiques.'),
(4, 'Mémoire vive (RAM)', 'Catégorie proposant des modules de mémoire vive haute performance pour optimiser les capacités de jeu de votre PC.'),
(5, 'Stockage (SSD, HDD)', 'Catégorie regroupant une sélection de disques SSD rapides et de disques durs volumineux pour répondre à tous vos besoins en stockage de données.'),
(6, 'Alimentations', 'Catégorie offrant une variété d\'alimentations électriques fiables et performantes pour garantir une alimentation stable à votre configuration de jeu.'),
(7, 'Boîtiers PC', 'Catégorie regroupant une sélection de boîtiers PC esthétiques et fonctionnels pour abriter vos composants de jeu.'),
(8, 'Refroidissement', 'Catégorie proposant des solutions de refroidissement performantes pour maintenir les températures de votre PC gamer sous contrôle, que ce soit avec des solutions aircooling ou watercooling.'),
(9, 'Accessoires et périphériques', 'Catégorie regroupant une variété d\'accessoires et de périphériques essentiels pour compléter votre expérience de jeu, tels que les claviers, souris, casques, etc.'),
(10, 'Moniteurs', 'Catégorie offrant une sélection de moniteurs haute résolution et haute fréquence de rafraîchissement pour une expérience de jeu immersive.');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240315155621', '2024-03-18 12:32:28', 664),
('DoctrineMigrations\\Version20240315160536', '2024-03-18 12:32:29', 11),
('DoctrineMigrations\\Version20240318081612', '2024-03-18 12:32:29', 128);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `nom`, `description`) VALUES
(1, 'Nvidia', 'Nvidia Corporation est une société multinationale américaine de technologie basée à Santa Clara et immatriculée dans l\'État du Delaware. Il s\'agit d\'un éditeur de logiciels et d\'une entreprise « fabless » qui conçoit des unités de traitement graphique (GPU), des interfaces de programmation d\'applications (API) pour la science des données et le calcul de haute performance (HPC), ainsi que des systèmes sur une puce (SoC) pour les marchés de l\'informatique mobile et de l\'automobile.'),
(2, 'Intel', 'Intel Corporation est une société multinationale américaine de technologie dont le siège social est situé à Santa Clara, en Californie. Elle est l\'un des plus grands et des plus anciens fabricants de semi-conducteurs au monde. Intel fabrique des microprocesseurs, des chipsets de circuits intégrés, des circuits graphiques intégrés, des microcontrôleurs, des mémoires flash, des produits logiciels, des cartes mères et des puces de réseau.'),
(3, 'AMD', 'Advanced Micro Devices, Inc. (AMD) est une société multinationale de semi-conducteurs américaine dont le siège social est situé à Santa Clara, en Californie. Elle fabrique des microprocesseurs, des cartes graphiques, des circuits intégrés pour les entreprises et des solutions informatiques embarquées.'),
(4, 'Samsung', 'Samsung Electronics Co., Ltd. est une société sud-coréenne de technologie de l\'information dont le siège social est situé à Séoul, en Corée du Sud. Samsung fabrique une large gamme de produits électroniques grand public, y compris des semi-conducteurs, des écrans, des téléviseurs, des appareils électroménagers et des téléphones mobiles.'),
(5, 'Apple', 'Apple Inc. est une société multinationale américaine de technologie dont le siège social est situé à Cupertino, en Californie. Apple conçoit, fabrique et commercialise des produits électroniques grand public, des logiciels informatiques et des services en ligne. Les produits les plus connus d\'Apple incluent l\'iPhone, l\'iPad, le Mac, l\'Apple Watch et l\'iPod.'),
(6, 'Microsoft', 'Microsoft Corporation est une société multinationale américaine de technologie dont le siège social est situé à Redmond, dans l\'État de Washington. Microsoft développe, fabrique, licence, soutient et vend des logiciels informatiques, des produits électroniques grand public, des ordinateurs personnels et des services.'),
(7, 'Asus', 'AsusTek Computer Inc., plus connu sous le nom d\'Asus, est une société taïwanaise spécialisée dans la fabrication de matériel informatique, notamment des cartes mères, des cartes graphiques, des écrans, des ordinateurs portables et des périphériques.'),
(8, 'Gigabyte', 'Gigabyte Technology Co., Ltd. est une société taïwanaise spécialisée dans la fabrication de cartes mères, de cartes graphiques, de PC portables, de mini-PC et de composants informatiques.'),
(9, 'MSI', 'Micro-Star International Co., Ltd., abrégé en MSI, est une société taïwanaise spécialisée dans la fabrication de matériel informatique, notamment des cartes mères, des cartes graphiques, des ordinateurs portables, des moniteurs et des périphériques.'),
(10, 'Corsair', 'Corsair est une société américaine spécialisée dans la fabrication de matériel informatique, notamment des composants pour PC gamer tels que des alimentations électriques, des boîtiers PC, des mémoires RAM, des périphériques de jeu, etc.'),
(11, 'Crucial', 'Crucial Technology est une marque appartenant à Micron Technology, Inc., spécialisée dans la fabrication de mémoires RAM et de SSD haute performance pour les utilisateurs informatiques exigeants.'),
(12, 'EVGA', 'EVGA Corporation est une société américaine spécialisée dans la fabrication de cartes graphiques, de cartes mères, de blocs d\'alimentation, de périphériques de jeu et d\'accessoires pour PC gamer.'),
(13, 'Seagate', 'Seagate Technology est un fabricant américain de disques durs et de solutions de stockage de données pour les particuliers et les entreprises. Seagate propose une large gamme de disques durs HDD et SSD.'),
(14, 'Western Digital (WD)', 'Western Digital Corporation est un fabricant américain de disques durs, de SSD, de solutions de stockage en réseau, de cartes mémoire et d\'autres produits liés au stockage de données.'),
(15, 'Razer', 'Razer Inc. est une société américaine spécialisée dans les périphériques de jeu et les ordinateurs portables de jeu. Razer est connu pour ses claviers, souris, casques, tapis de souris et autres accessoires de jeu.'),
(16, 'Logitech', 'Logitech International S.A. est une société suisse spécialisée dans la fabrication d\'accessoires informatiques et électroniques grand public, notamment des souris, claviers, casques, enceintes, webcams et périphériques de jeu.');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier_produit`
--

CREATE TABLE `panier_produit` (
  `panier_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `prix` double NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `marque_id`, `name`, `description`, `prix`, `stock`, `image`) VALUES
(1, 1, 'Carte graphique GeForce RTX 3080', 'La carte graphique GeForce RTX 3080 offre des performances de jeu incroyables grâce à son architecture NVIDIA Ampere, ses cœurs RT de deuxième génération et ses cœurs Tensor de troisième génération.', 799.99, 50, 'rtx3080.jpg'),
(2, 2, 'Processeur Ryzen 9 5900X', 'Le processeur AMD Ryzen 9 5900X est un monstre de puissance, avec 12 cœurs et 24 threads, il offre des performances exceptionnelles pour les tâches multithreadées.', 549.99, 30, 'ryzen5900x.jpg'),
(3, 3, 'Carte mère ROG Strix X570-E Gaming', 'La carte mère ASUS ROG Strix X570-E Gaming offre un ensemble de fonctionnalités haut de gamme, y compris le PCIe 4.0, le Wi-Fi 6, le LAN Gigabit, l\'audio HD et une conception de refroidissement efficace.', 299.99, 0, 'x570egaming.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `username` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `ppimg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `password`, `roles`, `ppimg`) VALUES
(1, 'melihmelih', '$2y$13$hAFpUbkqrGGC24VyuTOVkuSZQGY5Z2zKoPkWJHZiA7A0G4jr5R9FO', '[]', NULL),
(2, 'superuser', '$2y$13$FLsE/mvU8A6.ZN1R2utEguZ7ceUAB.IFIVkVt8FUwL8v0Xp0IBPUK', '[\"ROLE_ADMIN\"]', NULL),
(3, 'nail', '$2y$13$10wakXk6UkfTS8c.SH21H.eJLuWzR1azXHbEz.5mbz02cck/rskVa', '[\"ROLE_ADMIN\"]', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_24CC0DF2FB88E14F` (`utilisateur_id`);

--
-- Index pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  ADD PRIMARY KEY (`panier_id`,`produit_id`),
  ADD KEY `IDX_D31F28A6F77D927C` (`panier_id`),
  ADD KEY `IDX_D31F28A6F347EFB` (`produit_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29A5EC274827B9B2` (`marque_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `FK_24CC0DF2FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  ADD CONSTRAINT `FK_D31F28A6F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D31F28A6F77D927C` FOREIGN KEY (`panier_id`) REFERENCES `panier` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC274827B9B2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
