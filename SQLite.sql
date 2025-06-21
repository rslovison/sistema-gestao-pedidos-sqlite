/* Consultar Fornecedores da China */
SELECT * FROM tabelafornecedores
WHERE LOWER(país_de_origem) = 'china'; /* A função LOWER é para transformar todos os dados da coluna em letra minúscula antes da consulta */

/* Consultar clientes que compraram sem trazer os nomes repetidamente */
SELECT DISTINCT cliente FROM tabelapedidos 

/* Criar tabela de clientes */
CREATE TABLE tabelaclientes (
  ID_Cliente INT PRIMARY KEY,
  Nome_Cliente VARCHAR (250),
  Informacoes_de_Contato VARCHAR (250)
  );

/* Alterando e excluindo tabelas */
ALTER TABLE tabelaclientes ADD Endereço_Cliente VARCHAR (250);

/* Apagar tabela */
DROP TABLE tabelaclientes;

/* Criar tabela categorias */
CREATE TABLE tabelacategorias (
  ID_Categoria INT PRIMARY KEY,
  Nome_Categoria VARCHAR (250),
  Descricao_Categoria TEXT
);

/* Criar tabela de produtos */
CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_do_Produto VARCHAR (250),
  Descrição TEXT,
  Categoria INT,
  Preco_de_Compra DECIMAL (10,2),
  Unidade VARCHAR (50),
  Fornecedor INT,
  Data_de_Inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria),
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)
  );
  
  
 /*Inserindo um registro na tabela de clientes*/
 INSERT INTO tabelaclientes
 	(id_cliente,
  	nome_cliente,
  	informacoes_de_contato,
  	Endereço_Cliente)
 VALUES
 	('1', 'Ana Silva', 'ana.silva@email.com', 'rua flores - casa 1');
 
 /*Inserindo diveros registros na tabela de clientes*/
INSERT INTO tabelaclientes 
	(id_cliente,
	nome_cliente,
	informacoes_de_contato,
	Endereço_Cliente)
VALUES
	('2', 'João Santos', 'joao.santos@provedor.com', 'Rua dos pinheiros, 25'),
	('3', 'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
	('4', 'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida rio, 67');
    
/*Criar tabela de pedidos padrão ouro*/        
CREATE TABLE tabelapedidosgold (
	ID_pedido_gold INT PRIMARY KEY,
	Data_Do_Pedido_gold DATE,
 	Status_gold VARCHAR(50),
    Total_Do_Pedido_gold DECIMAL(10, 2),
	Cliente_gold INT,
	Data_De_Envio_Estimada_gold DATE,
FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes(id_cliente)
);

/*Inserindo linhas com SELECT*/    
INSERT INTO tabelapedidosgold
    (ID_pedido_gold, 
     Data_Do_Pedido_gold, 
     Status_gold, 
     Total_Do_Pedido_gold, 
     Cliente_gold, 
     Data_De_Envio_Estimada_gold)
SELECT
    id,
    data_do_pedido,
    status,
    total_do_pedido,
    cliente,
    data_de_envio_estimada
FROM tabelapedidos
WHERE total_do_pedido >= 400;


/*Filtrando valores*/
SELECT * FROM tabelapedidos WHERE total_do_pedido > 200;
SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200;
SELECT * FROM tabelapedidos WHERE total_do_pedido <= 200;
SELECT * FROM tabelapedidos WHERE total_do_pedido < 200;
SELECT * FROM tabelapedidos WHERE total_do_pedido <> 200; /*sinal de diferente*/
SELECT * FROM tabelaclientes WHERE nome_cliente > 'C';
SELECT * FROM tabelapedidos WHERE data_do_pedido > '2023-09-19';


/*Alterando com a cláusula UPDATE*/
UPDATE tabelapedidos SET status = 'Enviado' WHERE status = 'Processando';

UPDATE tabelaclientes SET informacoes_de_contato = 'j.santos@email.com', 
endereço_cliente = 'Rua dos paralelepipedos, 30 '
WHERE id_cliente = 2;


/*Excluindo dados com a cláusula DELETE*/
/*Normalmente, a cláusula DELETE vem sempre acompanhada do WHERE para especificar onde e o que será deletado. 
Tome muito cuidado ao fazer essas alterações, pois é difícil desfaze-las.*/
DELETE FROM tabelafornecedores WHERE pais_de_origem = 'Turquia';	
DELETE FROM tabelafornecedores` e especificamos com `WHERE id > 35;

