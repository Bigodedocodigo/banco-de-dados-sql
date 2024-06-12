create database project_FECAP;

use project_FECAP;

CREATE TABLE descente(
desc_cod varchar(10),
desc_nome varchar(15),
desc_fone varchar(20),
desc_dt_nasc date,
PRIMARY KEY (desc_cod)
);
create table possui(
fk_PILOTO_pil_codigo varchar(10),
fk_DESCENDENTE_desc_cofigo varchar(10),
foreign key (Fk_PILOTO_pil_codigo)REFERENCES cliente (possui),
foreign key (Fk_DESCENDENTE_desc_codigo)REFERENCES cliente (possui)
);

CREATE TABLE piloto(
pil_codigo varchar(10),
pil_nome varchar(15),
pil_fone varchar(20),
pil_numero_licenca varchar(10),
PRIMARY KEY (pil_codigo)
);


CREATE TABLE cidade(
cid_cod varchar(10),
cid_nome varchar(15),
cid_uf varchar(20),
PRIMARY KEY (cid_cod)
);



