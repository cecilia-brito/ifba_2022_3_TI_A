-- CRIANDO DATABASE
CREATE DATABASE Lucas_Canil2

-- ATIVAR A DATABASE PARA SER USADA
USE Lucas_Canil2

-- DELETAR AS TABELAS CASO JAH EXISTA
/*
DROP TABLE Cao
DROP TABLE Raca
DROP TABLE Treinador
DROP TABLE Vacina
DROP TABLE Competicao
DROP TABLE Cliente
DROP TABLE Cao_Treinador
DROP TABLE Mencao
DROP TABLE Cao_Vacina
DROP TABLE Cao_Competicao
*/

-----------------------------------------------------------------------------------------------------------------------------------------------

-- CRIANDO A TABELA CAO
CREATE TABLE Cao 
(
	NumPedigre int AUTO_INCREMENT NOT NULL primary key,
	NomeCao varchar(50) NOT NULL,
	Sobrenome varchar(50) NOT NULL,
	Cor_Conjunto_Cores varchar(50) NOT NULL,
	DataNascimento varchar(50) NOT NULL,
	CodRaca int NOT NULL,
	CodCliente int NOT NULL,
	CodPai int,
	CodMae int
)AUTO_INCREMENT=1
-- CRIANDO A TABELA RACA
CREATE TABLE Raca 
(
	CodRaca int AUTO_INCREMENT NOT NULL primary key,
	NomeRaca varchar(50) NOT NULL,
	Tamanho int NOT NULL,
	PesoMedio decimal(5,2) NOT NULL,
	ValorVenda int NOT NULL,
	ObsGerais varchar(50) NOT NULL
)AUTO_INCREMENT=1
-- CRIANDO A TABELA TREINADOR
CREATE TABLE Treinador 
(
	CodTreinador int AUTO_INCREMENT NOT NULL primary key,
	NomeTreinador varchar(50) NOT NULL,
	EnderecoTreinador varchar(50) NOT NULL,
	TelefoneTreinador varchar(25) NOT NULL
)AUTO_INCREMENT=1
-- CRIANDO A TABELA VACINA
CREATE TABLE Vacina 
(
	CodVacina int AUTO_INCREMENT NOT NULL primary key,
	TipoVacina varchar(50) NOT NULL,
	DescVacina varchar(50) NOT NULL
)AUTO_INCREMENT=1
-- CRIANDO A TABELA COMPETICAO
CREATE TABLE Competicao 
(
	CodCompeticao int AUTO_INCREMENT NOT NULL primary key,
	DescCompeticao varchar(50) NOT NULL,
	DataCompeticao date NOT NULL 
)AUTO_INCREMENT=1
-- CRIANDO A TABELA CLIENTE
CREATE TABLE Cliente 
(
	CodCliente int AUTO_INCREMENT NOT NULL primary key,
	TipoDocumento varchar(25) NOT NULL,
	NumDocumento char(11) NOT NULL,
	NomeCliente varchar(50) NOT NULL,
	EnderecoCliente varchar(50) NOT NULL,
	TelefoneCliente varchar(25) NOT NULL
)AUTO_INCREMENT=1

-- Criando tabela Mencao
CREATE TABLE Mencao
(
	CodMencao int AUTO_INCREMENT NOT NULL primary key,
	DescMencao varchar(25) NOT NULL
)AUTO_INCREMENT=1

-----------------------------------------------------------------------------------------------------------------------------------------------

-- Adicionando Chaves Extrangeiras a tabela 
ALTER TABLE Cao
	add
		foreign key (CodRaca) references Raca(CodRaca)
ALTER TABLE Cao
	add        
		foreign key (CodCliente) references Cliente(CodCliente)
        
ALTER TABLE Cao
	add        
		foreign key (CodPai) references Cao(NumPedigre)
ALTER TABLE Cao
	add        
		foreign key (CodMae) references Cao(NumPedigre)

-- Criando tabela Relacionamento Cao Treinador
CREATE TABLE Cao_Treinador
(
	NumPedigre int NOT NULL,
	CodTreinador int NOT NULL,
	CodMencao int NOT NULL,
	Data_treino date,
	Primary Key(NumPedigre,CodTreinador, CodMencao, Data_treino)
)
-- Adicionando Chaves Extrangeiras a tabela Cao_Treinador
ALTER TABLE Cao_Treinador
	add
		foreign key (NumPedigre) references Cao(NumPedigre)
