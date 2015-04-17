PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

CREATE TABLE estado (
    id integer PRIMARY KEY NOT NULL,
    sigla char(2),
    nome text
);

INSERT INTO estado ('sigla', 'nome') VALUES ('AC', 'Acre');
INSERT INTO estado ('sigla', 'nome') VALUES ('AL', 'Alagoas');
INSERT INTO estado ('sigla', 'nome') VALUES ('AP', 'Amapá');
INSERT INTO estado ('sigla', 'nome') VALUES ('AM', 'Amazonas');
INSERT INTO estado ('sigla', 'nome') VALUES ('BA', 'Bahia');
INSERT INTO estado ('sigla', 'nome') VALUES ('CE', 'Ceará');
INSERT INTO estado ('sigla', 'nome') VALUES ('DF', 'Distrito Federal');
INSERT INTO estado ('sigla', 'nome') VALUES ('ES', 'Espírito Santo');
INSERT INTO estado ('sigla', 'nome') VALUES ('GO', 'Goiás');
INSERT INTO estado ('sigla', 'nome') VALUES ('MA', 'Maranhão');
INSERT INTO estado ('sigla', 'nome') VALUES ('MT', 'Mato Grosso');
INSERT INTO estado ('sigla', 'nome') VALUES ('MS', 'Mato Grosso do Sul');
INSERT INTO estado ('sigla', 'nome') VALUES ('MG', 'Minas Gerais');
INSERT INTO estado ('sigla', 'nome') VALUES ('PA', 'Pará');
INSERT INTO estado ('sigla', 'nome') VALUES ('PB', 'Paraíba');
INSERT INTO estado ('sigla', 'nome') VALUES ('PR', 'Paraná');
INSERT INTO estado ('sigla', 'nome') VALUES ('PE', 'Pernambuco');
INSERT INTO estado ('sigla', 'nome') VALUES ('PI', 'Piauí');
INSERT INTO estado ('sigla', 'nome') VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO estado ('sigla', 'nome') VALUES ('RN', 'Rio Grande do Norte');
INSERT INTO estado ('sigla', 'nome') VALUES ('RS', 'Rio Grande do Sul');
INSERT INTO estado ('sigla', 'nome') VALUES ('RO', 'Rondônia');
INSERT INTO estado ('sigla', 'nome') VALUES ('RR', 'Roraima');
INSERT INTO estado ('sigla', 'nome') VALUES ('SC', 'Santa Catarina');
INSERT INTO estado ('sigla', 'nome') VALUES ('SP', 'São Paulo');
INSERT INTO estado ('sigla', 'nome') VALUES ('SE', 'Sergipe');
INSERT INTO estado ('sigla', 'nome') VALUES ('TO', 'Tocantins');

CREATE TABLE cidade (
    id integer PRIMARY KEY NOT NULL,
    nome text,
    id_estado INTEGER REFERENCES estado (id)
);

INSERT INTO cidade VALUES(1,'Aracajú',26);
INSERT INTO cidade VALUES(2,'Belém',14);
INSERT INTO cidade VALUES(3,'Belo Horizonte',13);
INSERT INTO cidade VALUES(4,'Boa Vista',23);
INSERT INTO cidade VALUES(5,'Brasília',7);
INSERT INTO cidade VALUES(6,'Campo Grande',12);
INSERT INTO cidade VALUES(7,'Cuiabá',11);
INSERT INTO cidade VALUES(8,'Curitiba',16);
INSERT INTO cidade VALUES(9,'Florianópolis',24);
INSERT INTO cidade VALUES(10,'Fortaleza',6);
INSERT INTO cidade VALUES(11,'Goiânia',9);
INSERT INTO cidade VALUES(12,'João Pessoa',15);
INSERT INTO cidade VALUES(13,'Macap ',3);
INSERT INTO cidade VALUES(14,'Maceió',2);
INSERT INTO cidade VALUES(15,'Manaus',4);
INSERT INTO cidade VALUES(16,'Natal',20);
INSERT INTO cidade VALUES(17,'Palmas',27);
INSERT INTO cidade VALUES(18,'Porto Alegre',21);
INSERT INTO cidade VALUES(19,'Porto Velho',22);
INSERT INTO cidade VALUES(20,'Recife',17);
INSERT INTO cidade VALUES(21,'Rio Branco',1);
INSERT INTO cidade VALUES(22,'Rio de Janeiro',19);
INSERT INTO cidade VALUES(23,'Salvador',5);
INSERT INTO cidade VALUES(24,'São Luis',10);
INSERT INTO cidade VALUES(25,'São Paulo',25);
INSERT INTO cidade VALUES(26,'Teresina',18);
INSERT INTO cidade VALUES(27,'Vitória',8);

