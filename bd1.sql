create database transp_aerea;
use transp_aerea

create table piloto (
pil_codigo varchar(7),
pil_nome varchar(25),
pil_endereco varchar(30),
pil_numero_licenca varchar(8),
primary key (pil_codigo)
);
create table aviao (
av_codigo varchar(7),
av_nome varchar(25),
av_numero_lugares int,
av_modelo varchar(10),
av_matricula varchar(7),
primary key (av_codigo)
);

create table descendente (
desc_codigo varchar(7),
desc_nome varchar(25),
desc_fone varchar(15),
desc_dt_nasc date,
primary key (desc_codigo)
);
create table possui (
pil_codigo varchar(7),
desc_codigo varchar(7),
foreign key (pil_codigo)
references piloto (pil_codigo),
foreign key (desc_codigo)
references descendente (desc_codigo)
);
create table cidade (
cid_codigo varchar(7),
cid_nome varchar(15),
cid_UF varchar(2),
primary key (cid_codigo)
);

create table voo (
voo_codigo varchar(7),
pil_codigo varchar(7),
av_codigo varchar(7),
cid_origem varchar(15),
cid_destino varchar(15),
voo_hora_partida time,
voo_hora_chegada time,
voo_data_partida date,
voo_data_chegada date,
primary key (voo_codigo),
foreign key (pil_codigo) references piloto (pil_codigo),
foreign key (av_codigo) references aviao (av_codigo),
foreign key (cid_origem) references cidade (cid_codigo),
foreign key (cid_destino) references cidade (cid_codigo)
);