ALTER TABLE Cao_Treinador
	add        
		foreign key (CodTreinador) references Treinador(CodTreinador)
ALTER TABLE Cao_Treinador
	add        
		foreign key (CodMencao) references Mencao(CodMencao)

-- Criando tabela Relacionamento Cao X Vacina
CREATE TABLE Cao_Vacina
(
	NumPedigre int NOT NULL,
	CodVacina int NOT NULL,
	DataAplicacao varchar(50) NOT NULL,
	Primary Key(NumPedigre,CodVacina,DataAplicacao)
)
-- Adicionando Chaves Extrangeiras a tabela Cao_Treinador
ALTER TABLE Cao_Vacina
	add
		foreign key (NumPedigre) references Cao(NumPedigre)
ALTER TABLE Cao_Vacina
	add        
		foreign key (CodVacina) references Vacina(CodVacina)
		
-- Criando tabela Relacionamento Cao X Competicao
CREATE TABLE Cao_Competicao
(
	NumPedigre int NOT NULL,
	CodCompeticao int NOT NULL,
	Colocacao int NOT NULL,
	Primary Key(NumPedigre,CodCompeticao)
)
-- Adicionando Chaves Extrangeiras a tabela Cao_Competicao
ALTER TABLE Cao_Competicao
	add
		foreign key (NumPedigre) references Cao(NumPedigre)
ALTER TABLE Cao_Competicao
	add
		foreign key (CodCompeticao) references Competicao(CodCompeticao)
        
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Rottweiler',119,20.45,778,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Pastor Alemão',46,21.21,1315,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Pastor Belga ',41,20.63,541,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Pequinês',35,23.09,1447,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Pitbull ',37,18.26,706,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Boxer ',128,22.79,1498,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Bulldog ',36,18.44,1161,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Labrador Retriever',50,15.33,716,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Chihuahua',16,19.62,843,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Dálmata ',93,16.02,761,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('São Bernardo',96,23.05,1479,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Husky Siberiano',83,17.43,836,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Dobermann ',129,17.15,1245,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Dogue Alemão',32,17.34,534,'Nenhuma');
INSERT INTO Raca (NomeRaca,Tamanho,PesoMedio,ValorVenda,ObsGerais) VALUES ('Cocker Spaniel',68,17.77,888,'Nenhuma');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Raca

-- COMECANDO OS INSERTS NA TABELA CLIENTE
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('CPF','67086283715','Ana','Rua do Pau Bandeira','3631-7127');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','90096496644','Isabela','Rua Tapaxanas','3632-2815');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','51100256383','Larissa','Rua Rock Estrela','3631-8673');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','16478181066','Carolina','Rua Somos Todos Iguais','3632-8750');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('CPF','10385619148','Letícia','Rua das Variações Musicais','3631-9827');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','49590155452','Valentina','Rua Neve da Bahia','3631-7741');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('CPF','66154314052','Yasmin','Rua Maravilha Tristeza','3631-9281');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','94513198066','Guilherme','Rua dos Pensamentos Poéticos','3632-5420');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','75654959387','Gustavo','Rua Borboletas Psicodélicas','3632-2004');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','11087520369','Lucas','Rua na Paz do seu Sorriso','3632-4562');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','80510590352','João','Rua Viola Enluarada','3632-5014');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','21685526788','Enzo','Rua Minie','3632-9674');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','80644900140','Gabriel','Rua Reinado do Cavalo Marinho','3631-9875');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('CPF','34318832418','Vinícius','Rua Final Feliz','3632-8263');
INSERT INTO Cliente (TipoDocumento,NumDocumento,NomeCliente,EnderecoCliente,TelefoneCliente) VALUES ('RG','23125165907','Rodrigo','Rua da Música Aquática','3631-3163');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Cliente