CREATE TABLE grupo (
    id integer PRIMARY KEY NOT NULL,
    nome text
);

INSERT INTO grupo (nome) values ('Cliente');
INSERT INTO grupo (nome) values ('Fornecedor');
INSERT INTO grupo (nome) values ('Revendedor');
INSERT INTO grupo (nome) values ('Colaborador');

CREATE TABLE pessoa (
    id integer PRIMARY KEY NOT NULL,
    nome text,
    endereco text,
    bairro text,
    telefone text,
    email text,
    id_cidade integer references cidade(id),
    grupos text
);
INSERT INTO pessoa VALUES(1,'Amadeu Weirich','Rua do Amadeu Weirich','Centro','(88) 1234-5678','naoenvie@email.com',18,'1');
INSERT INTO pessoa VALUES(2,'Andrigo Dametto','Rua do Andrigo Dametto','Centro','(88) 1234-5678','naoenvie@email.com',3,'3');
INSERT INTO pessoa VALUES(3,'Enio Silveira','Rua do Enio Silveira','Centro','(88) 1234-5678','naoenvie@email.com',19,'1');
INSERT INTO pessoa VALUES(4,'Ari Stopassola Junior','Rua do Ari Stopassola Junior','Centro','(88) 1234-5678','naoenvie@email.com',23,'3');
INSERT INTO pessoa VALUES(5,'Bruno Pitteli Gonçalves','Rua do Bruno Pitteli Gonçalves','Centro','(88) 1234-5678','naoenvie@email.com',26,'1');
INSERT INTO pessoa VALUES(6,'Carlos Eduardo Ranzi','Rua do Carlos Eduardo Ranzi','Centro','(88) 1234-5678','naoenvie@email.com',10,'1');
INSERT INTO pessoa VALUES(7,'Cesar Brod','Rua do Cesar Brod','Centro','(88) 1234-5678','naoenvie@email.com',4,'4');
INSERT INTO pessoa VALUES(8,'Edson Funke','Rua do Edson Funke','Centro','(88) 1234-5678','naoenvie@email.com',8,'4');
INSERT INTO pessoa VALUES(9,'Fabio Elias Locatelli','Rua do Fabio Elias Locatelli','Centro','(88) 1234-5678','naoenvie@email.com',25,'2');
INSERT INTO pessoa VALUES(10,'Fabrício Pretto','Rua do Fabrício Pretto','Centro','(88) 1234-5678','naoenvie@email.com',12,'2');
INSERT INTO pessoa VALUES(11,'Felipe Cortez','Rua do Felipe Cortez','Centro','(88) 1234-5678','naoenvie@email.com',1,'1');
INSERT INTO pessoa VALUES(12,'João Pablo Silva','Rua do João Pablo Silva','Centro','(88) 1234-5678','naoenvie@email.com',20,'3');
INSERT INTO pessoa VALUES(13,'Cândido Fonseca da Silva','Rua do Cândido Fonseca da Silva','Centro','(88) 1234-5678','naoenvie@email.com',21,'3');
INSERT INTO pessoa VALUES(14,'Mouriac Diemer','Rua do Mouriac Diemer','Centro','(88) 1234-5678','naoenvie@email.com',9,'3');
INSERT INTO pessoa VALUES(15,'Leonardo Lemes','Rua do Leonardo Lemes','Centro','(88) 1234-5678','naoenvie@email.com',22,'3');
INSERT INTO pessoa VALUES(16,'Luciano Greiner Dos Santos','Rua do Luciano Greiner Dos Santos','Centro','(88) 1234-5678','naoenvie@email.com',23,'2');
INSERT INTO pessoa VALUES(17,'Matheus Agnes Dias','Rua do Matheus Agnes Dias','Centro','(88) 1234-5678','naoenvie@email.com',6,'4');
INSERT INTO pessoa VALUES(18,'Mauricio de Castro','Rua do Mauricio de Castro','Centro','(88) 1234-5678','naoenvie@email.com',21,'3');
INSERT INTO pessoa VALUES(19,'Nataniel Rabaioli','Rua do Nataniel Rabaioli','Centro','(88) 1234-5678','naoenvie@email.com',22,'2');
INSERT INTO pessoa VALUES(20,'Paulo Roberto Mallmann','Rua do Paulo Roberto Mallmann','Centro','(88) 1234-5678','naoenvie@email.com',20,'4');
INSERT INTO pessoa VALUES(21,'Rubens Prates','Rua do Rubens Prates','Centro','(88) 1234-5678','naoenvie@email.com',27,'3');
INSERT INTO pessoa VALUES(22,'Rubens Queiroz de Almeida','Rua do Rubens Queiroz de Almeida','Centro','(88) 1234-5678','naoenvie@email.com',2,'1');
INSERT INTO pessoa VALUES(23,'Sergio Crespo Pinto','Rua do Sergio Crespo Pinto','Centro','(88) 1234-5678','naoenvie@email.com',9,'3');
INSERT INTO pessoa VALUES(24,'Silvio Cesar Cazella','Rua do Silvio Cesar Cazella','Centro','(88) 1234-5678','naoenvie@email.com',18,'3');
INSERT INTO pessoa VALUES(25,'William Prigol Lopes','Rua do William Prigol Lopes','Centro','(88) 1234-5678','naoenvie@email.com',18,'4');


