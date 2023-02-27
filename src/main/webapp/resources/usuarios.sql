CREATE TABLE IF NOT EXISTS usuarios (
  id int(10) NOT NULL AUTO_INCREMENT,
  nome varchar(100) CHARACTER SET latin1 NOT NULL,
  sexo varchar(100) CHARACTER SET latin1 NOT NULL,
  dtNascimento varchar(100) CHARACTER SET latin1 NOT NULL,
  cargo varchar(100) CHARACTER SET latin1 NOT NULL,
  lotacao varchar(100) CHARACTER SET latin1 NOT NULL,
  email varchar(100) CHARACTER SET latin1 NOT NULL,
  telefone varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
