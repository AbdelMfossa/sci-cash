-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 01 juil. 2022 à 17:07
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fake`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `IDCOMPTE` int(11) NOT NULL,
  `USER_EMAIL` varchar(256) NOT NULL,
  `NUMCOMPTE` varchar(256) DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT 15000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`IDCOMPTE`, `USER_EMAIL`, `NUMCOMPTE`, `AMOUNT`) VALUES
(1, 'sophia.mba@yahoo.com', '1147834931023185', 15000),
(2, 'soph.mba@yaho.com', '1909981453699054', 15000),
(3, 'so.mba@yahoo.com', '7040253937932366', 25000);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `ID_TRANSACTION` int(11) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `compte_user_EMAIL` varchar(256) NOT NULL,
  `compte_user_EMAIL1` varchar(256) NOT NULL,
  `compte_IDCOMPTE` int(11) NOT NULL,
  `compte_IDCOMPTE1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`ID_TRANSACTION`, `DATE`, `compte_user_EMAIL`, `compte_user_EMAIL1`, `compte_IDCOMPTE`, `compte_IDCOMPTE1`) VALUES
(1, '2022-07-01 15:06:34', 'so.mba@yahoo.com', 'so.mba@yahoo.com', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `EMAIL` varchar(256) NOT NULL,
  `NOM` varchar(256) DEFAULT NULL,
  `PRENOM` varchar(256) DEFAULT NULL,
  `USERPASSWORD` varchar(15) DEFAULT NULL,
  `TEL` varchar(15) DEFAULT NULL,
  `DATEINSCRIPTION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`EMAIL`, `NOM`, `PRENOM`, `USERPASSWORD`, `TEL`, `DATEINSCRIPTION`) VALUES
('so.mba@yahoo.com', 'mende', 'abdel', 'sophia', '659393756', '2022-07-01 15:04:56'),
('soph.mba@yaho.com', 'mende', 'abdel', 'sophia', '6593937', '2022-07-01 15:03:35'),
('sophia.mba@yahoo.com', 'MBA', 'SOPHIA', 'sophia', '659393756', '2022-07-01 14:59:56');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`IDCOMPTE`),
  ADD KEY `USER_EMAIL` (`USER_EMAIL`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`ID_TRANSACTION`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`EMAIL`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `IDCOMPTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `ID_TRANSACTION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
