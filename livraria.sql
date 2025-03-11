-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/03/2025 às 01:04
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_livro`
--

CREATE TABLE `cad_livro` (
  `id_livro` int(11) NOT NULL,
  `livro` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cad_livro`
--

INSERT INTO `cad_livro` (`id_livro`, `livro`, `autor`, `categoria`, `id_usuario`) VALUES
(1, 'O Retrato de Dorian Gray', 'Oscar Wild', 'Drama', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_usuario` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id_usuario`, `login`, `nome`, `senha`) VALUES
(1, 'Allan_425', 'Allan', ''),
(2, 'Asdemon', 'Asdemon', ''),
(3, 'alf', 'Alf', ''),
(4, 'al', 'Alfred', ''),
(5, 'asdron', 'asdron', '123'),
(6, 'Alex_123', 'Alex', '123'),
(7, 'Julio_123', 'Julio', '123'),
(8, 'Sanots', 'Santos', '123'),
(9, 'Maria', 'Maria', '123'),
(10, 'Anderson_123', 'Anderson', '123'),
(11, 'Adriana_123', 'Adriana', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cad_livro`
--
ALTER TABLE `cad_livro`
  ADD PRIMARY KEY (`id_livro`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_livro`
--
ALTER TABLE `cad_livro`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