-- COMECANDO OS INSERTS NA TABELA CAO
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Nina','Afrodite','Tigrado','07/09/2015',1,12);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Mel','Baixinha','Dourado','27/07/2000',1,15);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Susi','Boneca','Despigmentado','04/01/2001',2,2);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Princesa','Cacau','Tigrado','26/02/2003',2,5);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Belinha','Baronesa','Preto','24/02/2008',3,10);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Lola','Afrodite','Tricolor','12/10/2011',3,9);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Pandora','Tigresa','Dourado','14/07/2013',4,13);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente) VALUES ('Billy','Vilão','Dourado','12/09/2008',4,1);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Thor','Rex','Tricolor','18/07/2010',1,7,1,2);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Max','Falcão','Cinzento','06/10/2012',1,6,1,2);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Bob','Byron','Albino','22/09/2015',2,7,3,4);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Rex','Rabugento','Albino','21/09/2010',2,4,3,4);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Marley','Duke','Chocolate','04/05/2003',3,5,5,6);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Toby','Zeus','Albino','14/12/2016',3,10,5,6);
INSERT INTO Cao (NomeCao,Sobrenome,Cor_Conjunto_Cores,DataNascimento,CodRaca,CodCliente,CodPai,CodMae) VALUES ('Sansão','Monstro','Tricolor','23/10/2015',4,7,7,8);
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Cao

-- COMECANDO OS INSERTS NA TABELA Treinador
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Áquila','Phoc1','40028922');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Witanauanh','Phoc2','40028923');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Lucas','Phoc3','40028924');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Leo','Phoc4','40028925');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Marcelo','Phoc5','40028926');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Deborah','Phoc6','40028927');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Dynart','Phoc7','40028928');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Felipe','Phoc8','40028929');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Rainan','Phoc9','40028930');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Abimael','Phoc10','40028931');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Katarina','Phoc11','40028932');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Darius','Phoc12','40028933');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Lucio','Phoc13','40028934');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Lulu','Phoc14','40028935');
INSERT INTO Treinador (NomeTreinador,EnderecoTreinador,TelefoneTreinador) VALUES ('Annie','Phoc15','40028936');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Treinador

-- COMECANDO OS INSERTS NA TABELA Vacina
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hcv','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hiv','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Htlv','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Chagas','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite Z','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite Y','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite x','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite b','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite a','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite m','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite v','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite F','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite S','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite P','seila');
INSERT INTO Vacina (TipoVacina,DescVacina) VALUES ('Hepatite H','seila');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Vacina

