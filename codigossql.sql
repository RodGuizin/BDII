mysql -h localhost -u root -p

    SHOW DATABASES;
    CREATE DATABASE mtec_DS2;
    CREATE OR REPLACE DATABASE mtec_DS2;
    USE mtec_DS2;


	create table cliente(
	cod_cli smallint not null,
	nome_cli varchar(40) not null,
	endereco varchar(40) null,
	cidade varchar(20) null,
	cep char(08) null,
	uf char(02) null,
	primary key (cod_cli));
    

INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES
(1000, 'Supermercado Carrefour', 'Av. das Americas', 'rio de janeiro', '20000001', 'rj'),
(2000, 'Supermercado Baratao', 'Rua 7 de setembro', 'rio de janeiro', '20000002', 'rj'),
(3000, 'Supermercado Arariboia', 'Rua Itaoca', 'niteroi', '20000003', 'rj');

SELECT * FROM cliente;

CREATE TABLE IF NOT EXISTS item_pedido (
    no_ped smallint(6) NOT NULL,
    cd_prod smallint(6) NOT NULL,
    qtd_ped float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS pedido (
    num_ped smallint(6) NOT NULL,
    prazo_entr smallint(6) NOT NULL,
    cd_cli smallint(6) NOT NULL,
    cd_vend smallint(6) NOT NULL,
    PRIMARY KEY (num_ped)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS produto (
    cod_prod smallint(6) NOT NULL,
    unid_prod char(3) NOT NULL,
    desc_prod varchar(20) NOT NULL,
    val_unit double(9,2) NOT NULL,
    PRIMARY KEY (cod_prod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS vendedor (
    cod_vend smallint(6) NOT NULL,
    nome_vend varchar(40) NOT NULL,
    sal_fixo double(9,2) NOT NULL,
    faixa_comiss char(1) NOT NULL,
    PRIMARY KEY (cod_vend)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SHOW TABLES;
DESC cliente;