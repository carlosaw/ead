-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Abr-2024 às 21:02
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ead`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Bonieky ', 'boni@gmail.com', '698dc19d489c4e4db73e28a713eab07b'),
(3, 'Carlos Sampaio', 'carlos@gmail.com', '698dc19d489c4e4db73e28a713eab07b'),
(11, 'José Ricardo ', 'zeamadio@gmail.com', 'fade225f096f9138f98f29887fc1f10d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_curso`
--

CREATE TABLE `aluno_curso` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `aluno_curso`
--

INSERT INTO `aluno_curso` (`id`, `id_curso`, `id_aluno`) VALUES
(136, 7, 1),
(49, 7, 3),
(48, 5, 3),
(47, 1, 3),
(135, 6, 1),
(134, 5, 1),
(138, 1, 11),
(132, 3, 1),
(131, 2, 1),
(137, 8, 1),
(130, 1, 1),
(139, 8, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `id_modulo`, `id_curso`, `ordem`, `tipo`) VALUES
(1, 1, 1, 1, 'video'),
(2, 1, 1, 2, 'video'),
(3, 2, 1, 1, 'video'),
(29, 1, 1, 3, 'poll'),
(5, 3, 1, 1, 'video'),
(6, 3, 1, 2, 'video'),
(7, 3, 1, 3, 'video'),
(8, 4, 1, 1, 'video'),
(30, 4, 1, 3, 'poll'),
(28, 4, 1, 2, 'video'),
(31, 5, 7, 1, 'video'),
(32, 5, 7, 2, 'video'),
(33, 5, 7, 3, 'video'),
(34, 5, 7, 4, 'poll'),
(35, 6, 7, 1, 'video'),
(36, 6, 7, 2, 'video'),
(37, 6, 7, 3, 'poll'),
(38, 7, 7, 1, 'video'),
(39, 7, 7, 2, 'poll'),
(40, 8, 2, 1, 'video'),
(41, 8, 2, 2, 'video'),
(42, 8, 2, 3, 'poll'),
(43, 9, 2, 1, 'video'),
(44, 9, 2, 2, 'poll'),
(45, 10, 2, 1, 'video'),
(46, 10, 2, 2, 'poll'),
(47, 11, 3, 1, 'video'),
(48, 11, 3, 2, 'poll'),
(49, 12, 3, 1, 'video'),
(50, 12, 3, 2, 'poll'),
(51, 13, 3, 1, 'video'),
(52, 13, 3, 2, 'poll'),
(53, 14, 3, 1, 'video'),
(54, 14, 3, 2, 'poll'),
(101, 4, 1, 4, 'video'),
(63, 18, 5, 1, 'video'),
(64, 18, 5, 2, 'video'),
(65, 18, 5, 3, 'video'),
(66, 18, 5, 4, 'poll'),
(67, 19, 5, 1, 'video'),
(68, 19, 5, 2, 'poll'),
(69, 20, 5, 1, 'video'),
(70, 20, 5, 2, 'poll'),
(71, 21, 5, 1, 'video'),
(72, 21, 5, 2, 'poll'),
(73, 22, 6, 1, 'video'),
(74, 22, 6, 2, 'video'),
(75, 22, 6, 3, 'poll'),
(76, 23, 6, 1, 'video'),
(77, 23, 6, 2, 'video'),
(78, 23, 6, 3, 'poll'),
(79, 24, 6, 1, 'video'),
(80, 24, 6, 2, 'video'),
(81, 24, 6, 3, 'poll'),
(82, 25, 8, 1, 'video'),
(83, 25, 8, 2, 'poll'),
(84, 26, 8, 1, 'video'),
(85, 26, 8, 2, 'poll'),
(86, 27, 8, 1, 'video'),
(87, 27, 8, 2, 'poll');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(37) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `imagem`, `descricao`) VALUES
(1, 'PHP ', 'php.jpg', 'Curso de PHP'),
(2, 'HTML', 'html.jpg', 'Curso de HTML'),
(3, 'JAVASCRIPT', 'javascript.jpg', 'Curso de JavaScript'),
(5, 'AngularJS', 'angularjs.jpg', 'Curso de Angular'),
(6, 'JQuery', 'jquery.jpg', 'Curso de JQuery'),
(7, 'React JS', '4815348b30901aa6cc2cda6ce0ac37ff.jpg', 'Curso de React JS'),
(8, 'Android', 'android.jpg', 'Curso para Móbiles');

