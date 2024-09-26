-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/09/2024 às 04:16
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
-- Banco de dados: `sistema_areas_protegidas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `areas_protegidas`
--

CREATE TABLE `areas_protegidas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `tamanho` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `areas_protegidas`
--

INSERT INTO `areas_protegidas` (`id`, `nome`, `localizacao`, `tamanho`) VALUES
(1, 'casa do gouveia', 'dentro do gouveia', 1),
(2, 'Parque Nacional do Iguaçu', 'Paraná', 185),
(3, 'Parque Nacional da Serra da Canastra', 'Minas Gerais', 200),
(4, 'Parque Nacional da Chapada dos Veadeiros', 'Goiás', 655),
(5, 'Parque Nacional da Tijuca', 'Rio de Janeiro', 39),
(6, 'Parque Nacional do Pantanal', 'Mato Grosso do Sul', 1350),
(7, 'Parque Nacional da Serra do Cipó', 'Minas Gerais', 120),
(8, 'Parque Nacional da Serra do Itajaí', 'Santa Catarina', 126),
(9, 'Parque Nacional de Jericoacoara', 'Ceará', 120),
(10, 'Parque Nacional da Lagoa do Peixe', 'Rio Grande do Sul', 34),
(11, 'Parque Nacional de Aparados da Serra', 'Rio Grande do Sul', 30),
(12, 'Reserva Biológica do Tinguá', 'Rio de Janeiro', 27),
(13, 'Parque Nacional da Chapada dos Guimarães', 'Mato Grosso', 330),
(14, 'Parque Nacional da Serra dos Órgãos', 'Rio de Janeiro', 102),
(15, 'Parque Nacional da Serra do Caparaó', 'Minas Gerais', 650),
(16, 'Parque Nacional da Serra do Japi', 'São Paulo', 50),
(17, 'Parque Nacional do Catimbau', 'Pernambuco', 127),
(18, 'Parque Nacional do Monte Roraima', 'Roraima', 1160),
(19, 'Parque Nacional de Anavilhanas', 'Amazonas', 355),
(20, 'Parque Nacional da Ilha Grande', 'Rio de Janeiro', 118),
(21, 'Parque Nacional de Brasília', 'Distrito Federal', 42),
(22, 'Parque Nacional do Vale do Ribeira', 'São Paulo', 188),
(23, 'Parque Nacional de Itatiaia', 'Rio de Janeiro', 300),
(24, 'Parque Nacional de São Joaquim', 'Santa Catarina', 49),
(25, 'Parque Nacional da Serra do Alvo', 'Bahia', 30),
(26, 'Parque Nacional de Boa Nova', 'Bahia', 25),
(27, 'Parque Nacional de Jericoacoara', 'Ceará', 163),
(28, 'Parque Nacional do Iguaçu', 'Paraná', 185),
(29, 'Parque Nacional da Serra da Bodoquena', 'Mato Grosso do Sul', 520),
(30, 'Parque Nacional de Lagoa do Peixe', 'Rio Grande do Sul', 52),
(31, 'Parque Nacional da Serra do Barata', 'São Paulo', 45),
(32, 'Parque Nacional do Caparaó', 'Minas Gerais', 400),
(33, 'Parque Nacional de Superagüi', 'Paraná', 140),
(34, 'Parque Nacional do Monte Roraima', 'Roraima', 1400),
(35, 'Parque Nacional da Ilha do Cardoso', 'São Paulo', 80),
(36, 'Parque Nacional de Jericoacoara', 'Ceará', 167),
(37, 'Parque Nacional da Chapada dos Guimarães', 'Mato Grosso', 332),
(38, 'Parque Nacional da Serra do Cipó', 'Minas Gerais', 260),
(39, 'Parque Nacional do Viruá', 'Roraima', 101),
(40, 'Parque Nacional da Serra do Espinhaço', 'Minas Gerais', 300),
(41, 'Parque Nacional do Jalapão', 'Tocantins', 1500),
(42, 'Parque Nacional de Monte Verde', 'Minas Gerais', 80),
(43, 'Parque Nacional de Chapada das Mesas', 'Maranhão', 110),
(44, 'Parque Nacional de Jericoacoara', 'Ceará', 158),
(45, 'Parque Nacional da Tijuca', 'Rio de Janeiro', 39),
(46, 'Parque Nacional do Pantanal Matogrossense', 'Mato Grosso', 1350),
(47, 'Parque Nacional da Serra do Canastra', 'Minas Gerais', 200),
(48, 'Parque Nacional de Aparados da Serra', 'Rio Grande do Sul', 30),
(49, 'Parque Nacional de São Joaquim', 'Santa Catarina', 49),
(50, 'Parque Nacional de Itatiaia', 'Rio de Janeiro', 300),
(51, 'Parque Nacional da Serra da Bodoquena', 'Mato Grosso do Sul', 520),
(52, 'Parque Nacional de Superagüi', 'Paraná', 140),
(53, 'Parque Nacional da Serra da Canastra', 'Minas Gerais', 200),
(54, 'Parque Nacional do Caparaó', 'Minas Gerais', 400),
(55, 'Parque Nacional de Lagoa do Peixe', 'Rio Grande do Sul', 52),
(56, 'Parque Nacional da Chapada dos Guimarães', 'Mato Grosso', 332),
(57, 'Parque Nacional de Brasília', 'Distrito Federal', 42),
(58, 'Parque Nacional do Iguaçu', 'Paraná', 185);

