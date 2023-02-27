--
-- Database: `sisrh`
--
CREATE DATABASE IF NOT EXISTS `sisrh` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sisrh`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sexo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `dtNascimento` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cargo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lotacao` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `telefone` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;