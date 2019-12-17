drop schema IF EXISTS exercicis_algebra;

create schema if not exists exercicis_algebra;

use exercicis_algebra;

create table IF NOT EXISTS CLIENTS (
Numero int AUTO_INCREMENT,
Nom varchar(50) NOT NULL,
Adressa varchar(50),
Telefon varchar(12),
Poblacio varchar(30),
PRIMARY KEY (Numero)
);

create table IF NOT EXISTS PRODUCTE (
Codi int AUTO_INCREMENT,
Descripcio varchar(100),
Preu REAL,
PRIMARY KEY (Codi)
);

create table IF NOT EXISTS VENDA (
Id_Venda int AUTO_INCREMENT,
Num_client int NOT NULL,
Quantitat int,
Codi_Producte int,
PRIMARY KEY (Id_Venda),
FOREIGN KEY (Codi_Producte) REFERENCES PRODUCTE(Codi),
FOREIGN KEY (Num_Client) REFERENCES CLIENTS(Numero)
);

create table IF NOT EXISTS FACTURA (
Numero INT PRIMARY KEY AUTO_INCREMENT,
Data DATE NOT NULL,
Pagada BIT NOT NULL
);

alter table VENDA add COLUMN Num_Factura INT;
alter table VENDA add FOREIGN KEY(Num_factura) REFERENCES
FACTURA(Numero);

-- exercici 2

create table IF NOT EXISTS EQUIP(
Id INT PRIMARY KEY AUTO_INCREMENT,
Nom VARCHAR(100) NOT NULL,
Poblacio VARCHAR(50),
NumeroSocis INT
);


create table IF NOT EXISTS JUGADOR(
Id INT PRIMARY KEY AUTO_INCREMENT,
Nom VARCHAR(50) NOT NULL,
Nacionalitat VARCHAR(50),
Id_equip INT NOT NULL,
FOREIGN KEY (Id_equip) REFERENCES EQUIP(Id)
);


create table IF NOT EXISTS PARTIT(
Id_Partit INT PRIMARY KEY AUTO_INCREMENT,
Id_Equip_Casa INT NOT NULL,
Id_Equip_Fora INT NOT NULL,
Data DATETIME NOT NULL,
Gols_casa TINYINT DEFAULT 0,
Gols_fora TINYINT DEFAULT 0,
CHECK (Gols_casa >= 0),
CHECK (Gols_fora >= 0),
FOREIGN KEY (Id_Equip_Casa) REFERENCES EQUIP(Id),
FOREIGN KEY (Id_Equip_Fora) REFERENCES EQUIP(Id)
);

-- exercici 3


create table IF NOT EXISTS SANITARIS (
Id INT AUTO_INCREMENT,
Nom VARCHAR(40) NOT NULL,
Professio  SET('DOCTOR', 'INFERMER', 'AUXILIAR', 'CELADOR') NOT NULL,
PRIMARY KEY (Id)
);

create table IF NOT EXISTS PACIENTS (
Id INT AUTO_INCREMENT,
Nom VARCHAR(40) NOT NULL,
NSS VARCHAR(13) NOT NULL,
Adressa VARCHAR(50),
Telefon VARCHAR(12),
PRIMARY KEY (Id)
);

create table IF NOT EXISTS CONSULTA (
Id_Consulta INT AUTO_INCREMENT,
Id_Sanitari INT NOT NULL,
Id_Pacient INT NOT NULL,
Data DATETIME NOT NULL,
Comentaris TEXT,
PRIMARY KEY (Id_Consulta),
FOREIGN KEY (Id_Sanitari) REFERENCES SANITARIS(Id),
FOREIGN KEY (Id_Pacient) REFERENCES PACIENTS(Id)
);

create table IF NOT EXISTS RECEPTA (
Id_Consulta INT,
Marca VARCHAR(50),
Comentaris VARCHAR(300),
PRIMARY KEY (Id_Consulta, Marca),
FOREIGN KEY (Id_Consulta) REFERENCES CONSULTA(Id_Consulta)
);