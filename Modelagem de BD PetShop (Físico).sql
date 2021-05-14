-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Venda (
IdVenda INTEGER PRIMARY KEY,
NotaFiscal VARCHAR(10),
Produto VARCHAR(10),
Serviço VARCHAR(10),
TipoDePagamento VARCHAR(10),
Valor BIGINT(10)
)

CREATE TABLE Serviço (
Tempo DATETIME,
Preço DECIMAL(5),
Id INTEGER,
Tipo VARCHAR(50),
Tipo1 VARCHAR(50),
Tipo2 VARCHAR(50),
Tipo3 VARCHAR(50),
Tipo4 VARCHAR(50),
Tipo5 VARCHAR(50),
Tipo6 VARCHAR(50),
Tipo7 VARCHAR(50),
Tipo8 VARCHAR(50),
Tipo9 VARCHAR(50)
)

CREATE TABLE Produto (
IdProduto VARCHAR(5) PRIMARY KEY,
Quantidade VARCHAR(10),
Validade DATETIME,
Preco DECIMAL(5),
Modelo VARCHAR(50),
Marca VARCHAR(50),
Peso DECIMAL(5)
)

CREATE TABLE Animal (
Espécie VARCHAR(100),
Nome VARCHAR(50),
Porte VARCHAR(10),
Cor VARCHAR(20),
Idade DATETIME,
Alimentação VARCHAR(10),
Raça VARCHAR(40),
Id INTEGER PRIMARY KEY
)

CREATE TABLE Funcionario (
Id VARCHAR(10) PRIMARY KEY,
Cargo VARCHAR(30),
Setor VARCHAR(30),
Nome VARCHAR(100),
Horário VARCHAR(10),
Crácha VARCHAR(10),
Sexo CHAR(1),
cpf VARCHAR(10),
DataDe Nascimento VARCHAR(10)
)

CREATE TABLE Cliente (
Nomoe VARCHAR(10),
Data de nascimento DATETIME,
RG VARCHAR(10),
cpf VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Parceria (
Identificação INTEGER PRIMARY KEY,
Nome Social VARCHAR(100),
Nome Fantasia VARCHAR(100),
Nome do Representante VARCHAR(10),
CNPJ VARCHAR(10),
Contrato VARCHAR(10),
Tipo VARCHAR(30)
)

CREATE TABLE DoençaPréExixtente (
DoençaPréExixtente_PK INTEGER PRIMARY KEY,
DoençaPréExixtente VARCHAR(30),
Id_FK INTEGER,
FOREIGN KEY(Id_FK) REFERENCES Animal (Id)
)

CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone VARCHAR(10),
Id_FK VARCHAR(),
FOREIGN KEY(Id_FK) REFERENCES Funcionario (Id)
)

CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone VARCHAR(9)
)

CREATE TABLE Endereço (
Endereço_PK INTEGER PRIMARY KEY,
Logradouro VARCHAR(150),
Numero INTEGER,
Complemento VARCHAR(30),
CEP VARCHAR(8),
Bairro VARCHAR(100),
Cidade VARCHAR(10),
Estado VARCHAR(10)
)

CREATE TABLE Email (
Email_PK INTEGER PRIMARY KEY,
Email VARCHAR(80),
cpf_FK VARCHAR(),
FOREIGN KEY(cpf_FK) REFERENCES Cliente (cpf)
)


CREATE TABLE Endereço (
Endereço_PK INTEGER PRIMARY KEY,
Logradouro VARCHAR(100),
Número INTEGER,
Complemento VARCHAR(50),
CEP VARCHAR(8),
Bairro VARCHAR(10),
Cidade VARCHAR(50),
Estado VARCHAR(40)
)


CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone VARCHAR(9)
)

CREATE TABLE Email (
Email_PK INTEGER PRIMARY KEY,
Email VARCHAR(50),
Identificação_FK INTEGER,
FOREIGN KEY(Identificação_FK) REFERENCES Parceria (Identificação)
)

CREATE TABLE Receber (
Id INTEGER,
FOREIGN KEY(Id) REFERENCES Animal (Id)
)

CREATE TABLE Utilizar (
IdProduto VARCHAR(5),
Id INTEGER,
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(Id) REFERENCES Animal (Id)
)

CREATE TABLE atribuir (
IdVenda INTEGER,
Id INTEGER,
FOREIGN KEY(IdVenda) REFERENCES Venda (IdVenda),
FOREIGN KEY(Id) REFERENCES Animal (Id)
)

CREATE TABLE Cadastro (
IdProduto VARCHAR(5),
Id VARCHAR(10),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(Id) REFERENCES Funcionario (Id)
)

CREATE TABLE adquirir (
cpf VARCHAR(10),
IdVenda INTEGER,
FOREIGN KEY(cpf) REFERENCES Cliente (cpf),
FOREIGN KEY(IdVenda) REFERENCES Venda (IdVenda)
)

CREATE TABLE Solicitar (
Id INTEGER,
cpf VARCHAR(10),
PRIMARY KEY(Id,cpf)
)

CREATE TABLE execultar (
Id VARCHAR(10),
FOREIGN KEY(Id) REFERENCES Funcionario (Id)
)

CREATE TABLE Providenciar (
Identificação INTEGER,
IdProduto VARCHAR(5),
PRIMARY KEY(Identificação,IdProduto)
)


CREATE TABLE Adquirir (
cpf VARCHAR(10),
IdProduto VARCHAR(5),
FOREIGN KEY(cpf) REFERENCES Cliente (cpf),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE Vender (
IdVenda INTEGER,
Id VARCHAR(10),
IdProduto VARCHAR(5),
cpf VARCHAR(10),
Id INTEGER,
PRIMARY KEY(IdVenda,Id,IdProduto,cpf,Id)
)

