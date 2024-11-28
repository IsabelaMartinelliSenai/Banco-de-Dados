-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16/09/2024 às 12:32
-- Versão do servidor: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ATIVIDADE_SENAI`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENTES`
--

CREATE TABLE `CLIENTES` (
  `ID_cliente` int(11) NOT NULL,
  `Nome_Completo` varchar(255) NOT NULL,
  `Telefone` varchar(255) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Data_de_Nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `CLIENTES`
--

INSERT INTO `CLIENTES` (`ID_cliente`, `Nome_Completo`, `Telefone`, `CPF`, `Data_de_Nascimento`) VALUES
(1, 'Ana Julia Matos', '(19)938593384', '38499475102', '2000-03-22'),
(2, 'Luiz da Silva', '(22)937445283', '27485998437', '1986-04-09'),
(3, 'Amanda Saraiva', '(21)938475517', '45837719487', '1999-11-27'),
(4, 'Rogerio Carvalho', '(19)748957728', '24778594598', '1985-12-22'),
(5, 'Samanta Costa', '(22)389458845', '17394485723', '2002-05-25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `PRODUTOS`
--

CREATE TABLE `PRODUTOS` (
  `ID_produto` int(11) NOT NULL,
  `Nome_do_Produto` varchar(255) NOT NULL,
  `Fabricante` varchar(255) NOT NULL,
  `Onde_foi_Fabricado` varchar(255) NOT NULL,
  `Carroceria` varchar(255) NOT NULL,
  `Ano_de_Fabricacao` int(11) NOT NULL,
  `Numero_de_Serie` varchar(255) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `PRODUTOS`
--

INSERT INTO `PRODUTOS` (`ID_produto`, `Nome_do_Produto`, `Fabricante`, `Onde_foi_Fabricado`, `Carroceria`, `Ano_de_Fabricacao`, `Numero_de_Serie`, `Descricao`, `Preco`) VALUES
(1, 'Fusca', 'Volkswagen', 'Alemanha', 'Hatch', 1980, '27483', 'Cor: azul; Volante largo.', 15000),
(2, 'Taycan', 'Porsche', 'Alemanha', 'Sedan', 2024, '26819', 'Cor: cinza; Esportivo.', 629000),
(3, 'Daytona', 'Ferrari', 'Itália', 'Sedan', 2024, '75832', 'Cor: vermelho; Esportivo.', 10000000),
(4, 'Macan', 'Porsche', 'Alemanha', 'SUV', 2024, '38498', 'Cor: Branco', 770000),
(6, 'Temerario', 'Lamborghini', 'Italia', 'Sedan', 2024, '74865', 'Cor: prata; Esportivo', 1900000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `VENDAS`
--

CREATE TABLE `VENDAS` (
  `ID_venda` int(11) NOT NULL,
  `ID_produto` int(11) NOT NULL,
  `Preco_de_Venda` float NOT NULL,
  `ID_cliente/comprador` varchar(255) NOT NULL,
  `Data_da_Venda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `VENDAS`
--

INSERT INTO `VENDAS` (`ID_venda`, `ID_produto`, `Preco_de_Venda`, `ID_cliente/comprador`, `Data_da_Venda`) VALUES
(1, 3, 10000000, '4', '2024-11-07'),
(2, 1, 15000, '5', '2020-06-11'),
(3, 2, 629000, '3', '2024-10-22'),
(4, 6, 1900000, '1', '2024-09-04'),
(5, 4, 770000, '2', '2024-08-09');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `CLIENTES`
--
ALTER TABLE `CLIENTES`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Índices de tabela `PRODUTOS`
--
ALTER TABLE `PRODUTOS`
  ADD PRIMARY KEY (`ID_produto`);

--
-- Índices de tabela `VENDAS`
--
ALTER TABLE `VENDAS`
  ADD PRIMARY KEY (`ID_venda`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `CLIENTES`
--
ALTER TABLE `CLIENTES`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `PRODUTOS`
--
ALTER TABLE `PRODUTOS`
  MODIFY `ID_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `VENDAS`
--
ALTER TABLE `VENDAS`
  MODIFY `ID_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