-- --------------------------------------------------------

--
-- Estrutura para tabela `especies_monitoradas`
--

CREATE TABLE `especies_monitoradas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `especies_monitoradas`
--

INSERT INTO `especies_monitoradas` (`id`, `nome`, `status`) VALUES
(1, 'Onça-pintada', 'Vulnerável'),
(2, 'Arara-azul', 'Em perigo'),
(3, 'Tamanduá-bandeira', 'Quase ameaçado'),
(4, 'Mico-leão-dourado', 'Em perigo crítico'),
(5, 'Tatu-bola', 'Vulnerável'),
(6, 'Capivara', 'Menos preocupante'),
(7, 'Saguí', 'Menos preocupante'),
(8, 'Jaguarundi', 'Menos preocupante'),
(9, 'Lobo-guará', 'Vulnerável'),
(10, 'Tamanduá-mirim', 'Menos preocupante'),
(11, 'Gouveia', 'Pelado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relatorios`
--

CREATE TABLE `relatorios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `relatorios`
--

INSERT INTO `relatorios` (`id`, `nome`, `data`, `descricao`) VALUES
(1, 'Relatório de Biodiversidade', '2024-01-01', 'Este relatório analisa a biodiversidade da área protegida.'),
(2, 'Relatório de Uso Sustentável', '2024-01-05', 'Avaliação do uso sustentável dos recursos naturais.'),
(3, 'Relatório de Flora e Fauna', '2024-01-10', 'Registro das espécies de flora e fauna presentes.'),
(4, 'Relatório de Monitoramento', '2024-01-15', 'Monitoramento das atividades na área protegida.'),
(5, 'Relatório de Educação Ambiental', '2024-01-20', 'Atividades realizadas em educação ambiental.'),
(6, 'Relatório de Visitas', '2024-01-25', 'Número de visitantes na área protegida.'),
(7, 'Relatório de Conservação', '2024-02-01', 'Ações de conservação realizadas no ano.'),
(8, 'Relatório de Segurança', '2024-02-05', 'Situação de segurança na área protegida.'),
(9, 'Relatório de Pesquisa Científica', '2024-02-10', 'Pesquisas realizadas na área e seus resultados.'),
(10, 'Relatório de Impactos Ambientais', '2024-02-15', 'Análise de impactos ambientais na região.'),
(11, 'Relatório de Flora', '2024-02-20', 'Estudo das espécies vegetais.'),
(12, 'Relatório de Fauna', '2024-02-25', 'Estudo das espécies animais.'),
(13, 'Relatório de Poluição', '2024-03-01', 'Análise dos níveis de poluição.'),
(14, 'Relatório de Recursos Hídricos', '2024-03-05', 'Estudo sobre os recursos hídricos da região.'),
(15, 'Relatório de Clima', '2024-03-10', 'Análise das condições climáticas.'),
(16, 'Relatório de Desmatamento', '2024-03-15', 'Monitoramento do desmatamento na área.'),
(17, 'Relatório de Reflorestamento', '2024-03-20', 'Ações de reflorestamento realizadas.'),
(18, 'Relatório de Saneamento', '2024-03-25', 'Condições de saneamento na área protegida.'),
(19, 'Relatório de Infraestrutura', '2024-04-01', 'Condições da infraestrutura existente.'),
(20, 'Relatório de Turismo Sustentável', '2024-04-05', 'Avaliação do turismo sustentável na região.'),
(21, 'Relatório de Envolvimento Comunitário', '2024-04-10', 'Atividades com a comunidade local.'),
(22, 'Relatório de Reciclagem', '2024-04-15', 'Programas de reciclagem implementados.'),
(23, 'Relatório de Financiamento', '2024-04-20', 'Fontes de financiamento e despesas.'),
(24, 'Relatório de Parcerias', '2024-04-25', 'Parcerias estabelecidas para conservação.'),
(25, 'Relatório de Inventário', '2024-05-01', 'Inventário de espécies e habitats.'),
(26, 'Relatório de Eventos', '2024-05-05', 'Eventos realizados na área protegida.'),
(27, 'Relatório de Análise de Dados', '2024-05-10', 'Análise de dados coletados durante o ano.'),
(28, 'Relatório de Atividades de Pesquisa', '2024-05-15', 'Atividades de pesquisa realizadas.'),
(29, 'Relatório de Gestão de Resíduos', '2024-05-20', 'Gestão de resíduos na área.'),
(30, 'Relatório de Invasões', '2024-05-25', 'Monitoramento de invasões na área.'),
(31, 'Relatório de Estágio de Crescimento', '2024-06-01', 'Estágios de crescimento das plantas.'),
(32, 'Relatório de Ameaças', '2024-06-05', 'Análise das ameaças à biodiversidade.'),
(33, 'Relatório de Ecoturismo', '2024-06-10', 'Avaliação do ecoturismo na região.'),
(34, 'Relatório de Combate ao Fogo', '2024-06-15', 'Ações de combate a incêndios florestais.'),
(35, 'Relatório de Risco de Extinção', '2024-06-20', 'Espécies em risco de extinção.'),
(36, 'Relatório de Conflitos de Uso', '2024-06-25', 'Conflitos de uso da terra na região.'),
(37, 'Relatório de Biodiversidade Marinha', '2024-07-01', 'Estudos sobre a biodiversidade marinha.'),
(38, 'Relatório de Políticas Públicas', '2024-07-05', 'Análise das políticas públicas ambientais.'),
(39, 'Relatório de Mapeamento', '2024-07-10', 'Mapeamento das áreas protegidas.'),
(40, 'Relatório de Padrões de Uso', '2024-07-15', 'Padrões de uso dos recursos naturais.'),
(41, 'Relatório de Segurança Alimentar', '2024-07-20', 'Avaliação da segurança alimentar na área.'),
(42, 'Relatório de Ensaio de Solo', '2024-07-25', 'Análises de solo realizadas.'),
(43, 'Relatório de Quadro de Pessoal', '2024-08-01', 'Informações sobre o quadro de pessoal.'),
(44, 'Relatório de Treinamento', '2024-08-05', 'Treinamentos realizados com a equipe.'),
(45, 'Relatório de Melhoria de Processos', '2024-08-10', 'Ações de melhoria de processos.'),
(46, 'Relatório de Avaliação de Impacto', '2024-08-15', 'Avaliação de impacto das atividades.'),
(47, 'Relatório de Capacitação', '2024-08-20', 'Capacitações realizadas com a comunidade.'),
(48, 'Relatório de Ações de Educação', '2024-08-25', 'Ações de educação ambiental.'),
(49, 'Relatório de Dados Climáticos', '2024-09-01', 'Dados climáticos coletados.'),
(50, 'Relatório de Resultados de Pesquisas', '2024-09-05', 'Resultados das pesquisas realizadas.'),
(51, 'Relatório de Situação da Fauna', '2024-09-10', 'Situação atual das espécies animais.'),
(52, 'Relatório de Avaliação de Flora', '2024-09-15', 'Avaliação das espécies vegetais.'),
(53, 'Relatório de Sustentabilidade', '2024-09-20', 'Análise da sustentabilidade das práticas.'),
(54, 'Relatório de Educação para a Sustentabilidade', '2024-09-25', 'Programas de educação para a sustentabilidade.'),
(55, 'Relatório de Uso de Recursos Naturais', '2024-10-01', 'Uso dos recursos naturais na região.'),
(56, 'Relatório de Gestão de Área Protegida', '2024-10-05', 'Gestão e manutenção da área protegida.'),
(57, 'Relatório de Programas de Conservação', '2024-10-10', 'Programas de conservação em andamento.'),
(58, 'Relatório de Monitoramento de Espécies', '2024-10-15', 'Monitoramento de espécies em risco.'),
(59, 'Relatório de Interação com a Comunidade', '2024-10-20', 'Interações com a comunidade local.'),
(60, 'Relatório de Ações de Reflorestamento', '2024-10-25', 'Ações de reflorestamento e recuperação.'),
(61, 'Relatório de Conservação de Água', '2024-11-01', 'Ações de conservação de água.'),
(62, 'Relatório de Qualidade do Solo', '2024-11-05', 'Análise da qualidade do solo.'),
(63, 'Relatório de Parcerias com ONGs', '2024-11-10', 'Parcerias estabelecidas com ONGs.'),
(64, 'Relatório de Planejamento Estratégico', '2024-11-15', 'Planejamento estratégico para o ano seguinte.'),
(65, 'Relatório de Investimentos em Conservação', '2024-11-20', 'Investimentos realizados em conservação.'),
(66, 'Relatório de Comunicação e Divulgação', '2024-11-25', 'Ações de comunicação e divulgação.'),
(67, 'Relatório de Estudos Ecológicos', '2024-12-01', 'Estudos ecológicos realizados na área.'),
(68, 'Relatório de Propostas de Projetos', '2024-12-05', 'Propostas de novos projetos de conservação.'),
(69, 'Relatório de Avaliação de Desempenho', '2024-12-10', 'Avaliação de desempenho das atividades realizadas.'),
(70, 'Relatório de Limpeza e Manutenção', '2024-12-15', 'Ações de limpeza e manutenção da área.'),
(71, 'Relatório de Monitoramento de Recursos', '2024-12-20', 'Monitoramento de recursos hídricos e vegetais.'),
(72, 'Relatório de Mapeamento de Habitats', '2024-12-25', 'Mapeamento dos habitats presentes na área.'),
(73, 'Relatório de Acompanhamento de Projetos', '2024-12-30', 'Acompanhamento dos projetos em andamento.'),
(74, 'Relatório de Análise de Dados Ambientais', '2024-01-01', 'Análise de dados coletados sobre a qualidade ambiental.'),
(75, 'Relatório de Projetos em Andamento', '2024-01-02', 'Relatório dos projetos em andamento na área protegida.'),
(76, 'Relatório de Educação para a Conservação', '2024-01-03', 'Atividades educativas focadas na conservação da natureza.'),
(77, 'Relatório de Práticas de Sustentabilidade', '2024-01-04', 'Práticas sustentáveis implementadas na área protegida.'),
(78, 'Relatório de Conflitos Ambientais', '2024-01-05', 'Análise de conflitos ambientais na região.'),
(79, 'Relatório de Inventário Florestal', '2024-01-06', 'Inventário das espécies florestais presentes.'),
(80, 'Relatório de Uso do Solo', '2024-01-07', 'Análise do uso do solo na área protegida.'),
(81, 'Relatório de Vigilância Ambiental', '2024-01-08', 'Atividades de vigilância ambiental na área.'),
(82, 'Relatório de Monitoramento de Espécies Ameaçadas', '2024-01-09', 'Monitoramento das espécies ameaçadas de extinção.'),
(83, 'Relatório de Gestão de Biodiversidade', '2024-01-10', 'Estratégias de gestão da biodiversidade local.'),
(84, 'Relatório de Diagnóstico Ambiental', '2024-01-11', 'Diagnóstico da situação ambiental da área.'),
(85, 'Relatório de Parcerias Governamentais', '2024-01-12', 'Parcerias com o governo para conservação.'),
(86, 'Relatório de Projetos Educativos', '2024-01-13', 'Projetos educativos desenvolvidos na região.'),
(87, 'Relatório de Análise de Risco', '2024-01-14', 'Análise de risco de incêndios e desmatamentos.'),
(88, 'Relatório de Ações de Preservação', '2024-01-15', 'Ações de preservação ambiental realizadas.'),
(89, 'Relatório de Uso de Recursos Naturais', '2024-01-16', 'Uso sustentável de recursos naturais na região.'),
(90, 'Relatório de Impactos das Mudanças Climáticas', '2024-01-17', 'Impactos das mudanças climáticas na biodiversidade.'),
(91, 'Relatório de Estratégias de Conservação', '2024-01-18', 'Estratégias de conservação implementadas.'),
(92, 'Relatório de Acompanhamento de Atividades', '2024-01-19', 'Acompanhamento das atividades na área protegida.'),
(93, 'Relatório de Dados de Monitoramento', '2024-01-20', 'Dados coletados durante o monitoramento.'),
(94, 'Relatório de Educação Ambiental para Crianças', '2024-01-21', 'Programas educativos voltados para crianças.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`) VALUES
(1, 'pedro', '123'),
(2, 'vinicius', '321'),
(3, 'joaosilva', 'senha123'),
(4, 'mariaoliveira', 'senha456'),
(5, 'pedroalmeida', 'senha789'),
(6, 'luanasilva', 'senha101'),
(7, 'andreapereira', 'senha202'),
(8, 'josecosta', 'senha303'),
(9, 'carolmarques', 'senha404'),
(10, 'ricardosantos', 'senha505'),
(11, 'lauracardoso', 'senha606'),
(12, 'pauloribeiro', 'senha707'),
(13, 'dianefreitas', 'senha808'),
(14, 'marcelomartins', 'senha909'),
(15, 'fernandofreitas', 'senha1010'),
(16, 'isabelaraujo', 'senha1111'),
(17, 'lucasjesus', 'senha1212'),
(18, 'tatianamoreira', 'senha1313'),
(19, 'viniciusrocha', 'senha1414'),
(20, 'gabrielemesquita', 'senha1515'),
(21, 'sarahsantos', 'senha1616'),
(22, 'rodrigodias', 'senha1717'),
(23, 'amandasantos', 'senha1818'),
(24, 'carolinemartins', 'senha1919'),
(25, 'robertoassis', 'senha2020'),
(26, 'marianamarques', 'senha2121'),
(27, 'luisfernando', 'senha2222'),
(28, 'andreanogueira', 'senha2323'),
(29, 'carolbraga', 'senha2424'),
(30, 'carloslima', 'senha2525'),
(31, 'marciaesilva', 'senha2626'),
(32, 'renatoborges', 'senha2727'),
(33, 'lilianefreitas', 'senha2828'),
(34, 'brunomartins', 'senha2929'),
(35, 'claudiaribeiro', 'senha3030'),
(36, 'rodrigomello', 'senha3131'),
(37, 'luciamartins', 'senha3232'),
(38, 'monicalemos', 'senha3333'),
(39, 'felipeoliveira', 'senha3434'),
(40, 'isabelsilva', 'senha3535'),
(41, 'eduardocunha', 'senha3636'),
(42, 'marianagomes', 'senha3737'),
(43, 'rafaelsouza', 'senha3838'),
(44, 'juliabrito', 'senha3939'),
(45, 'augustomiranda', 'senha4040'),
(46, 'alanysantos', 'senha4141'),
(47, 'andreabrito', 'senha4242'),
(48, 'renatacardoso', 'senha4343'),
(49, 'guilhermesouza', 'senha4444'),
(50, 'camilacosta', 'senha4545'),
(51, 'anapereira', 'senha4646'),
(52, 'marceloalves', 'senha4747'),
(53, 'katiaoliveira', 'senha4848'),
(54, 'robertoferreira', 'senha4949'),
(55, 'priscilamarques', 'senha5050'),
(56, 'mariaribeiro', 'senha5151'),
(57, 'thiagomartins', 'senha5252'),
(58, 'victoriacardoso', 'senha5353'),
(59, 'fabiolacosta', 'senha5454'),
(60, 'carlaalmeida', 'senha5555'),
(61, 'raimundobarbosa', 'senha5656'),
(62, 'linamarques', 'senha5757'),
(63, 'beneditojesus', 'senha5858'),
(64, 'carolinesouza', 'senha5959'),
(65, 'tatiarodrigues', 'senha6060'),
(66, 'leandrolima', 'senha6161'),
(67, 'vitorfarias', 'senha6262'),
(68, 'andreaisrael', 'senha6363'),
(69, 'reinaldoalves', 'senha6464'),
(70, 'fabiogomes', 'senha6565'),
(71, 'elenalima', 'senha6666'),
(72, 'rafinhasouza', 'senha6767'),
(73, 'juliobritto', 'senha6868'),
(74, 'andreanascimento', 'senha6969'),
(75, 'renatocunha', 'senha7070'),
(76, 'lucianabarreto', 'senha7171'),
(77, 'marciojardim', 'senha7272'),
(78, 'guisilva', 'senha7373'),
(79, 'ricardobarbosa', 'senha7474'),
(80, 'marceloramos', 'senha7575'),
(81, 'filipepaiva', 'senha7676'),
(82, 'jeanperes', 'senha7777'),
(83, 'elizabethsantos', 'senha7878'),
(84, 'renanpinto', 'senha7979'),
(85, 'karennacosta', 'senha8080'),
(86, 'fernandoribeiro', 'senha8181'),
(87, 'alineribeiro', 'senha8282'),
(88, 'rosangelalima', 'senha8383'),
(89, 'patriciaferreira', 'senha8484'),
(90, 'renatonogueira', 'senha8585'),
(91, 'camilaalmeida', 'senha8686'),
(92, 'mariolucas', 'senha8787'),
(93, 'vagnerlima', 'senha8888'),
(94, 'sueliantes', 'senha8989'),
(95, 'robertoalves', 'senha9090'),
(96, 'flaviamelo', 'senha9191'),
(97, 'robertopereira', 'senha9292'),
(98, 'leticiarocha', 'senha9393'),
(99, 'marcelorodrigues', 'senha9494'),
(100, 'lucasgomes', 'senha9595'),
(101, 'andreasilva', 'senha9696'),
(102, 'georgeoliveira', 'senha9797'),
(103, 'giselamarques', 'senha9898'),
(104, 'valquiriasouza', 'senha9999'),
(105, 'marciafarias', 'senha10000'),
(106, 'nelsoncardoso', 'senha10001'),
(107, 'juliobarbosa', 'senha10002'),
(108, 'viviangomes', 'senha10003'),
(109, 'denisepires', 'senha10004'),
(110, 'sandramarques', 'senha10005'),
(111, 'anasilva', 'senha10006'),
(112, 'agustinonogueira', 'senha10007'),
(113, 'melissarodrigues', 'senha10008'),
(114, 'mauriciopereira', 'senha10009'),
(115, 'taislopes', 'senha10010'),
(116, 'karolainesilva', 'senha10011'),
(117, 'antoniosouza', 'senha10012'),
(118, 'jaquelinejesus', 'senha10013'),
(119, 'marilucefreitas', 'senha10014'),
(120, 'guilhermereis', 'senha10015'),
(121, 'adrianaramos', 'senha10016'),
(122, 'odetealves', 'senha10017'),
(123, 'antoniomiranda', 'senha10018'),
(124, 'danielemartins', 'senha10019'),
(125, 'andreasilv', 'senha10020'),
(126, 'luizamarques', 'senha10021'),
(127, 'tiagoalmeida', 'senha10022'),
(128, 'laurabrito', 'senha10023'),
(129, 'renatoinacio', 'senha10024'),
(130, 'maikazain', 'senha10025'),
(131, 'joaovictor', 'senha10026'),
(132, 'lilianeferreira', 'senha10027'),
(133, 'joaopedro', 'senha10028'),
(134, 'kelvinsouza', 'senha10029'),
(135, 'juliaborgs', 'senha10030'),
(136, 'felipealves', 'senha10031'),
(137, 'ellenlopes', 'senha10032'),
(138, 'mairajardim', 'senha10033'),
(139, 'guilhermeesilva', 'senha10034'),
(140, 'renataborges', 'senha10035'),
(141, 'robertoaraujo', 'senha10036'),
(142, 'luandasilva', 'senha10037'),
(143, 'marcelofreitas', 'senha10038'),
(144, 'jeronimoalves', 'senha10039'),
(145, 'robertoferreira', 'senha10040'),
(146, 'carolinalucas', 'senha10041'),
(147, 'mariaramos', 'senha10042'),
(148, 'sergiocosta', 'senha10043'),
(149, 'micheleribeiro', 'senha10044'),
(150, 'fabiomartins', 'senha10045'),
(151, 'mariojesus', 'senha10046'),
(152, 'paulamesquita', 'senha10047'),
(153, 'andreialmeida', 'senha10048'),
(154, 'leticiadantas', 'senha10049'),
(155, 'adrianonunes', 'senha10050'),
(156, 'romulomendes', 'senha10051'),
(157, 'dorianorodrigues', 'senha10052'),
(158, 'kelvinsantos', 'senha10053'),
(159, 'marcilioalves', 'senha10054'),
(160, 'marisouza', 'senha10055'),
(161, 'franciscoalmeida', 'senha10056'),
(162, 'michellamarques', 'senha10057'),
(163, 'daviagostinho', 'senha10058'),
(164, 'tayanearaujo', 'senha10059'),
(165, 'gleisongomes', 'senha10060'),
(166, 'hugolopes', 'senha10061'),
(167, 'renatajesus', 'senha10062'),
(168, 'sueliabrantes', 'senha10063'),
(169, 'clararamos', 'senha10064'),
(170, 'karolcosta', 'senha10065'),
(171, 'robertojesus', 'senha10066'),
(172, 'karolribeiro', 'senha10067'),
(173, 'isabelcruz', 'senha10068'),
(174, 'williamlima', 'senha10069'),
(175, 'marceloalmeida', 'senha10070'),
(176, 'ivanilduarte', 'senha10071'),
(177, 'andreaborges', 'senha10072'),
(178, 'martinslucas', 'senha10073'),
(179, 'alinemelo', 'senha10074'),
(180, 'ronaldoalves', 'senha10075'),
(181, 'josepedro', 'senha10076'),
(182, 'florencesilva', 'senha10077'),
(183, 'leonardomartins', 'senha10078'),
(184, 'felipemelo', 'senha10079'),
(185, 'viniciusrodrigues', 'senha10080'),
(186, 'renatacardoso', 'senha10081'),
(187, 'edvaldoalves', 'senha10082'),
(188, 'gleiciana', 'senha10083'),
(189, 'valdirrodrigues', 'senha10084'),
(190, 'marceloagostinho', 'senha10085'),
(191, 'carlaesilva', 'senha10086'),
(192, 'ronaldosantos', 'senha10087'),
(193, 'patriciaribeiro', 'senha10088'),
(194, 'marcosnunes', 'senha10089'),
(195, 'alvinsouza', 'senha10090'),
(196, 'veronicarodrigues', 'senha10091'),
(197, 'joaoneto', 'senha10092'),
(198, 'katialucas', 'senha10093'),
(199, 'mirellasalomao', 'senha10094'),
(200, 'antoniomiguel', 'senha10095'),
(201, 'edgargomes', 'senha10096'),
(202, 'leticianunes', 'senha10097'),
(203, 'marianomedeiros', 'senha10098'),
(204, 'rihannacosta', 'senha10099'),
(205, 'margarethcorrea', 'senha10100'),
(206, 'francinaldo', 'senha10101'),
(207, 'lorrainemartins', 'senha10102'),
(208, 'nicolasgomes', 'senha10103'),
(209, 'mariarita', 'senha10104'),
(210, 'joseferreira', 'senha10105'),
(211, 'lucianamarques', 'senha10106'),
(212, 'andreascardoso', 'senha10107'),
(213, 'maiconjesus', 'senha10108'),
(214, 'raimundomedeiros', 'senha10109'),
(215, 'ivanovictor', 'senha10110'),
(216, 'flavioduarte', 'senha10111'),
(217, 'claudiomorais', 'senha10112'),
(218, 'ivanlopes', 'senha10113'),
(219, 'evangelinapaiva', 'senha10114'),
(220, 'marcelofranco', 'senha10115'),
(221, 'adrianosouza', 'senha10116'),
(222, 'karinacoelho', 'senha10117'),
(223, 'luizjose', 'senha10118'),
(224, 'marcelohenrique', 'senha10119'),
(225, 'stephanylima', 'senha10120');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `areas_protegidas`
--
ALTER TABLE `areas_protegidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `especies_monitoradas`
--
ALTER TABLE `especies_monitoradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relatorios`
--
ALTER TABLE `relatorios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areas_protegidas`
--
ALTER TABLE `areas_protegidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `especies_monitoradas`
--
ALTER TABLE `especies_monitoradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `relatorios`
--
ALTER TABLE `relatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