CREATE TABLE fabricante (
    id integer PRIMARY KEY NOT NULL,
    nome text,
    site text
);

INSERT INTO fabricante VALUES(1,'Kingston','www.kingston.com');
INSERT INTO fabricante VALUES(2,'Seagate','www.seagate.com');
INSERT INTO fabricante VALUES(3,'Corsair','www.corsair.com');
INSERT INTO fabricante VALUES(4,'Olimpus','www.olimpus.com');
INSERT INTO fabricante VALUES(5,'Samsung','www.samsung.com');
INSERT INTO fabricante VALUES(6,'Sony','www.sony.com');
INSERT INTO fabricante VALUES(7,'Creative','www.creative.com');
INSERT INTO fabricante VALUES(8,'Intel','www.intel.com');
INSERT INTO fabricante VALUES(9,'HP','www.hp.com');
INSERT INTO fabricante VALUES(10,'Satellite','www.satellite.com');

CREATE TABLE unidade (
    id integer PRIMARY KEY NOT NULL,
    sigla text,
    nome text
);

INSERT INTO unidade (sigla, nome) values('cm', 'Centímetro');
INSERT INTO unidade (sigla, nome) values('m', 'Metro');
INSERT INTO unidade (sigla, nome) values('cm2', 'Centímetro quadrado');
INSERT INTO unidade (sigla, nome) values('m2', 'Metro quadrado');
INSERT INTO unidade (sigla, nome) values('cm3', 'Centímetro cúbico');
INSERT INTO unidade (sigla, nome) values('m3', 'Metro cúbico');
INSERT INTO unidade (sigla, nome) values('Kg', 'Kilograma');
INSERT INTO unidade (sigla, nome) values('Gr', 'Grama');
INSERT INTO unidade (sigla, nome) values('L', 'Litro');
INSERT INTO unidade (sigla, nome) values('PC', 'Peça');
INSERT INTO unidade (sigla, nome) values('PCT', 'Pacote');
INSERT INTO unidade (sigla, nome) values('CX', 'Caixa');
INSERT INTO unidade (sigla, nome) values('SAC', 'Saco');
INSERT INTO unidade (sigla, nome) values('TON', 'Tonelada');
INSERT INTO unidade (sigla, nome) values('KIT', 'Kit');
INSERT INTO unidade (sigla, nome) values('GL', 'Galão');
INSERT INTO unidade (sigla, nome) values('FD', 'Fardo');
INSERT INTO unidade (sigla, nome) values('BL', 'Bloco');

CREATE TABLE tipo (
    id integer PRIMARY KEY NOT NULL,
    nome text
);

