create extension if not exists "pgcrypto";

create table if not exists tb_tipo_pessoa (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    descricao varchar(20) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_tipo_pessoa primary key (codigo),
	constraint un_tipo_pessoa unique (descricao)
);

comment on table tb_tipo_pessoa is 'Representa os tipos de pessoas: Física, Jurídica, Autoridade ou Sistema';
comment on column tb_tipo_pessoa.codigo is 'Identificador único da tabela (privado)';
comment on column tb_tipo_pessoa.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_tipo_pessoa.descricao is 'Descrição do tipo da pessoa';
comment on column tb_tipo_pessoa.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_tipo_pessoa.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_tipo_pessoa.data_delecao is 'Representa a data de deleção de um determinado registro';