-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb33.awardspace.net
-- Generation Time: 25-Abr-2022 às 19:11
-- Versão do servidor: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4005145_wda`
--
CREATE DATABASE IF NOT EXISTS `4005145_wda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `4005145_wda`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Carro`
--

CREATE TABLE `Carro` (
  `Id` int(11) NOT NULL,
  `placa` char(8) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `ipvaPago` tinyint(1) DEFAULT NULL,
  `ipvaData` date DEFAULT NULL,
  `ipvaValor` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Carro`
--

INSERT INTO `Carro` (`Id`, `placa`, `ano`, `ipvaPago`, `ipvaData`, `ipvaValor`) VALUES
(1, 'CBA-123', 2000, 1, '2022-03-18', 700),
(2, 'CBA-123', 2000, 1, '2022-03-18', 700),
(3, 'eae0405', 2005, 1, '2022-02-24', 900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(14) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `hood` varchar(100) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `ie` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`id`, `name`, `cpf_cnpj`, `birthdate`, `address`, `hood`, `zip_code`, `city`, `state`, `phone`, `mobile`, `ie`, `created`, `modified`) VALUES
(1, 'Fulano de Tal lala', '12345678900', '1988-08-01', 'Rua da Web, 51lala', 'Internet', '1234568', 'Teste-lalala', 'SP', '15345678910', '15345678910', '12345678922', '2021-06-02 00:00:00', '2021-12-12 14:45:04'),
(2, 'Beltrano de Tal', '12345678900', '1998-01-01', 'Rua da Web, 123', 'Internet', '1234568', 'Teste', 'SP', '15345678910', '15345678910', '12345678911', '2021-06-02 00:00:00', '2021-12-12 14:44:40'),
(6, 'Teste', '12345678910', '0000-00-00', 'Teste', 'Teste', '12345678', 'Teste', 'TE', '12345678910', '12345678910', '123456', '2021-12-12 14:34:10', '2021-12-12 14:34:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `precounit` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `quantidade`, `precounit`) VALUES
(1, 'Mouse', 'mouse gamer com fio grande e usb banhado a ouro', 50, 52),
(2, 'Teclado', 'teclado gamer bluetooth', 50, 30),
(3, 'Monitor', 'monitor utrawide 144hz 1ms', 20, 800),
(4, 'Computador', 'Computador gamer da Shopee', 1, 500),
(7, 'Teste', 'Teste', 100, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Carro`
--
ALTER TABLE `Carro`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Carro`
--
ALTER TABLE `Carro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
