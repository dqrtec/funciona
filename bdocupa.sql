-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09-Dez-2019 às 23:15
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdocupa`
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

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`end_id`, `end_cidade`, `end_distrito`, `end_numero`, `end_rua`, `end_complemento`, `end_cep`, `end_latitude`, `end_longitude`) VALUES
(1, 'Recife', 'pernambuco', 785, 'rua do limoeiro', 'predio', '607514', -8.0514257, -34.9385107),
(2, 'Recife', NULL, NULL, NULL, '', NULL, -8.0547881, -34.9537796),
(3, 'Camaragibe', NULL, NULL, NULL, '', NULL, -8.0084991, -35.0372609);

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

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`eve_id`, `eve_titulo`, `eve_end_id`, `eve_descricao`) VALUES
(1, 'Libertação das Mentes Criativas', 1, 'envento feito pela secretaria de cultura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilidade`
--

CREATE TABLE `habilidade` (
  `hab_id` int(11) NOT NULL,
  `hab_nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `habilidade`
--

INSERT INTO `habilidade` (`hab_id`, `hab_nome`) VALUES
(1, 'madeira'),
(2, 'pedra'),
(3, 'barro'),
(5, 'daniel update');

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilidade_segmento`
--

CREATE TABLE `habilidade_segmento` (
  `hs_hab_id` int(11) NOT NULL,
  `hs_seg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `habilidade_segmento`
--

INSERT INTO `habilidade_segmento` (`hs_hab_id`, `hs_seg_id`) VALUES
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `radar`
--

CREATE TABLE `radar` (
  `rad_email` varchar(30) NOT NULL,
  `rad_senha` varchar(20) NOT NULL,
  `rad_role` varchar(30) DEFAULT NULL,
  `rad_informacao_adicional` varchar(400) DEFAULT NULL,
  `rad_end_id` int(11) DEFAULT NULL,
  `rad_autor` varchar(70) NOT NULL,
  `rad_categoria` varchar(400) DEFAULT NULL,
  `rad_descricao` varchar(400) DEFAULT NULL,
  `rad_seg_id` int(11) DEFAULT NULL,
  `rad_tags` varchar(400) DEFAULT NULL,
  `rad_servicos` varchar(400) DEFAULT NULL,
  `rad_titulo` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `radar`
--

INSERT INTO `radar` (`rad_email`, `rad_senha`, `rad_role`, `rad_informacao_adicional`, `rad_end_id`, `rad_autor`, `rad_categoria`, `rad_descricao`, `rad_seg_id`, `rad_tags`, `rad_servicos`, `rad_titulo`) VALUES
('daniel@123', '123', 'daniel', 'trabalha com artesanato', 1, 'desafiando o sistema ', 'cat 1', 'sempre i no vando', 1, 'artesanato jovem', 'sarvico 1', 'como desfiar'),
('dqrtec@hotmail.com', 'a', NULL, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL),
('recife@recife.com', '123', '1', 'vendemos artes', 3, 'juninho pernambuco', NULL, NULL, NULL, 'telas', 'produção de telas', 'Telas a 8 arte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `segmento`
--

CREATE TABLE `segmento` (
  `seg_id` int(11) NOT NULL,
  `seg_nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `segmento`
--

INSERT INTO `segmento` (`seg_id`, `seg_nome`) VALUES
(1, 'artesanato'),
(2, 'escultura');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`end_id`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`eve_id`),
  ADD KEY `const_eve_end` (`eve_end_id`);

--
-- Índices para tabela `habilidade`
--
ALTER TABLE `habilidade`
  ADD PRIMARY KEY (`hab_id`);

--
-- Índices para tabela `habilidade_segmento`
--
ALTER TABLE `habilidade_segmento`
  ADD PRIMARY KEY (`hs_hab_id`,`hs_seg_id`),
  ADD KEY `const_hab_seg_seg` (`hs_seg_id`);

--
-- Índices para tabela `radar`
--
ALTER TABLE `radar`
  ADD PRIMARY KEY (`rad_email`),
  ADD KEY `const_rad_end` (`rad_end_id`),
  ADD KEY `const_rad_seg` (`rad_seg_id`);

--
-- Índices para tabela `segmento`
--
ALTER TABLE `segmento`
  ADD PRIMARY KEY (`seg_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `end_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `habilidade`
--
ALTER TABLE `habilidade`
  MODIFY `hab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `segmento`
--
ALTER TABLE `segmento`
  MODIFY `seg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `const_eve_end` FOREIGN KEY (`eve_end_id`) REFERENCES `endereco` (`end_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `habilidade_segmento`
--
ALTER TABLE `habilidade_segmento`
  ADD CONSTRAINT `const_hab_seg_hab` FOREIGN KEY (`hs_hab_id`) REFERENCES `habilidade` (`hab_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `const_hab_seg_seg` FOREIGN KEY (`hs_seg_id`) REFERENCES `segmento` (`seg_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `radar`
--
ALTER TABLE `radar`
  ADD CONSTRAINT `const_rad_end` FOREIGN KEY (`rad_end_id`) REFERENCES `endereco` (`end_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `const_rad_seg` FOREIGN KEY (`rad_seg_id`) REFERENCES `segmento` (`seg_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
