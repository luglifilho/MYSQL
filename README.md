**Tabela tb_categorias:**

id (bigint auto_increment primary key): Identificador único para cada categoria.
descricao (varchar(255) not null): Descrição da categoria.
perecivel (boolean not null): Indica se os produtos nesta categoria são perecíveis ou não.

Motivo das Escolhas:
O id é uma chave primária para garantir unicidade.
A descricao permite uma descrição informativa da categoria.
O atributo perecivel é uma escolha relevante para indicar se os produtos nessa categoria são perecíveis ou não.


**Tabela tb_usuarios:**
id (bigint auto_increment primary key): Identificador único para cada usuário.
nome (varchar(255) not null): Nome do usuário.
usuario (varchar(255) not null unique): Nome de usuário único para login.
senha (varchar(255) not null): Senha do usuário.
foto (varchar(255)): Caminho para a foto do usuário.

Motivo das Escolhas:
O id é uma chave primária para garantir unicidade.
O usuario é escolhido como único para garantir logins distintos.
A foto é opcional, pois nem todos os usuários podem ter uma foto associada.


**Tabela tb_produtos:**
id (bigint auto_increment primary key): Identificador único para cada produto.
nome (varchar(255) not null unique): Nome do produto.
descricao (varchar(255)): Descrição do produto.
preco (decimal(10,2) not null): Preço do produto.
quantidade (int not null): Quantidade disponível do produto.
categoria_id (bigint): Chave estrangeira referenciando a categoria do produto.
usuario_id (bigint): Chave estrangeira referenciando o usuário associado ao produto.

Motivo das Escolhas:
O id é uma chave primária para garantir unicidade.
O nome é escolhido como único para garantir que não haja dois produtos com o mesmo nome.
O descricao permite uma descrição mais detalhada do produto.
O preco é escolhido como decimal(10,2) para armazenar valores monetários.
A quantidade indica a disponibilidade do produto.
categoria_id é uma chave estrangeira que referencia a tabela de categorias, estabelecendo uma relação (N:1) entre produtos e categorias.
usuario_id é uma chave estrangeira que referencia a tabela de usuários, estabelecendo uma relação (N:1) entre produtos e usuários.
