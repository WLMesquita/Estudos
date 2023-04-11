CREATE TABLE Alunos
(
	id_aluno int PRIMARY KEY NOT NULL,
	nome varchar(200) NOT NULL,
	data_nascimento date NOT NULL,
	sexto varchar(1) NOT NULL, --M para Masculino ou F para Fermino
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

CREATE TABLE Situacao
(
	id_sutuacao int PRIMARY KEY NOT NULL,
	situacao varchar (25) NOT NULL,
	data_cadastro datetime,
	login_cadastro varchar (15)
);

CREATE TABLE Cursos
(
	id_curso int PRIMARY KEY NOT NULL,
	nome_curso varchar(200) NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro VARCHAR (15) NOT NULL,
	);

CREATE TABLE Turmas
(
	id_turma INT PRIMARY KEY NOT NULL,
	id_aluno INT NOT NULL,
	id_curso INT NOT NULL,
	valor_turma NUMERIC(15,2) NOT NULL,
	desconto NUMERIC(3,2)NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE,
	data_cadastro DATETIME NOT NULL,
	login_cadastro VARCHAR(15)
);

CREATE TABLE Registro_Presenca
(
	id_turmas INT NOT NULL,
	id_aluno INT NOT NULL,
	id_situacao INT NOT NULL,
	data_presenca DATE NOT NULL,
	data_cadastro DATE NOT NULL,
	login_cadastro VARCHAR(15) NOT NULL
);