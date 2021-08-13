-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Biscoito (
Quantidade INTEGER,
Fabricação DATETIME,
Peso DECIMAL(10),
Validade DATETIME,
Preco DECIMAL(10),
Marca VARCHAR(100),
Nome VARCHAR(100),
ID_Bolacha INTEGER PRIMARY KEY
)

CREATE TABLE Salgado (
ID_Salgado INTEGER PRIMARY KEY,
Fabricação DATETIME,
Quantidade INTEGER,
Validade DATETIME,
Peso DECIMAL(10),
Sabor VARCHAR(100),
Preco DECIMAL(10),
Nome VARCHAR(100)
)

CREATE TABLE ProdutoHigiene (
Fabricação DATETIME,
Validade DATETIME,
Preco DECIMAL(10),
Nome VARCHAR(100),
Marca VARCHAR(100),
ID_ProdutoHigiene INTEGER PRIMARY KEY,
Quantidade INTEGER,
Fragancia VARCHAR(100),
Tipo VARCHAR(100)
)

CREATE TABLE Frios (
Validade DATETIME,
Fabricação DATETIME,
ID_ProdutoFrios INTEGER PRIMARY KEY,
Preco DECIMAL(10),
Nome VARCHAR(100),
Marca VARCHAR(100),
Quantidade INTEGER,
Tipo VARCHAR(100)
)

CREATE TABLE Bomboniere (
Fabricação DATETIME,
Preco DECIMAL(10),
Quantidade INTEGER,
Validade DATETIME,
ID_ProdutoBonbonieire INTEGER PRIMARY KEY,
Marca VARCHAR(100),
Nome VARCHAR(100),
Sabor VARCHAR(100)
)

CREATE TABLE NotaFiscal (
Nome_Produto VARCHAR(100),
Valor_Total_Produtos DECIMAL(1000),
DataEmissao DATETIME,
ID_NF VARCHAR(10) PRIMARY KEY,
CNPJ_Loja VARCHAR(10),
Valor_Total_Nota DECIMAL(1000),
Quantidade_Produto INTEGER
)

CREATE TABLE AcessorioCelular (
Preco DECIMAL(10),
Peso DECIMAL(10),
Fabricacao DATETIME,
Quantidade INTEGER,
Validade DATETIME,
Tipo VARCHAR(100),
Nome VARCHAR(100),
Marca VARCHAR(100),
ID_AcessoriosCelular INTEGER PRIMARY KEY
)

CREATE TABLE Tabaco (
Quantidade INTEGER,
Fabricação SMALLDATETIME,
Validade DATETIME,
Preco DECIMAL(10),
ID_Tabaco INTEGER PRIMARY KEY,
Marca VARCHAR(100),
Nome VARCHAR(100),
Sabor VARCHAR(100),
Sabor1 VARCHAR(100),
Sabor2 VARCHAR(100),
Sabor3 VARCHAR(100),
Sabor4 VARCHAR(100),
Atributo2 VARCHAR()
)

CREATE TABLE Lanches (
Fabricação DATETIME,
ID_Lanches INTEGER PRIMARY KEY,
Quantidade INTEGER,
Validade DATETIME,
Sabor VARCHAR(100),
Peso DECIMAL(10),
Preco DECIMAL(10),
Nome VARCHAR(100)
)

CREATE TABLE Carnes (
ID_CarneBovina INTEGER PRIMARY KEY,
Quantidade INTEGER,
Fabricação DATETIME,
Validade DATETIME,
Peso DECIMAL(10),
Preco DECIMAL(10),
Marca VARCHAR(100),
Nome VARCHAR(100)
)

CREATE TABLE KitChurrasco (
Fabricacao DATETIME,
Preco DECIMAL(10),
Validade DATETIME,
Quantidade INTEGER,
Item VARCHAR(100),
Peso DECIMAL(10),
ID_KitChurrasco INTEGER PRIMARY KEY,
Nome VARCHAR(100)
)

CREATE TABLE Bebida (
Quantidade INTEGER,
Fabricação DATETIME,
Validade DATETIME,
Preco DECIMAL(10),
ID_BebidasNAlcoolica INTEGER PRIMARY KEY,
Marca VARCHAR(100),
Nome VARCHAR(100)
)

CREATE TABLE Funcionario (
Nome VARCHAR(100),
Função VARCHAR(100),
RG NUMERIC(9),
CPF_Funcionario NUMERIC(11) PRIMARY KEY
)

CREATE TABLE Cliente (
CPF VARCHAR(10) PRIMARY KEY,
CodPagamento VARCHAR(10)
)

