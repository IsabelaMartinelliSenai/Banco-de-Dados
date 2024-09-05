-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 05/09/2024 às 12:25
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
-- Banco de dados: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `IDcliente` bigint(20) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `data_de_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`IDcliente`, `nome_completo`, `nome_usuario`, `senha`, `CPF`, `CEP`, `logradouro`, `cidade`, `estado`, `data_de_nascimento`) VALUES
(1, 'Ana Laura da Silva', 'Ana Laura', '12345', '24748668955', '566743998', 'R:Machado de Assis', 'Americana', 'SP', '2004-05-13'),
(2, 'Marcelo Carvalho', 'Marcelo', '7566', '89445523486', '990527413', 'R:Rio Branco', 'São Paulo', 'SP', '1997-08-22'),
(3, 'Juliana Oliveira', 'Juliana', '77843', '44367895467', '879553752', 'R:Dr. Afonso Lima', 'Campinas', 'SP', '2001-09-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `IDproduto` bigint(11) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `descricao` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `fornecedor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`IDproduto`, `nome_produto`, `preco`, `descricao`, `quantidade`, `fornecedor`) VALUES
(1, 'Camisa polo masculina', 59, 'Camisa masculina da marca POLO', 10, 'SHOPPE'),
(2, 'Calça jeans feminina', 89, 'Calça feminina jeans', 12, 'SHOPPE'),
(3, 'T-shirt branca feminina', 60, 'T-shirt feminina na cor branca', 23, 'SHOPPE'),
(4, 'Calça de moletom masculina', 160, 'Novo produto', 14, 'SHOPPE'),
(5, 'Vestido azul', 55, 'Produto novo', 12, 'Mercado Livre');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nome`, `senha`) VALUES
(1, 'MARCIO', '123456'),
(3, 'AMANDA', '12345'),
(5, 'LIVIA', '234'),
(6, 'BIANCA', '6543'),
(7, 'DAVI', '56789'),
(8, 'GABY', '456'),
(9, 'LORENA', '9876');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`IDproduto`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IDcliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `IDproduto` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
