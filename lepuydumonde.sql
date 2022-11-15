-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 28 oct. 2022 à 08:35
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lepuydumonde`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(2) NOT NULL,
  `nom_admin` varchar(25) NOT NULL,
  `prenom_admin` varchar(25) NOT NULL,
  `mailadmin` varchar(25) NOT NULL,
  `mdp_admin` varchar(15) NOT NULL,
  `pseudo_admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom_admin`, `prenom_admin`, `mailadmin`, `mdp_admin`, `pseudo_admin`) VALUES
(1, 'ETTER', 'Christopher', 'chris-admin@gmail.fr', '123456', 'MonsieurChris'),
(3, 'BLACHON', 'Theo', 'blachon-admin@gmail.fr', '678910', 'TETRIS3000'),
(4, 'AVATAR', 'Hang', 'Hang@gmail.com', 'hiphip', 'maitre_de_l\'air'),
(5, 'BRUN', 'Alexis', 'Alexis@mail.fr', 'Mickeymouse', 'Alexis43'),
(7, 'DOMINOT', 'Clara', 'Clara@orange.com', 'Doraexploratrix', 'Clara43');

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE `artiste` (
  `id_artiste` int(4) NOT NULL,
  `nom_artiste` varchar(25) NOT NULL,
  `prenom_artiste` varchar(25) NOT NULL,
  `metier` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `nom_artiste`, `prenom_artiste`, `metier`) VALUES
(1, 'lartiste', 'Clara', 'chanteuse');

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

CREATE TABLE `billet` (
  `id_billets` int(4) NOT NULL,
  `id_concert` int(4) NOT NULL,
  `id_client` int(4) NOT NULL,
  `Id_tarif` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `billet`
--

INSERT INTO `billet` (`id_billets`, `id_concert`, `id_client`, `Id_tarif`) VALUES
(12, 2, 2, 1),
(13, 2, 1, 1),
(34, 2, 9, 2),
(35, 2, 10, 2),
(36, 2, 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(4) NOT NULL,
  `nom_client` varchar(25) NOT NULL,
  `prenom_client` varchar(25) NOT NULL,
  `telephone_client` varchar(10) NOT NULL,
  `mail_client` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `telephone_client`, `mail_client`) VALUES
(1, 'BENGUIGUI', 'Steve', '0603456790', 'Steve@gmail.fr'),
(2, 'Blachon', 'Lucie', '0607848356', 'Lucie@outlook.com'),
(9, 'Steve', 'Mcreedy', '0678453627', 'MC-ready@gmail.com'),
(10, 'Steve', 'Mcreedy', '0678453627', 'MC-ready@gmail.com'),
(11, 'dark', 'jeanne', '0674835293', 'darkjeanne@outlook.com');

-- --------------------------------------------------------

--
-- Structure de la table `concert`
--

CREATE TABLE `concert` (
  `id_concert` int(4) NOT NULL,
  `nom_concert` varchar(25) NOT NULL,
  `id_artiste` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `concert`
--

INSERT INTO `concert` (`id_concert`, `nom_concert`, `id_artiste`) VALUES
(2, 'Concert puy du monde', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `Id_pays` int(4) NOT NULL,
  `nom_pays` varchar(25) NOT NULL,
  `img_drap` varchar(100) DEFAULT NULL,
  `img_photo` varchar(100) DEFAULT NULL,
  `id_stands` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`Id_pays`, `nom_pays`, `img_drap`, `img_photo`, `id_stands`) VALUES
(1, 'Japon', NULL, NULL, 1),
(2, 'Mexique', NULL, NULL, 2),
(3, 'Inde', NULL, NULL, 4),
(4, 'Egypte', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Structure de la table `stands`
--

CREATE TABLE `stands` (
  `id_stands` int(4) NOT NULL,
  `Description_stands` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stands`
--

INSERT INTO `stands` (`id_stands`, `Description_stands`) VALUES
(1, 'stand de nouilles'),
(2, 'stand de vêtements mexicain'),
(4, 'stand d\'épices indiennes'),
(5, 'stand de parfums ');

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE `tarif` (
  `Id_tarif` int(4) NOT NULL,
  `prix_tarif` float NOT NULL,
  `nom_tarif` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tarif`
--

INSERT INTO `tarif` (`Id_tarif`, `prix_tarif`, `nom_tarif`) VALUES
(1, 12, 'tarif adulte'),
(2, 8, 'tarif enfant');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`id_artiste`);

--
-- Index pour la table `billet`
--
ALTER TABLE `billet`
  ADD PRIMARY KEY (`id_billets`),
  ADD KEY `id_concert` (`id_concert`),
  ADD KEY `id_reservations` (`id_client`),
  ADD KEY `Id_tarif` (`Id_tarif`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `concert`
--
ALTER TABLE `concert`
  ADD PRIMARY KEY (`id_concert`),
  ADD KEY `id_artiste` (`id_artiste`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`Id_pays`),
  ADD KEY `id_stands` (`id_stands`);

--
-- Index pour la table `stands`
--
ALTER TABLE `stands`
  ADD PRIMARY KEY (`id_stands`);

--
-- Index pour la table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`Id_tarif`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `id_artiste` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `billet`
--
ALTER TABLE `billet`
  MODIFY `id_billets` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `concert`
--
ALTER TABLE `concert`
  MODIFY `id_concert` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `Id_pays` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `stands`
--
ALTER TABLE `stands`
  MODIFY `id_stands` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `Id_tarif` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `billet`
--
ALTER TABLE `billet`
  ADD CONSTRAINT `billet_ibfk_1` FOREIGN KEY (`id_concert`) REFERENCES `concert` (`id_concert`),
  ADD CONSTRAINT `billet_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `billet_ibfk_3` FOREIGN KEY (`Id_tarif`) REFERENCES `tarif` (`Id_tarif`);

--
-- Contraintes pour la table `concert`
--
ALTER TABLE `concert`
  ADD CONSTRAINT `concert_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`);

--
-- Contraintes pour la table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_ibfk_1` FOREIGN KEY (`id_stands`) REFERENCES `stands` (`id_stands`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
