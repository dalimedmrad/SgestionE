-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 02 mai 2021 à 04:21
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caracteristiques` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `caracteristiques`) VALUES
(1, 'Informatique', 'Ordinateur , Ordinateur de Bureau, Composant Informatique, Accessoires et Périphériques, Serveur informatique, Logiciels'),
(2, 'Téléphonie & Tablette', 'Téléphone Portable, Téléphone Fixe, Tablette tactile, Smartphone, Accessoires Téléphones,'),
(3, 'TV-Son-Photos', 'Vidéoprojecteurs, Téléviseurs, Consoles & Jeux, Appareils Photos, Récepteur / Abonnement'),
(4, 'Electroménager', 'Gros Electro Cuisine, Gros Electro Lavage, Petit Electro Cuisine, Entretien – Soin, Chauffage'),
(5, 'Sécurité', 'Système d\'alarme, Matériel de sécurité, Onduleur'),
(6, 'Bureautique', 'Matériel point de vente, Ecriture & Correction, Classement & Archivage, Papier, Cahiers, blocs et feuilles, Tableaux'),
(7, 'Stockage', 'Disques Internes, Disque Dur externe, Serveur de stockage, Accessoires pour Stockage');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200909135214', '2020-09-09 15:52:25', 2283),
('DoctrineMigrations\\Version20210430225655', '2021-05-01 00:57:09', 1978),
('DoctrineMigrations\\Version20210430230943', '2021-05-01 01:09:53', 1477),
('DoctrineMigrations\\Version20210430231848', '2021-05-01 01:19:07', 865),
('DoctrineMigrations\\Version20210501123332', '2021-05-01 14:34:07', 446);

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` int(11) NOT NULL,
  `poste_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numtlf` int(11) NOT NULL,
  `salaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `poste_id`, `nom`, `prenom`, `addresse`, `email`, `numtlf`, `salaire`) VALUES
(1, 1, 'ahmed', 'rayen', 'oudref', 'ahmed89@gmail.com', 58963118, 5000),
(2, 2, 'mounir', 'ben ahmed', 'jerjis', 'mouni22@gmail.com', 98741852, 2500),
(3, 6, 'bn ahmed', 'mohamed', 'mednine', 'med85@gmail.com', 56963133, 650);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `nom`) VALUES
(1, 'Directeur'),
(2, 'Chef d\'équipe'),
(3, 'Technicien'),
(4, 'Caissier'),
(5, 'Agent d\'accueil'),
(6, 'Agent sécurité'),
(7, 'Agent de ménage'),
(8, 'Agent de comptabilité'),
(9, 'Resource humaine'),
(10, 'Responsable marketing'),
(11, 'Agent d\'économat'),
(12, 'Chauffeur');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_unit` int(11) NOT NULL,
  `quantite_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `categorie_id`, `nom`, `prix_unit`, `quantite_stock`) VALUES
(2, 1, 'Pc Portable Lenovo IdeaPad 330-15IGM / Dual Core / 8 Go / Noir', 1500, 120),
(3, 1, 'Pc Portable Lenovo IdeaPad 330-15AST / Dual Core / 8 Go / Noir', 1650, 120),
(4, 3, 'Ecran Dell 20\" LCD HD LED E2020H', 590, 100),
(5, 3, 'Ecran Asus VP247HAE 23.6\" Full HD / 60 Hz', 250, 1000),
(6, 3, 'Ecran Samsung 27\" Full HD Incurvée', 500, 120),
(7, 3, 'Box Android X96 Full HD Avec Abonnement 12 Mois IPTV + VOD', 80, 100),
(8, 7, 'Disque Dur Interne 3.5\" Toshiba P300 1 To', 115, 1100),
(9, 7, 'Disque Dur Interne 3.5\" Pour Video Surveillance Western Digital Purple 1 To', 180, 150),
(10, 7, 'Serveur NAS 2 Baies QNAP TS-253Be-4G / Sans Disque', 1400, 50),
(11, 4, 'Mini Bar NEWSTAR Defrost / 50 L / Blanc', 323, 500),
(12, 4, 'Réfrigérateur MontBlanc 230L / Gris', 520, 80),
(13, 4, 'Machine À Laver Semi-Automatique Unionaire 7.5 Kg / Blanc', 199, 120),
(14, 4, 'Machine À Laver Semi Automatique Orient 12 Kg + Produit Lessive Nadhif', 380, 550),
(15, 5, 'Télécommande Pour Système D\'alarme Satel', 45, 1000),
(16, 5, 'Système D\'alarme Sans Fil Satel Perfecta', 1130, 50),
(17, 5, 'Caméra Externe Mipvision F024 / 2MP', 75, 1500),
(18, 6, '100x Pochette À Plastifier Lamination A4 / 125MIC / 216 X 303mm', 29, 100);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A94BC0F0A0905086` (`poste_id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BE2DDF8CBCF5E72D` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `FK_A94BC0F0A0905086` FOREIGN KEY (`poste_id`) REFERENCES `postes` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_BE2DDF8CBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
