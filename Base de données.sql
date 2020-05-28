-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 28 mai 2020 à 14:37
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_cybersecurite`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Le-Titanic'),
(2, 'Le-Covid-19'),
(3, 'Les-processeurs'),
(4, 'Le-lycée-Marc-Bloch');

-- --------------------------------------------------------

--
-- Structure de la table `infocategorie`
--

DROP TABLE IF EXISTS `infocategorie`;
CREATE TABLE IF NOT EXISTS `infocategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategorie` (`idCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `infocategorie`
--

INSERT INTO `infocategorie` (`id`, `nom`, `description`, `image`, `idCategorie`) VALUES
(1, 'Présentation du Titanic', 'Le RMS Titanic est un paquebot transatlantique britannique qui fait naufrage dans l\'océan Atlantique Nord en 1912 à la suite d\'une collision avec un iceberg, lors de son voyage inaugural de Southampton à New York. Entre 1 490 et 1 520 personnes trouvent la mort, ce qui fait de cet événement l\'une des plus grandes catastrophes maritimes survenues en temps de paix et la plus grande pour l\'époque. Paquebot de la White Star Line construit à l\'initiative de Joseph Bruce Ismay en 1907, il a été conçu par les architectes Alexander Montgomery Carlisle et Thomas Andrews des chantiers navals Harland & Wolff. Sa construction débute en 1909 à Belfast et se termine en 1912. Il appartient à la classe Olympic avec ses deux sister-ships, l\'Olympic et le Britannic. C\'est à l\'époque le plus luxueux et le plus grand paquebot jamais construit. Le Titanic est dirigé par le commandant Edward Smith, qui a également sombré avec le navire. Le paquebot portait certains des gens les plus riches de l\'époque, de même que des centaines d\'émigrants de Grande-Bretagne et d\'Irlande et d\'ailleurs en Europe qui cherchaient une nouvelle vie aux États-Unis. La coque du Titanic est pourvue de seize compartiments étanches servant à protéger le navire en cas de voies d\'eau ou d\'avaries importantes, ce qui lui donna la réputation de paquebot « insubmersible » et conduit les médias contemporains à le présenter comme l\'un des navires les plus sûrs. Le 14 avril 1912, quatre jours après le commencement de son voyage inaugural, il heurte un iceberg à 23 h 40 (heure locale) et coule le 15 avril 1912 à 2 h 20 au large de Terre-Neuve. Le drame met en évidence l\'insuffisance des règles de sécurité de l\'époque, notamment le nombre insuffisant de canots de sauvetage et les carences dans les procédures d\'évacuation d\'urgence. Le puissant émetteur TSF du bord a permis d\'appeler à l\'aide, mais dans des conditions controversées, qui s\'ajoutent à une polémique financière. Des conférences internationales seront par la suite organisées, entraînant des changements de réglementation encore en vigueur un siècle après la catastrophe. L\'épave du Titanic est localisée le 1er septembre 1985 par le professeur Robert Ballard. Elle gît à 3 843 mètres de profondeur à 650 km au sud-est de Terre-Neuve. L\'histoire du paquebot a marqué les mémoires, et suscité la publication de nombreux ouvrages (historiques ou de fiction) et la réalisation de longs métrages dont le film du même nom Titanic de James Cameron, sorti en 1997 et ayant entraîné un important regain d\'intérêt pour le paquebot et son histoire. Les médias s\'intéressent à nouveau au navire à l\'occasion du centenaire de son naufrage, en avril 2012.', 'letitanic.jpg', 1),
(2, 'Présentation du Coronavirus', 'La maladie à coronavirus 2019 ou Covid-19 (acronyme anglais de COronaVirus Infectious Disease 20191) est une maladie infectieuse émergente de type zoonose virale causée par la souche de coronavirus SARS-CoV-2. Les symptômes les plus fréquents en sont la fièvre, la toux et la gêne respiratoire et, plus rarement, un syndrome de détresse respiratoire aiguë pouvant entraîner la mort, notamment chez les personnes rendues fragiles par l\'âge ou des comorbidités. Une autre complication mortelle est une réponse exacerbée du système immunitaire inné (choc cytokinique). Il existe un pourcentage important de formes asymptomatiques . Le mode de transmission interhumaine se fait via des gouttelettes respiratoires, postillons comme la grippe saisonnière surtout lorsque les gens toussent ou éternuent, ou via un contact manuel avec une surface contaminée suivi d\'un toucher de la main sur le visage (bouche, nez, yeux, pas la peau). La période d\'incubation se situe généralement entre deux et quatorze jours, voire 20 jours, avec une moyenne de cinq jours. Une proportion importante des personnes infectées, entre autres les enfants, ne présentent souvent aucun symptôme mais peuvent transmettre la maladie augmentant sa contagiosité.', 'lecorona.jpg', 2),
(3, 'Présentation des processeurs', 'Un processeur (ou unité centrale de traitement, UCT, en anglais central processing unit, CPU) est un composant présent dans de nombreux dispositifs électroniques qui exécute les instructions machine des programmes informatiques. Avec la mémoire, c\'est notamment l\'un des composants qui existent depuis les premiers ordinateurs et qui sont présents dans tous les ordinateurs. Un processeur construit en un seul circuit intégré est un microprocesseur. L\'invention du transistor, en 1948, ouvrit la voie à la miniaturisation des composants électroniques. Car, auparavant, les ordinateurs prenaient la taille d\'une pièce entière du fait de l\'utilisation de lampes à vide volumineuses, grosses consommatrices d\'énergie et génératrices de beaucoup de chaleur. Les processeurs des débuts étaient conçus spécifiquement pour un ordinateur d\'un type donné. Cette méthode coûteuse de conception des processeurs pour une application spécifique a conduit au développement de la production de masse de processeurs qui conviennent pour un ou plusieurs usages. Cette tendance à la standardisation qui débuta dans le domaine des ordinateurs centraux (mainframes à transistors discrets et mini-ordinateurs) a connu une accélération rapide avec l\'avènement des circuits intégrés. Les circuits intégrés ont permis la miniaturisation des processeurs. La miniaturisation et la standardisation des processeurs ont conduit à leur diffusion dans la vie moderne bien au-delà des usages des machines programmables dédiées.', 'proco.jpg', 3),
(4, 'Présentation du lycée Marc Bloch', 'Le lycée Marc Bloch à Sérignan a été construit de 2010 à 2013, la première ouverture du lycée a donc été ouvert en septembre 2013. Lycée magnifique avec une cantine superbe et des professeurs de qualités. Une architecture à la fois moderne et apaisante pour pouvoir bien travailler dans de bonnes conditions.', 'lycéemarcbloch.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(10) NOT NULL,
  `login` varchar(50) NOT NULL,
  `passe` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isAdmin` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `passe`, `email`, `isAdmin`) VALUES
(1, 'Sixelm-admin', 'proutprout34', 'alexistoso3@gmail.com', 1),
(2, 'Random', 'randomfr34', 'random@gmail.com', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `infocategorie`
--
ALTER TABLE `infocategorie`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