INSERT INTO tipo (nome) values ('Máquina');
INSERT INTO tipo (nome) values ('Acessório');
INSERT INTO tipo (nome) values ('Insumo');
INSERT INTO tipo (nome) values ('Componente');
INSERT INTO tipo (nome) values ('Suprimento');

CREATE TABLE produto (
    id integer PRIMARY KEY NOT NULL,
    descricao text,
    estoque float,
    preco_custo float,
    preco_venda float,
    id_fabricante integer references fabricante(id),
    id_unidade integer references unidade(id),
    id_tipo integer references tipo(id)
);


INSERT INTO produto VALUES(1,'Pendrive 512Mb',10.0,20.0,40.0,1,10,2);
INSERT INTO produto VALUES(3,'SD CARD  512MB',4.0,20.0,35.0,3,10,2);
INSERT INTO produto VALUES(4,'SD CARD 1GB MINI',3.0,28.0,40.0,1,10,2);
INSERT INTO produto VALUES(5,'CAM. FOTO I70 PLATA',5.0,600.0,900.0,5,10,1);
INSERT INTO produto VALUES(6,'CAM. FOTO DSC-W50 PLATA',4.0,400.0,700.0,6,10,1);
INSERT INTO produto VALUES(7,'WEBCAM INSTANT VF0040SP',4.0,50.0,80.0,7,10,1);
INSERT INTO produto VALUES(8,'CPU 775 CEL.D 360  3.46 512K 533M',10.0,140.0,300.0,8,10,4);
INSERT INTO produto VALUES(9,'FILMADORA DCR-DVD108',2.0,900.0,1400.0,6,10,1);
INSERT INTO produto VALUES(10,'HD IDE  80G 7.200',8.0,90.0,160.0,5,10,4);
INSERT INTO produto VALUES(11,'IMP LASERJET 1018 USB 2.0',4.0,200.0,300.0,9,10,1);
INSERT INTO produto VALUES(12,'MEM DDR  512MB 400MHZ PC3200',10.0,60.0,100.0,5,10,4);
INSERT INTO produto VALUES(13,'MEM DDR2 1024MB 533MHZ PC4200',5.0,100.0,170.0,3,10,4);
INSERT INTO produto VALUES(14,'MON LCD 19 920N PRETO',2.0,500.0,800.0,5,10,4);
INSERT INTO produto VALUES(15,'MOUSE USB OMC90S OPT.C/LUZ',10.0,20.0,40.0,5,10,2);
INSERT INTO produto VALUES(16,'NB DV6108 CS 1.86/512/80/DVD+RW ',2.0,1400.0,2500.0,9,10,1);
INSERT INTO produto VALUES(17,'NB N220E/B DC 1.6/1/80/DVD+RW ',3.0,1800.0,3400.0,6,10,1);
INSERT INTO produto VALUES(18,'CAM. FOTO DSC-W90 PLATA',5.0,600.0,1200.0,6,10,1);
INSERT INTO produto VALUES(19,'CART. 8767 NEGRO',20.0,30.0,50.0,9,10,3);
INSERT INTO produto VALUES(20,'CD-R TUBO DE 100 52X 700MB',20.0,30.0,60.0,5,10,5);
INSERT INTO produto VALUES(21,'MEM DDR 1024MB 400MHZ PC3200',7.0,80.0,150.0,1,10,4);
INSERT INTO produto VALUES(22,'MOUSE PS2 A7 AZUL/PLATA',20.0,5.0,15.0,10,10,2);
INSERT INTO produto VALUES(23,'SPEAKER AS-5100 HOME PRATA',5.0,100.0,180.0,10,10,2);
INSERT INTO produto VALUES(24,'TEC. USB ABNT AK-806',14.0,20.0,40.0,10,10,2);
INSERT INTO produto VALUES(2,'HD 120 GB',20.0,100.0,180.0,2,10,4);

CREATE TABLE venda (
    id integer PRIMARY KEY NOT NULL,
    id_cliente integer references pessoa(id),
    id_vendedor integer references pessoa(id),
    data_venda date,
    valor float,
    desconto float,
    outras_despesas float,
    frete float,
    valor_final float,
    obs text
);

CREATE TABLE item_venda (
    id integer PRIMARY KEY NOT NULL,
    id_produto integer references produto(id),
    id_venda integer references venda(id),
    quantidade float
);
COMMIT;