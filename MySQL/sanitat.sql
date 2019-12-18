create database if not exists sanitat;

create table if not exists sanitat.pacient(
codi int(10) NOT NULL auto_increment,
numeroSS int(15) NOT NULL unique,
nom varchar(15) NOT NULL,
llinatge1 varchar(15) character set utf8 NOT NULL,
llinatge2 varchar(15) character set utf8,
naixament timestamp not null,
primary key (codi)
);

create table if not exists sanitat.llit(
num_llit int(10) not null,
data_asignació date not null,
primary key (num_llit)
);

create table if not exists sanitat.llit_pacient(
codi_pacient int(10) not null,
num_llit int(10) not null,
foreign key (codi_pacient)
	references pacient(codi),
foreign key (num_llit)
	references llit(num_llit),
primary key (codi_pacient, num_llit)
);

create table if not exists sanitat.planta(
num_planta int(10) not null,
nom varchar(20) not null unique,
num_llit_total int(10),
primary key (num_planta)
);

create table if not exists sanitat.lloc_llit(
num_planta int(10) not null,
num_llit int(10) not null,
foreign key (num_llit)
	references llit(num_llit),
foreign key (num_planta)
	references planta(num_planta),
primary key (num_planta, num_llit)
);

create table if not exists sanitat.targetes(
num_targeta int(10) not null,
horari_començament time not null,
horari_final time not null,
codi_pacient int(10) not null,
primary key (num_targeta),
foreign key (codi_pacient)
	references pacient(codi)
);

create table if not exists sanitat.metge(
codi_metge int(10) not null auto_increment,
nom varchar(15) not null,
visita datetime,
primary key (codi_metge)
);

create table if not exists sanitat.diagnostic(
codi_diagnostic int(10) not null auto_increment,
dat date not null,
descripcio varchar(500) not null,
codi_pacient int(10) not null,
primary key (codi_diagnostic),
foreign key (codi_pacient)
	references pacient(codi)
);

create table if not exists sanitat.metge_tractament(
codi_metge int(10) not null,
codi_pacient int(10) not null,
foreign key (codi_metge)
	references metge(codi_metge),
foreign key (codi_pacient)
	references pacient(codi),
primary key (codi_metge, codi_pacient)
);

create table if not exists sanitat.diagnostic_creat(
codi_metge int(10) not null,
codi_diagnostic int(10) not null,
foreign key (codi_metge)
	references metge(codi_metge),
foreign key (codi_diagnostic)
	references diagnostic(codi_diagnostic),
primary key (codi_metge, codi_diagnostic)
);