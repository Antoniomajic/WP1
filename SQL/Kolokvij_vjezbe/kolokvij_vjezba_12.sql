﻿use master;
drop database if exists kolokvij_vjezba_12;
go
create database kolokvij_vjezba_12;
go
use kolokvij_vjezba_12;

--0. Kreirajte tablice i veze između tablica
create table zena(
	sifra int not null primary key identity(1,1),
	eura decimal(16,6) not null,
	indiferentno bit,
	novcica decimal(15,5)
);

create table decko(
	sifra int not null primary key identity(1,1),
	hlace varchar(46),
	asocijalno bit,
	stilfrizura varchar(43) not null,
	indiferentno bit not null,
	ogrlica int,
	zena int not null
);

create table sestra(
	sifra int not null primary key identity(1,1),
	lipa decimal(15,9),
	ogrlica int,
	kratkamajica varchar(43) not null
);

create table zarucnica(
	sifra int not null primary key identity(1,1),
	hlace varchar(48) not null,
	kratkamajica varchar(46) not null,
	jmbag char(11),
	nausnica int
);

create table zarucnica_sestra(
	sifra int not null primary key identity(1,1),
	zarucnica int not null,
	sestra int not null
);

create table svekrva(
	sifra int not null primary key identity(1,1),
	maraka decimal(14,7),
	kuna decimal(15,8),
	vesta varchar(44),
	asocijalno bit not null,
	ekstrovertno bit,
	zarucnica int
);

create table djevojka(
	sifra int not null primary key identity(1,1),
	modelnaocala varchar(34) not null,
	vesta varchar(40) not null,
	kratkamajica varchar(39) not null,
	suknja varchar(36) not null,
	bojaociju varchar(32) not null,
	prestena int not null,
	svekrva int not null
);

create table prijatelj(
	sifra int not null primary key identity(1,1),
	lipa decimal(16,10),
	asocijalno bit,
	stilfrizura varchar(37),
	kuna decimal(14,6),
	modelnaocala varchar(38),
	djevojka int
);