create table "Estabelecimentos" (
  "id" integer PRIMARY KEY,
  "cnpj" varchar,
  "nome" varchar,
  "data_incricao" timestamp,
  "tipo_estabelecimento" varchar,
  "horario_funcionamento" timestamp,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Enderecos" (
  "id" integer PRIMARY KEY,
  "ponto_de_referencia" varchar,
  "cep" varchar,
  "descricao_enderco" varchar,
  "usuario_id" integer,
  "estabelecimento_id" integer,
  "pedido_id" integer,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Usuarios" (
  "id" integer PRIMARY KEY,
  "nome" varchar,
  "email" varchar,
  "cpf" varchar,
  "telefone" varchar,
  "senha" varchar,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Pedidos" (
  "id" integer PRIMARY KEY,
  "estabelecimento_id" integer,
  "veiculo_id" integer,
  "usuario_id" integer,
  "avaliacao_id" integer,
  "codigo_confirmacao" varchar,
  "tempo_medio" timestamp,
  "taxa_entrega" numeric(10, 2),
  "status" varchar,
  "preco" varchar,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Produtos" (
  "id" integer PRIMARY KEY,
  "nome" varchar,
  "preco" numeric(10, 2),
  "descricao" varchar,
  "preco_promocional" numeric(10, 2),
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Produtos_Estabelecimentos" (
  "id" integer PRIMARY KEY,
  "estabelecimento_id" integer,
  "produto_id" integer,
  "pedido_minimo" numeric(10, 2),
  "status" boolean,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Pedidos_Produtos" (
  "id" integer PRIMARY KEY,
  "produto_id" integer,
  "pedido_id" integer,
  "quantidade" integer,
  "preco_unitario" numeric(10, 2),
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Veiculos" (
  "id" integer PRIMARY KEY,
  "documentos" varchar,
  "placa" varchar,
  "cor" varchar,
  "entregador_id" integer,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Entregadores" (
  "id" integer PRIMARY KEY,
  "nome" varchar,
  "cpf" varchar,
  "created_at" timestamp,
  "last_update" timestamp
);

create table "Avaliacoes" (
  "id" integer PRIMARY KEY,
  "descricao" varchar,
  "nota" numeric(10, 2),
  "data" date,
  "created_at" timestamp,
  "last_update" timestamp
);

alter table "Pedidos" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id");

alter table "Pedidos" ADD FOREIGN KEY ("estabelecimento_id") REFERENCES "Estabelecimentos" ("id");

alter table "Pedidos" ADD FOREIGN KEY ("avaliacao_id") REFERENCES "Avaliacoes" ("id");

alter table "Enderecos" ADD FOREIGN KEY ("estabelecimento_id") REFERENCES "Estabelecimentos" ("id");

alter table "Enderecos" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id");

alter table "Produtos_Estabelecimentos" ADD FOREIGN KEY ("estabelecimento_id") REFERENCES "Estabelecimentos" ("id");

alter table "Produtos_Estabelecimentos" ADD FOREIGN KEY ("produto_id") REFERENCES "Produtos" ("id");

alter table "Pedidos_Produtos" ADD FOREIGN KEY ("pedido_id") REFERENCES "Pedidos" ("id");

alter table "Pedidos_Produtos" ADD FOREIGN KEY ("produto_id") REFERENCES "Produtos" ("id");

alter table "Veiculos" ADD FOREIGN KEY ("entregador_id") REFERENCES "Entregadores" ("id");

alter table "Pedidos" ADD FOREIGN KEY ("veiculo_id") REFERENCES "Veiculos" ("id");

alter table "Enderecos" ADD FOREIGN KEY ("pedido_id") REFERENCES "Pedidos" ("id");
