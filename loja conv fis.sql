-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Funcionario (
Cargo VARCHAR(30),
Setor VARCHAR(30),
Nome VARCHAR(100),
Sexo CHAR(1),
cpf VARCHAR(10),
DataDe Nascimento VARCHAR(10),
Horário VARCHAR(10),
IdFuncionário VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Venda (
NotaFiscal INTEGER,
Valor DECIMAL(10),
IdVenda INTEGER PRIMARY KEY,
TipoDePagamento VARCHAR(50)
)

CREATE TABLE Despesas (
IdDespesa VARCHAR(10),
valor VARCHAR(10),
data VARCHAR(10),
Tipo VARCHAR(10),
PRIMARY KEY(IdDespesa,valor)
)

CREATE TABLE fornecedor (
Tipo_1 VARCHAR(60),
Nome do Representante_1 VARCHAR(60),
Contrato_1 VARCHAR(50),
Nome Fantasia_1 VARCHAR(50),
CNPJFornecedor VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Produto (
Tipo VARCHAR(50),
Preço DECIMAL(10),
Marca DECIMAL(5),
validade DATETIME,
IdProduto VARCHAR(5) PRIMARY KEY
)

CREATE TABLE Estoque (
IdEstoque VARCHAR(10) PRIMARY KEY,
quantidade_minima VARCHAR(10),
validade DATETIME,
Quantidade_maxima VARCHAR(10)
)

CREATE TABLE tabaco (
IdProduto VARCHAR(5),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE entretenimento (
IdProduto VARCHAR(5),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE bebida (
IdProduto VARCHAR(5),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE lanches (
IdProduto VARCHAR(5),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE doce (
IdProduto VARCHAR(5),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE Saldo (
valor DECIMAL(10),
IdSaldo VARCHAR(10) PRIMARY KEY,
Atributo1 VARCHAR(10)
)

CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone VARCHAR(10),
IdFuncionário_FK VARCHAR(),
FOREIGN KEY(IdFuncionário_FK) REFERENCES Funcionario (IdFuncionário)
)

CREATE TABLE Email_1 (
Email_1_PK INTEGER PRIMARY KEY,
Email_1 VARCHAR(80)
)

CREATE TABLE Telefone_1 (
Telefone_1_PK INTEGER PRIMARY KEY,
Telefone_1 VARCHAR(300)
)

CREATE TABLE Endereço_1 (
Endereço_1_PK INTEGER PRIMARY KEY,
Bairro_1 VARCHAR(10),
Bairro_11 VARCHAR(10),
Bairro_12 VARCHAR(10),
Bairro_13 VARCHAR(10),
Bairro_14 VARCHAR(10),
Logradouro_1 VARCHAR(10),
Número_1 INTEGER,
CEP_1 NUMERIC(10),
Estado_1 VARCHAR(10),
Complemento_1 VARCHAR(10),
Cidade_1 VARCHAR(10),
CNPJFornecedor_FK VARCHAR(),
FOREIGN KEY(CNPJFornecedor_FK) REFERENCES fornecedor (CNPJFornecedor)
)

CREATE TABLE cadastra (
IdProduto VARCHAR(5),
IdFuncionário VARCHAR(10),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(IdFuncionário) REFERENCES Funcionario (IdFuncionário)
)

CREATE TABLE aumenta (
IdSaldo VARCHAR(10),
IdVenda INTEGER,
FOREIGN KEY(IdSaldo) REFERENCES Saldo (IdSaldo),
FOREIGN KEY(IdVenda) REFERENCES Venda (IdVenda)
)

CREATE TABLE paga (
IdDespesa VARCHAR(10),
valor VARCHAR(10),
IdSaldo VARCHAR(10),
FOREIGN KEY(valor,,) REFERENCES Despesas (IdDespesa,valor),
FOREIGN KEY(IdSaldo) REFERENCES Saldo (IdSaldo)
)

CREATE TABLE modifica (
IdProduto VARCHAR(5),
IdEstoque VARCHAR(10),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto),
FOREIGN KEY(IdEstoque) REFERENCES Estoque (IdEstoque)
)

CREATE TABLE gera (
CNPJFornecedor VARCHAR(10),
IdDespesa VARCHAR(10),
valor VARCHAR(10),
FOREIGN KEY(CNPJFornecedor) REFERENCES fornecedor (CNPJFornecedor),
FOREIGN KEY(valor,,) REFERENCES Despesas (IdDespesa,valor)
)

CREATE TABLE provê (
CNPJFornecedor VARCHAR(10),
IdProduto VARCHAR(5),
FOREIGN KEY(CNPJFornecedor) REFERENCES fornecedor (CNPJFornecedor),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

CREATE TABLE contem (
IdVenda INTEGER,
IdProduto VARCHAR(5),
FOREIGN KEY(IdVenda) REFERENCES Venda (IdVenda),
FOREIGN KEY(IdProduto) REFERENCES Produto (IdProduto)
)

