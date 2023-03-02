CREATE SCHEMA `alunos`;

CREATE SCHEMA `curso`;

CREATE SCHEMA `turmas`;

CREATE SCHEMA `disciplina`;

CREATE SCHEMA `instrutores`;

CREATE TABLE `alunos`.`resilia` (
  `id` int,
  `nome` varchar(200),
  `data_nasc` date,
  `genero` ENUM,
  `cpf` varchar(11),
  `matricula` varchar(255),
  `admin_id` int,
  PRIMARY KEY (`id`, `nome`)
);

CREATE TABLE `curso`.`programadores` (
  `id` int PRIMARY KEY,
  `disciplina` varchar(200),
  `tempo` varchar(255),
  `matricula` varchar(255)
);

CREATE TABLE `turmas`.`programadores` (
  `id` int PRIMARY KEY,
  `salas` varchar(255),
  `data_inicio` datetime,
  `data_termino` datetime
);

CREATE TABLE `disciplina`.`programadores` (
  `id` int PRIMARY KEY,
  `materia` varchar(200),
  `duracao` datetime,
  `instrutor` ENUM
);

CREATE TABLE `instrutores`.`programadores` (
  `nome` varchar(200),
  `cpf` varchar(11),
  `genero` ENUM,
  `materia` varchar(200)
);

ALTER TABLE `alunos`.`resilia` ADD FOREIGN KEY (`matricula`) REFERENCES `curso`.`programadores` (`disciplina`);

ALTER TABLE `alunos`.`resilia` ADD FOREIGN KEY (`matricula`) REFERENCES `turmas`.`programadores` (`salas`);

ALTER TABLE `curso`.`programadores` ADD FOREIGN KEY (`matricula`) REFERENCES `turmas`.`programadores` (`salas`);

ALTER TABLE `curso`.`programadores` ADD FOREIGN KEY (`disciplina`) REFERENCES `disciplina`.`programadores` (`materia`);

ALTER TABLE `instrutores`.`programadores` ADD FOREIGN KEY (`materia`) REFERENCES `disciplina`.`programadores` (`instrutor`);

ALTER TABLE `instrutores`.`programadores` ADD FOREIGN KEY (`nome`) REFERENCES `turmas`.`programadores` (`salas`);