-- COMECANDO OS INSERTS NA TABELA Competicao
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Agility',STR_TO_DATE('11/07/2015', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Flyball',STR_TO_DATE('10/11/2016', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Canicross',STR_TO_DATE('4/02/2003', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Dog Frisbee',STR_TO_DATE('11/10/2003', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Correr',STR_TO_DATE('03/07/2002', '%d/%m/%Y')); 
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Patinar',STR_TO_DATE('05/01/2015', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Caminhar',STR_TO_DATE('03/03/2016', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Pegar a bola',STR_TO_DATE('09/01/2004', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Exposição de beleza',STR_TO_DATE('10/3/2012', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Natação',STR_TO_DATE('10/11/2015', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Canine Freestyle',STR_TO_DATE('01/05/2007', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Game Dog',STR_TO_DATE('11/11/2004', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Schutzhund',STR_TO_DATE('08/06/2002', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Surf',STR_TO_DATE('04/06/2009', '%d/%m/%Y'));
INSERT INTO Competicao (DescCompeticao,DataCompeticao) VALUES ('Skateboarding Dog',STR_TO_DATE('03/08/2000', '%d/%m/%Y'));
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Competicao

-- COMECANDO OS INSERTS NA TABELA Mencao
INSERT INTO Mencao (DescMencao) VALUES ('Fraco');
INSERT INTO Mencao (DescMencao) VALUES ('Regular');
INSERT INTO Mencao (DescMencao) VALUES ('Bom');
INSERT INTO Mencao (DescMencao) VALUES ('Ótimo');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Mencao

-- COMECANDO OS INSERTS NA TABELA Cao_Treinador
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (10,11,3,STR_TO_DATE('03/08/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (7,4,1,STR_TO_DATE('04/07/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (6,2,1,STR_TO_DATE('04/08/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (14,13,2,STR_TO_DATE('03/10/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (7,9,3,STR_TO_DATE('12/08/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (9,7,4,STR_TO_DATE('01/03/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (15,13,1,STR_TO_DATE('04/05/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (6,5,4,STR_TO_DATE('09/02/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (13,12,3,STR_TO_DATE('07/07/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (12,13,2,STR_TO_DATE('02/03/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (2,13,2,STR_TO_DATE('03/08/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (3,9,2,STR_TO_DATE('05/08/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (1,7,4,STR_TO_DATE('04/04/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (11,3,1,STR_TO_DATE('05/03/2016', '%d/%m/%Y'));
INSERT INTO Cao_Treinador (NumPedigre,CodTreinador,CodMencao, Data_treino) VALUES (12,8,1,STR_TO_DATE('06/07/2016', '%d/%m/%Y'));
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Cao_Treinador

-- COMECANDO OS INSERTS NA TABELA Cao_Vacina
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (13,6,'05/04/2004');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (13,11,'06/06/2009');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (1,13,'06/09/2010');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (8,4,'11/01/2015');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (7,14,'12/06/2009');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (15,2,'10/04/2014');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (8,3,'12/06/2001');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (2,4,'11/07/2002');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (14,6,'06/08/2011');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (11,13,'10/08/2008');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (13,10,'01/10/2001');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (7,14,'12/09/2016');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (9,7,'01/06/2000');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (14,15,'04/04/2002');
INSERT INTO Cao_Vacina (NumPedigre,CodVacina,DataAplicacao) VALUES (2,14,'12/06/2014');
-- MOSTRANDO OS VALORES INSERIDOS
SELECT * FROM Cao_Vacina

-- COMECANDO OS INSERTS NA TABELA Cao_Competicao
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (15,1,4);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (12,1,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (13,3,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (6,2,4);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (11,2,1);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (1,3,1);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (2,9,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (11,8,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (3,2,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (2,5,1);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (9,8,1);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (1,6,2);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (11,7,1);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (13,5,4);
INSERT INTO Cao_Competicao (NumPedigre,CodCompeticao,Colocacao) VALUES (6,3,3);

select * from Cao_Competicao
/*Lista 1 
Questão 01
Liste o Nome do treinador, seu endereço e telefone, e, o nome de todos os cães que ele treinou , as menções, a data de treinamento.*/
select T.NomeTreinador, T.EnderecoTreinador,T.TelefoneTreinador, CT.Data_treino, M.DescMencao, C.NomeCao from Treinador T, Cao_Treinador CT, Cao C, Mencao M
where T.CodTreinador = CT.CodTreinador and C.NumPedigre = CT.NumPedigre and M.CodMencao = CT.CodMencao;
/*
Questão 02
Liste o nome do treinador e o nome dos cães, somente dos cães que receberam menção “Ótimo”*/
select T.NomeTreinador, CT.Data_treino, M.DescMencao, C.NomeCao from Treinador T, Cao_Treinador CT, Cao C, Mencao M
where T.CodTreinador = CT.CodTreinador and C.NumPedigre = CT.NumPedigre and M.CodMencao = CT.CodMencao and CT.CodMencao = 4;

/*Questão 03
Liste todos os cães da raça Rottweiler, ordenado pelo nome do cão
*/
select C.NomeCao, C.NumPedigre, R.NomeRaca, R.CodRaca from  Cao C, Raca R
where C.CodRaca = R.CodRaca and C.CodRaca = 1
order by C.NomeCao;

/*Questão 04
Liste todos os clientes, com seus respectivos endereços e telefones, que tem Pastor Belga, ordenados pelo nome do cliente
*/
select C.NomeCliente, C.EnderecoCliente, C.TelefoneCliente, Cao.NomeCao, R.NomeRaca, Cao.CodRaca from Cliente C, Cao Cao, Raca R
where C.CodCliente = Cao.CodCliente and Cao.CodRaca = 3 and Cao.CodRaca = R.CodRaca
order by C.NomeCliente;

/*Questão 05
Liste os nomes dos cães, o nome da vacina que tomaram e a data da aplicação
*/
select C.NomeCao, V.TipoVacina, CV.DataAplicacao from  Cao C, Cao_Vacina CV, Vacina V
where C.NumPedigre = CV.NumPedigre and V.CodVacina = CV.CodVacina
order by C.NomeCao;

/*Questão 06
Liste o nome e a raça de cada cão, com seus respectivos pais e suas respectivas raças
*/
select C.NumPedigre, C.NomeCao, R.NomeRaca  as "Raça da Mãe", P.NomeCao as Pai, RP.NomeRaca as "Raça do Pai", C.CodPai, M.NomeCao as "Mãe",  RM.NomeRaca, C.CodMae from  Cao C, Raca R, Cao M, Cao P,Raca  RP, Raca RM
where C.CodRaca = R.CodRaca and C.CodPai = P.NumPedigre and C.CodMae = M.NumPedigre and RP.CodRaca = P.CodRaca and RM.CodRaca = M.CodRaca
order by C.NomeCao;

/*Questão 07
Liste o nome dos cães, o nome da competição que eles participaram, a data da competição, e a colocação destes cães nestas competições
*/
select C.NomeCao, Comp.DescCompeticao, CC.CodCompeticao, Comp.DataCompeticao, CC.Colocacao from  Cao C, Competicao Comp, Cao_Competicao CC
where CC.CodCompeticao = Comp.CodCompeticao and  C.NumPedigre = CC.NumPedigre
order by CC.Colocacao;

/*Questão 08
Liste o nome dos cães, o nome dos seus donos, o nome da competição que eles participaram, a data da competição, e a colocação destes cães nestas competições
*/
select C.NomeCao, Cli.NomeCliente, Comp.DescCompeticao, CC.CodCompeticao, Comp.DataCompeticao, CC.Colocacao from  Cao C, Competicao Comp, Cao_Competicao CC, Cliente Cli
where CC.CodCompeticao = Comp.CodCompeticao and  C.NumPedigre = CC.NumPedigre and Cli.CodCliente = C.CodCliente
order by CC.Colocacao;

/*Não tem idade média na tabela raça, então fiz com o tamanho médio*/
/*
Questão 09
Liste cada cão, seu dono e sua raça, juntamente com a idade média da raça
*/
select C.NomeCao, Cli.NomeCliente, R.NomeRaca, R.Tamanho from  Cao C,  Raca R, Cliente Cli
where C.CodCliente = Cli.CodCliente and C.CodRaca = R.CodRaca
order by Cli.NomeCliente;

/*Questão 10
Liste cada cão, nome do seu dono, nome do pai, nome da mãe, vacinas que tomaram e data da aplicação
*/
select C.NomeCao, C.NumPedigre, Cli.NomeCliente, M.NomeCao as "Mãe", P.NomeCao as "Pai", V.TipoVacina, CV.DataAplicacao, C.CodPai, C.CodMae, R.NomeRaca, R.CodRaca from  Cao C, Raca R, Cliente Cli, Cao_Vacina CV, Vacina V, Cao M, Cao P
where C.CodRaca = R.CodRaca and C.CodCliente = Cli.CodCliente and C.CodRaca = R.CodRaca and C.NumPedigre = CV.NumPedigre and V.CodVacina = CV.CodVacina and C.CodPai = P.NumPedigre and C.CodMae = M.NumPedigre
order by C.NomeCao;

/*Lista 2 - Junções*/

/*HAVING*/
/*1. Liste quantos clientes do Canil tem mais de um cão*/
select Cli.NomeCliente, count(C.CodCliente) from Cliente Cli, Cao C
where Cli.CodCliente = C.CodCliente
group by Cli.NomeCliente
having count(C.CodCliente) > 1;

/*2. Liste os cães machos que tem mais de um filho*/
select C.NomeCao, count(P.CodPai) from Cao C, Cao P
where P.CodPai = C.NumPedigre
group by C.NomeCao
having count(P.CodPai) > 1;

/*3. Liste as raças que tenham mais de três cães no canil*/

select R.NomeRaca, count(C.CodRaca) as "Quantidade de Cães" from Cao C, Raca R 
where C.CodRaca = R.CodRaca
group by R.NomeRaca
having count(C.CodRaca) > 3;

/*INNER JOIN*/
/*
1. Liste as raças com seus respectivos cães*/
select C.NomeCao, R.NomeRaca from Raca R inner join Cao C
on R.CodRaca = C.CodRaca
group by C.NomeCao;
/*
2. Liste as raças e as quantidades de cães*/
select R.NomeRaca, count(C.CodRaca) as "Quantidade de Cães" from Raca R inner join Cao C
on R.CodRaca = C.CodRaca
group by R.NomeRaca;
/*
3. Liste as raças e as quantidades de cães, somente das raças que tiverem mais de 3 cães*/
select R.NomeRaca, count(C.CodRaca) as "Quantidade de Cães" from Raca R inner join Cao C
on R.CodRaca = C.CodRaca
group by R.NomeRaca 
having count(C.CodRaca) > 3;
/*
4. Liste cada cão o e número de competições em que ele participou*/
select C.NomeCao, count(CC.CodCompeticao) as "Quantidade de Competições" from Cao C inner join Cao_Competicao CC
on C.NumPedigre = CC.NumPedigre
group by C.NomeCao;
/*
5. Liste cada cão e o número de competições em que ele participou, somente se forem 
mais de duas*/
select C.NomeCao, count(CC.CodCompeticao) as "Quantidade de Competições" from Cao C inner join Cao_Competicao CC
on C.NumPedigre = CC.NumPedigre
group by C.NomeCao
having count(CC.CodCompeticao) >2;
/*
6. Liste todos os treinadores e o número de cães que eles treinaram, somente, se forem 
mais de dois cães*/

select T.NomeTreinador, count(CT.NumPedigre) as "Quantidade de Cães Treinados" from Treinador T inner join Cao_Treinador CT
on T.CodTreinador = CT.CodTreinador
group by T.NomeTreinador
having count(CT.NumPedigre) >3;
/*
7. Liste quantas vezes foi dada cada vacina, mas somente as que foram dadas mais de 3 
vezes*/

select V.TipoVacina as "Nome Vacina", count(CV.CodVacina) as "Quantidade de Aplicações" from Vacina V inner join Cao_Vacina CV
on V.CodVacina = CV.CodVacina
group by V.TipoVacina 
having count(CV.CodVacina) > 3;
/*
LEFT OUTER JOIN
1. Liste quantos cães cada cliente tem, até os que tem zero cães
*/
select Cli.NomeCliente, count(C.CodCliente) as "Quantidade de Cães" from Cliente Cli left outer join Cao C
on Cli.CodCliente = C.CodCliente
group by Cli.NomeCliente;
/*
2. Liste quantos cães cada raça tem, até as raças que não tem cães
*/
select R.NomeRaca, count(C.CodRaca) as "Quantidade de Cães" from Raca R left outer join Cao C
on R.CodRaca = C.CodRaca 
group by R.NomeRaca;

/*
3. Liste o número de treinos que cada treinador fez, até os treinadores que tiveram zero 
treinos
*/
select T.NomeTreinador, count(CT.CodTreinador) as "Quantidade de Treinos" from Treinador T left outer join Cao_Treinador CT
on T.CodTreinador = CT.CodTreinador
group by T.NomeTreinador;
/*
4. Liste quantas vezes foi dada cada vacina, até as que não foram dadas*/

select V.TipoVacina as "Nome Vacina", count(CV.CodVacina) as "Quantidade de Aplicações" from Vacina V left outer join Cao_Vacina CV
on V.CodVacina = CV.CodVacina
group by V.TipoVacina;
/*
CROSS JOIN
1. Liste todos os possíveis cães e donos*/
select Cli.NomeCliente, C.NomeCao from Cliente Cli cross join Cao C;
/*
2. Liste todas os possíveis cães e raças*/
select C.NomeCao, R.NomeRaca from Raca R cross join Cao C;
/*
3. Liste todos os possíveis cães e pais*/
select C.NomeCao, P.NomeCao as "Possíveis Pais" from Cao C cross join Cao P where P.NumPedigre <> C.NumPedigre;
/*
4. Liste todos os possíveis cães e mães*/
select C.NomeCao, M.NomeCao as "Possiveis Mães" from Cao C cross join Cao M where M.NumPedigre <> C.NumPedigre