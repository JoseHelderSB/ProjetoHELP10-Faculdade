-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2021 às 00:29
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `help10`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cod_cliente`, `nome`, `cpf`, `nascimento`, `sexo`) VALUES
(1, 'Cátia Vargas', '325.6985.987-1', '1998-06-12', 'F'),
(2, 'Dalila Caldas', '874-852-965-35', '1989-08-10', 'F'),
(3, 'Marcio Silva', '128.984.332-02', '1991-07-29', 'M'),
(4, 'Romulo Paiva', '111.368.874-52', '2001-05-03', 'M'),
(5, 'Rogério Firmino', '325.664.328-20', '1990-07-13', 'M'),
(6, 'Thiago Magalhães', '333.365.281-85', '1982-03-11', 'M'),
(7, 'Rute Pereira', '136.365.284-01', '1989-08-10', 'F'),
(8, 'Sofia Souza Silva', '002.287.312-85', '2020-05-30', 'F'),
(9, 'Carol Cruz', '555.985.668-20', '1992-07-23', 'F'),
(10, 'Kevin Arruda', '259-874-984-00', '1993-02-07', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos_clientes`
--

CREATE TABLE `contatos_clientes` (
  `telefone` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `cod_cliente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos_profissionais`
--

CREATE TABLE `contatos_profissionais` (
  `telefone` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `cod_profissional` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_clientes`
--

CREATE TABLE `endereco_clientes` (
  `cod_cliente` int(10) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_profissionais`
--

CREATE TABLE `endereco_profissionais` (
  `cod_profissional` int(10) NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco_profissionais`
--

INSERT INTO `endereco_profissionais` (`cod_profissional`, `rua`, `numero`, `cep`, `bairro`, `cidade`, `uf`) VALUES
(1, 'Rua 07 de Setembro', 25, 50352225, 'Boa Vista', 'Recife', 'PE'),
(2, 'Rua Machado de Assis', 132, 52035998, 'Boa Viagem', 'Recife', 'PE'),
(3, 'Avenida Jardim São Paulo', 145, 52698441, 'Jardim São Paulo', 'Recife', 'PE'),
(4, 'Rua Pedro Alvares de Cabral', 144, 52652444, 'Centro do Recife', 'Recife', 'PE'),
(5, 'Rua Debora Fonseca', 57, 52697800, 'Graças', 'Recife', 'PE'),
(6, 'Rua Manoel Carlos', 398, 52364777, 'Pina', 'Recife', 'PE'),
(7, 'Rua Antonieta Oliveira', 214, 52147880, 'Piedade', 'Jaboatão dos Guararapes', 'PE'),
(8, 'Rua Padre Carapuceiro', 58, 55214000, 'Boa Viagem', 'Recife', 'PE'),
(9, 'Rua Capitão Carvalho', 85, 52487000, 'Jardim Brasil', 'Olinda', 'PE'),
(10, 'Rua 22 de Junho', 13, 55698001, 'Aldeia', 'Camaragibe', 'PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `cod_pag` int(5) NOT NULL,
  `data_pag` date NOT NULL,
  `cod_profissional` int(10) NOT NULL,
  `cod_plano` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`cod_pag`, `data_pag`, `cod_profissional`, `cod_plano`) VALUES
(1, '2015-08-21', 1, 3),
(2, '2020-02-23', 3, 1),
(3, '2017-03-15', 5, 2),
(4, '2015-06-25', 2, 3),
(5, '2017-05-08', 1, 3),
(6, '2016-08-22', 9, 2),
(7, '2017-06-10', 9, 1),
(8, '2018-04-07', 3, 3),
(9, '2018-03-17', 7, 1),
(10, '2019-07-05', 10, 1),
(11, '2015-03-21', 4, 2),
(12, '2020-02-01', 3, 3),
(13, '2020-12-10', 5, 3),
(14, '2017-02-16', 8, 2),
(15, '2020-05-05', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano_de_pagamento`
--

CREATE TABLE `plano_de_pagamento` (
  `cod_plano` int(1) NOT NULL,
  `descricao` varchar(60) NOT NULL,
  `valor` double(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plano_de_pagamento`
--

INSERT INTO `plano_de_pagamento` (`cod_plano`, `descricao`, `valor`) VALUES
(1, 'mensal', 30),
(2, 'semestral', 120),
(3, 'anual', 180);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissionais`
--

CREATE TABLE `profissionais` (
  `cod_profissional` int(10) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `cod_servico` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `profissionais`
--

INSERT INTO `profissionais` (`cod_profissional`, `nome`, `cpf`, `nascimento`, `sexo`, `cod_servico`) VALUES
(1, 'Ernesto Gomes', '125.587.984-85', '1975-02-15', 'M', 2),
(2, 'Ana Luiza Dantas', '128.699.998-96', '1991-08-21', 'F', 3),
(3, 'Marcos André Cunha', '684.325.874-87', '1985-02-14', 'F', 1),
(4, 'Diogo Romero', '123.432.564-19', '1992-09-23', 'M', 4),
(5, 'Osvaldo Nascimento', '784.985.321-65', '1975-08-16', 'M', 5),
(6, 'Vitória Leal', '145.654.984-85', '1989-05-06', 'F', 1),
(7, 'Marta Oliveira', '462.987.123-19', '1980-04-03', 'F', 2),
(8, 'Antônio Guimarães', '154.321.456-18', '1973-06-03', 'M', 3),
(9, 'Apolo Henrique Silva', '176.342.198-09', '2000-10-16', 'M', 4),
(10, 'João Marcelo Lira', '268.984.324-96', '1995-06-23', 'M', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `cod_servico` int(10) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`cod_servico`, `nome`, `descricao`) VALUES
(1, 'Instação de ar-condicionado', 'O profissional instala ar-condicionado do tipo janela ou spl'),
(2, 'Instalação de TV na parede', 'O profissional suspende a TV em suportes para parede'),
(3, 'Pintura de paredes', 'O profissinal pinta paredes do ambiente'),
(4, 'Encanamento', 'O profissional realiza serviços de encanamento'),
(5, 'Jardinagem', 'O profissional execute serviços de jardinagem');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices para tabela `contatos_clientes`
--
ALTER TABLE `contatos_clientes`
  ADD KEY `cod_cliente_fk` (`cod_cliente`);

--
-- Índices para tabela `contatos_profissionais`
--
ALTER TABLE `contatos_profissionais`
  ADD KEY `cod_profissional_fk` (`cod_profissional`);

--
-- Índices para tabela `endereco_clientes`
--
ALTER TABLE `endereco_clientes`
  ADD KEY `cod_cliente_fk` (`cod_cliente`);

--
-- Índices para tabela `endereco_profissionais`
--
ALTER TABLE `endereco_profissionais`
  ADD PRIMARY KEY (`cod_profissional`),
  ADD KEY `cod_profissional_fk` (`cod_profissional`);

--
-- Índices para tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`cod_pag`),
  ADD KEY `cod_profissional_fk` (`cod_profissional`);

--
-- Índices para tabela `plano_de_pagamento`
--
ALTER TABLE `plano_de_pagamento`
  ADD PRIMARY KEY (`cod_plano`);

--
-- Índices para tabela `profissionais`
--
ALTER TABLE `profissionais`
  ADD PRIMARY KEY (`cod_profissional`) USING BTREE,
  ADD KEY `cod_servico_fk` (`cod_servico`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`cod_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cod_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco_profissionais`
--
ALTER TABLE `endereco_profissionais`
  MODIFY `cod_profissional` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `cod_pag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `plano_de_pagamento`
--
ALTER TABLE `plano_de_pagamento`
  MODIFY `cod_plano` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `profissionais`
--
ALTER TABLE `profissionais`
  MODIFY `cod_profissional` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `cod_servico` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