CREATE TABLE Produto (
ID_Produto VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Venda (
ID_Venda VARCHAR(10) PRIMARY KEY,
NotaFiscal VARCHAR(10)
)

CREATE TABLE Loja (
Nome VARCHAR(100),
CNPJ_Loja NUMERIC(100) PRIMARY KEY
)

CREATE TABLE Fornecedor (
ID_Fornecedor VARCHAR(10) PRIMARY KEY,
CPNJ INTEGER,
Nome VARCHAR(10)
)

CREATE TABLE Metodo_Pagamento (
Metodo_Pagamento_PK INTEGER PRIMARY KEY,
Metodo_Pagamento VARCHAR(100),
ID_NF_FK VARCHAR(),
FOREIGN KEY(ID_NF_FK) REFERENCES NotaFiscal (ID_NF)
)

CREATE TABLE Telefone_Funcionario (
Telefone_Funcionario_PK INTEGER PRIMARY KEY,
Telefone_Funcionario NUMERIC(11)
)

CREATE TABLE Endereco_Funcioario (
Endereco_Funcioario_PK INTEGER PRIMARY KEY,
CEP NUMERIC(100),
Logradouro VARCHAR(100),
Cidade VARCHAR(100),
Numero NUMERIC(11),
Complemento VARCHAR(100),
Bairro VARCHAR(100)
)

CREATE TABLE Email_Funcionario (
Email_Funcionario_PK INTEGER PRIMARY KEY,
Email_Funcionario VARCHAR(100),
CPF_Funcionario_FK NUMERIC(),
FOREIGN KEY(CPF_Funcionario_FK) REFERENCES Funcionario (CPF_Funcionario)
)

CREATE TABLE Email_Loja (
Email_Loja_PK INTEGER PRIMARY KEY,
Email_Loja VARCHAR(100)
)

CREATE TABLE Telefone_Loja (
Telefone_Loja_PK INTEGER PRIMARY KEY,
Telefone_Loja NUMERIC(11),
CNPJ_Loja_FK NUMERIC(),
FOREIGN KEY(CNPJ_Loja_FK) REFERENCES Loja (CNPJ_Loja)
)

CREATE TABLE Telefone_Fornecedor (
Telefone_Fornecedor_PK INTEGER PRIMARY KEY,
Telefone_Fornecedor NUMERIC(11)
)

CREATE TABLE Contrato (
Contrato_PK INTEGER PRIMARY KEY,
Contrato VARCHAR(10)
)

CREATE TABLE Endereco (
Endereco_PK INTEGER PRIMARY KEY,
Estado VARCHAR(100),
Cidade VARCHAR(100),
Complemento VARCHAR(100),
CEP INTEGER,
Bairro VARCHAR(100),
Logradouro VARCHAR(10),
Numero INTEGER
)

CREATE TABLE Email_Fornecedor (
Email_Fornecedor_PK INTEGER PRIMARY KEY,
Email_Fornecedor VARCHAR(100),
ID_Fornecedor_FK VARCHAR(),
FOREIGN KEY(ID_Fornecedor_FK) REFERENCES Fornecedor (ID_Fornecedor)
)

CREATE TABLE identifica (
ID_Venda VARCHAR(10),
ID_NF VARCHAR(10),
FOREIGN KEY(ID_Venda) REFERENCES Venda (ID_Venda),
FOREIGN KEY(ID_NF) REFERENCES NotaFiscal (ID_NF)
)

CREATE TABLE Consulta (
ID_Produto VARCHAR(10),
ID_Lanches INTEGER,
ID_Tabaco INTEGER,
ID_ProdutoBonbonieire INTEGER,
ID_KitChurrasco INTEGER,
ID_AcessoriosCelular INTEGER,
ID_ProdutoHigiene INTEGER,
ID_BebidasNAlcoolica INTEGER,
ID_Bolacha INTEGER,
ID_Salgado INTEGER,
ID_CarneBovina INTEGER,
ID_ProdutoFrios INTEGER,
PRIMARY KEY(ID_Produto,ID_Lanches,ID_Tabaco,ID_ProdutoBonbonieire,ID_KitChurrasco,ID_AcessoriosCelular,ID_ProdutoHigiene,ID_BebidasNAlcoolica,ID_Bolacha,ID_Salgado,ID_CarneBovina,ID_ProdutoFrios)
)

CREATE TABLE Fornece (
ID_Produto VARCHAR(10),
ID_Fornecedor VARCHAR(10),
CNPJ_Loja NUMERIC(100),
PRIMARY KEY(ID_Produto,ID_Fornecedor,CNPJ_Loja)
)

CREATE TABLE Vende (
ID_Produto VARCHAR(10),
ID_Venda VARCHAR(10),
CPF_Funcionario NUMERIC(11),
CPF VARCHAR(10),
PRIMARY KEY(ID_Produto,ID_Venda,CPF_Funcionario,CPF)
)

CREATE TABLE Emprega (
CPF_Funcionario NUMERIC(11),
CNPJ_Loja NUMERIC(100),
FOREIGN KEY(CPF_Funcionario) REFERENCES Funcionario (CPF_Funcionario),
FOREIGN KEY(CNPJ_Loja) REFERENCES Loja (CNPJ_Loja)
)

