-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 31 oct. 2024 à 15:06
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `copropriétaires`
--

CREATE TABLE `copropriétaires` (
  `id_proprio` int(11) NOT NULL,
  `Num_imma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modèle`
--

CREATE TABLE `modèle` (
  `type_id` int(11) NOT NULL,
  `nom_modèle` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `propriétaire`
--

CREATE TABLE `propriétaire` (
  `id_proprio` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `véhicule`
--

CREATE TABLE `véhicule` (
  `Num_imma` varchar(20) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `marque` varchar(255) NOT NULL,
  `modèle` varchar(255) NOT NULL,
  `année` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `copropriétaires`
--
ALTER TABLE `copropriétaires`
  ADD PRIMARY KEY (`id_proprio`,`Num_imma`),
  ADD KEY `Num_imma` (`Num_imma`);

--
-- Index pour la table `modèle`
--
ALTER TABLE `modèle`
  ADD PRIMARY KEY (`type_id`);

--
-- Index pour la table `propriétaire`
--
ALTER TABLE `propriétaire`
  ADD PRIMARY KEY (`id_proprio`);

--
-- Index pour la table `véhicule`
--
ALTER TABLE `véhicule`
  ADD PRIMARY KEY (`Num_imma`),
  ADD KEY `type_id` (`type_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `modèle`
--
ALTER TABLE `modèle`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `propriétaire`
--
ALTER TABLE `propriétaire`
  MODIFY `id_proprio` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `copropriétaires`
--
ALTER TABLE `copropriétaires`
  ADD CONSTRAINT `copropriétaires_ibfk_1` FOREIGN KEY (`id_proprio`) REFERENCES `propriétaire` (`id_proprio`),
  ADD CONSTRAINT `copropriétaires_ibfk_2` FOREIGN KEY (`Num_imma`) REFERENCES `véhicule` (`Num_imma`) ON DELETE CASCADE;

--
-- Contraintes pour la table `véhicule`
--
ALTER TABLE `véhicule`
  ADD CONSTRAINT `véhicule_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `modèle` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
