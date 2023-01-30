-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jan-2023 às 03:05
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `norte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato_tb`
--

CREATE TABLE `contrato_tb` (
  `contrato_id` int(11) NOT NULL,
  `numcont` mediumtext NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `fornecedor` varchar(100) NOT NULL,
  `tpcontrato` varchar(100) NOT NULL,
  `rescontrato` varchar(100) NOT NULL,
  `setorcontrato` varchar(100) NOT NULL,
  `dt_ini_vigencia` date NOT NULL,
  `dt_fim_vigencia` date NOT NULL,
  `dt_ini_execucao` date NOT NULL,
  `dt_fim_execucao` date NOT NULL,
  `dt_assinatura` date NOT NULL,
  `valorglobal` varchar(100) NOT NULL,
  `quantparcela` varchar(100) NOT NULL,
  `valorparcela` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notificacao` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `objeto` varchar(5000) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contrato_tb`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_tb`
--

CREATE TABLE `empresa_tb` (
  `emp_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa_tb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor_tb`
--

CREATE TABLE `fornecedor_tb` (
  `for_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor_tb`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel_tb`
--

CREATE TABLE `responsavel_tb` (
  `res_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `setor` varchar(100) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `responsavel_tb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor_tb`
--

CREATE TABLE `setor_tb` (
  `set_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `setor_tb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tpcont_tb`
--

CREATE TABLE `tpcont_tb` (
  `tpcont_id` int(11) NOT NULL,
  `nome` varchar(400) NOT NULL,
  `data_criacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tpcont_tb`
--

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contrato_tb`
--
ALTER TABLE `contrato_tb`
  ADD PRIMARY KEY (`contrato_id`);

--
-- Índices para tabela `empresa_tb`
--
ALTER TABLE `empresa_tb`
  ADD PRIMARY KEY (`emp_id`);

--
-- Índices para tabela `fornecedor_tb`
--
ALTER TABLE `fornecedor_tb`
  ADD PRIMARY KEY (`for_id`);

--
-- Índices para tabela `responsavel_tb`
--
ALTER TABLE `responsavel_tb`
  ADD PRIMARY KEY (`res_id`);

--
-- Índices para tabela `setor_tb`
--
ALTER TABLE `setor_tb`
  ADD PRIMARY KEY (`set_id`);

--
-- Índices para tabela `tpcont_tb`
--
ALTER TABLE `tpcont_tb`
  ADD PRIMARY KEY (`tpcont_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contrato_tb`
--
ALTER TABLE `contrato_tb`
  MODIFY `contrato_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `empresa_tb`
--
ALTER TABLE `empresa_tb`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `fornecedor_tb`
--
ALTER TABLE `fornecedor_tb`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `responsavel_tb`
--
ALTER TABLE `responsavel_tb`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setor_tb`
--
ALTER TABLE `setor_tb`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tpcont_tb`
--
ALTER TABLE `tpcont_tb`
  MODIFY `tpcont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