-- --------------------------------------------------------

--
-- Estrutura da tabela `duvidas`
--

CREATE TABLE `duvidas` (
  `id` int(11) NOT NULL,
  `data_duvida` datetime NOT NULL,
  `respondida` tinyint(1) NOT NULL,
  `duvida` text DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `duvidas`
--

INSERT INTO `duvidas` (`id`, `data_duvida`, `respondida`, `duvida`, `id_aluno`) VALUES
(1, '2019-11-15 14:43:15', 0, 'Qual é?', 1),
(9, '2019-11-15 15:02:17', 0, 'Duvida sem anti-f5', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(11) UNSIGNED NOT NULL,
  `data_viewed` datetime NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id`, `data_viewed`, `id_aluno`, `id_aula`) VALUES
(14, '2020-06-19 15:15:30', 11, 91),
(15, '2022-03-31 09:14:10', 1, 1),
(16, '2022-03-31 09:14:17', 1, 3),
(17, '2022-03-31 09:17:07', 1, 7),
(18, '2022-03-31 09:31:08', 1, 30),
(19, '2022-03-31 09:31:56', 1, 29),
(20, '2022-03-31 09:32:22', 1, 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `modulos`
--

INSERT INTO `modulos` (`id`, `id_curso`, `nome`) VALUES
(1, 1, 'Básico'),
(2, 1, 'Intermediário'),
(3, 1, 'Avançado'),
(4, 1, 'Super Avançado'),
(5, 7, 'Básico'),
(6, 7, 'Intermediário'),
(7, 7, 'Avançado'),
(8, 2, 'Básico'),
(9, 2, 'Intermediário'),
(10, 2, 'Avançado'),
(11, 3, 'Básico'),
(12, 3, 'Intermediário'),
(13, 3, 'Avançado'),
(14, 3, 'Super Avançado'),
(18, 5, 'Básico'),
(19, 5, 'Intermediário'),
(20, 5, 'Avançado'),
(21, 5, 'Ninja'),
(22, 6, 'Básico'),
(23, 6, 'Intermediário'),
(24, 6, 'Avançado'),
(25, 8, 'Básico'),
(26, 8, 'Intermediário'),
(27, 8, 'Avançado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionarios`
--

CREATE TABLE `questionarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_aula` int(11) NOT NULL,
  `pergunta` varchar(100) NOT NULL,
  `opcao1` varchar(100) DEFAULT NULL,
  `opcao2` varchar(100) DEFAULT NULL,
  `opcao3` varchar(100) DEFAULT NULL,
  `opcao4` varchar(100) DEFAULT NULL,
  `resposta` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `questionarios`
--

INSERT INTO `questionarios` (`id`, `id_aula`, `pergunta`, `opcao1`, `opcao2`, `opcao3`, `opcao4`, `resposta`) VALUES
(4, 30, 'Qual o melhor curso?', 'PHP-ZP', 'CSS', 'HTML', 'RUBY', 1),
(3, 29, 'Qual a cor do céu?', 'Verde', 'Amarelo', 'Azul', 'Vermelho', 3),
(5, 34, '', NULL, NULL, NULL, NULL, 0),
(6, 37, '', NULL, NULL, NULL, NULL, 0),
(7, 39, '', NULL, NULL, NULL, NULL, 0),
(8, 42, '', NULL, NULL, NULL, NULL, 0),
(9, 44, '', NULL, NULL, NULL, NULL, 0),
(10, 46, '', NULL, NULL, NULL, NULL, 0),
(11, 48, '', NULL, NULL, NULL, NULL, 0),
(12, 50, '', NULL, NULL, NULL, NULL, 0),
(13, 52, '', NULL, NULL, NULL, NULL, 0),
(14, 54, '', NULL, NULL, NULL, NULL, 0),
(15, 57, '', NULL, NULL, NULL, NULL, 0),
(16, 60, '', NULL, NULL, NULL, NULL, 0),
(17, 62, '', NULL, NULL, NULL, NULL, 0),
(18, 66, '', NULL, NULL, NULL, NULL, 0),
(19, 68, '', NULL, NULL, NULL, NULL, 0),
(20, 70, '', NULL, NULL, NULL, NULL, 0),
(21, 72, '', NULL, NULL, NULL, NULL, 0),
(22, 75, '', NULL, NULL, NULL, NULL, 0),
(23, 78, '', NULL, NULL, NULL, NULL, 0),
(24, 81, '', NULL, NULL, NULL, NULL, 0),
(25, 83, '', NULL, NULL, NULL, NULL, 0),
(26, 85, '', NULL, NULL, NULL, NULL, 0),
(27, 87, '', NULL, NULL, NULL, NULL, 0),
(28, 99, 'Onde comprar barato?', 'Flórida', 'Miami', 'São Paulo', 'Shopping dos camelôs?', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'boni@gmail.com', '698dc19d489c4e4db73e28a713eab07b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_aula` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `id_aula`, `nome`, `descricao`, `url`) VALUES
(15, 40, 'Aula 1', NULL, NULL),
(14, 38, 'Aula 6', NULL, NULL),
(13, 36, 'Aula 5', NULL, NULL),
(12, 35, 'Aula 4', NULL, NULL),
(11, 33, 'Aula 3', NULL, NULL),
(9, 31, 'Aula 1', NULL, NULL),
(10, 32, 'Aula2', NULL, NULL),
(31, 67, 'Aula 4', NULL, NULL),
(30, 65, 'Aula 3', NULL, NULL),
(29, 64, 'Aula 2', NULL, NULL),
(28, 63, 'Aula 1', NULL, NULL),
(27, 61, 'Aula 5', NULL, NULL),
(26, 59, 'Aula 4', NULL, NULL),
(25, 58, 'Aula 3', NULL, NULL),
(24, 56, 'Aula 2', NULL, NULL),
(23, 55, 'Aula 1', NULL, NULL),
(22, 53, 'Aula 4', NULL, NULL),
(21, 51, 'Aula 3', NULL, NULL),
(20, 49, 'Aula 2', NULL, NULL),
(19, 47, 'Aula 1', NULL, NULL),
(18, 45, 'Aula 4', NULL, NULL),
(17, 43, 'Aula 3', NULL, NULL),
(16, 41, 'Aula 2', NULL, NULL),
(8, 28, 'Aula 8', '', '147000414'),
(7, 8, 'Aula 7', '', '107578612'),
(6, 7, 'Aula 6', NULL, '56134144'),
(5, 6, 'Aula 5', NULL, '303888893'),
(4, 5, 'Aula 4', NULL, '217133224'),
(3, 3, 'Aula 3', NULL, '43120512'),
(2, 2, 'Aula 2', NULL, '306638979'),
(1, 1, 'Aula 1', NULL, '286738788'),
(32, 69, 'Aula 5', NULL, NULL),
(33, 71, 'Aula 6', NULL, NULL),
(34, 73, 'Aula 1', NULL, NULL),
(35, 74, 'Aula 2', NULL, NULL),
(36, 76, 'Aula 3', NULL, NULL),
(37, 77, 'Aula 4', NULL, NULL),
(38, 79, 'Aula 5', NULL, NULL),
(39, 80, 'Aula 6', NULL, NULL),
(40, 82, 'Aula 1', NULL, '30110175'),
(41, 84, 'Aula 2', NULL, '158934387'),
(42, 86, 'Aula 3', NULL, '66284812'),
(43, 91, 'Aula 1', 'Fornecer instrumentos teóricos e práticos para a administração parenteral de medicamentos. Desenvolver a destreza no manuseio dos materiais utilizados em cada técnica e subsidiar em conhecimento os cuidados no antes, durante e após a aplicação. Fornecer elementos que facilitem o reconhecimento e a postura correta diante de um possível acidente.', '236211411'),
(44, 92, 'Aula 2', NULL, NULL),
(45, 93, 'Aula 3', NULL, NULL),
(46, 94, 'Aula 4', NULL, NULL),
(47, 95, 'Aula 5', NULL, NULL),
(48, 96, 'Aula 6', NULL, NULL),
(49, 97, 'Aula 7', NULL, NULL),
(50, 98, 'Aula 8', NULL, NULL),
(52, 101, 'Aula de teste', NULL, NULL),
(53, 102, 'Aula teste 2.1', 'Update de aula', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `duvidas`
--
ALTER TABLE `duvidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `questionarios`
--
ALTER TABLE `questionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `duvidas`
--
ALTER TABLE `duvidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `questionarios`
--
ALTER TABLE `questionarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
