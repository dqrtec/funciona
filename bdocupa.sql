-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 14-Dez-2019 às 01:02
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdocupa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `end_id` int(11) NOT NULL,
  `end_cidade` varchar(50) DEFAULT NULL,
  `end_distrito` varchar(50) DEFAULT NULL,
  `end_numero` int(11) DEFAULT NULL,
  `end_rua` varchar(50) DEFAULT NULL,
  `end_complemento` varchar(50) DEFAULT NULL,
  `end_cep` varchar(10) DEFAULT NULL,
  `end_latitude` double NOT NULL,
  `end_longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `eve_id` int(11) NOT NULL,
  `eve_titulo` varchar(80) NOT NULL,
  `eve_end_id` int(11) DEFAULT NULL,
  `eve_descricao` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `radar`
--

CREATE TABLE `radar` (
  `rad_email` varchar(30) NOT NULL,
  `rad_senha` varchar(20) NOT NULL,
  `rad_role` int(30) NOT NULL,
  `rad_informacao_adicional` varchar(400) DEFAULT NULL,
  `rad_end_id` int(11) DEFAULT NULL,
  `rad_autor` varchar(70) NOT NULL,
  `rad_categoria` varchar(400) DEFAULT NULL,
  `rad_descricao` varchar(400) DEFAULT NULL,
  `rad_seg` varchar(40) DEFAULT NULL,
  `rad_tags` varchar(400) DEFAULT NULL,
  `rad_servicos` varchar(400) DEFAULT NULL,
  `rad_titulo` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`end_id`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`eve_id`),
  ADD KEY `const_eve_end` (`eve_end_id`);

--
-- Indexes for table `radar`
--
ALTER TABLE `radar`
  ADD PRIMARY KEY (`rad_role`),
  ADD UNIQUE KEY `rad_email` (`rad_email`),
  ADD KEY `const_rad_end` (`rad_end_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `end_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radar`
--
ALTER TABLE `radar`
  MODIFY `rad_role` int(30) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `const_eve_end` FOREIGN KEY (`eve_end_id`) REFERENCES `endereco` (`end_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `radar`
--
ALTER TABLE `radar`
  ADD CONSTRAINT `const_rad_end` FOREIGN KEY (`rad_end_id`) REFERENCES `endereco` (`end_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
