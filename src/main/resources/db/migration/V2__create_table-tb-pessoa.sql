create table if not exists tb_pessoa (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_tipo_pessoa serial not null,
    nome varchar(100) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_pessoa primary key (codigo),
    constraint fk_pessoa_tipo_pessoa foreign key (id_tipo_pessoa) references tb_tipo_pessoa (codigo),
	constraint un_pessoa unique (nome)
);

comment on table tb_pessoa is 'Representa as pessoas do sistema';
comment on column tb_pessoa.codigo is 'Identificador único da tabela (privado)';
comment on column tb_pessoa.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_pessoa.id_tipo_pessoa is 'Chave Estrangeira da tabela de Tipo de Pessoa';
comment on column tb_pessoa.nome is 'Representa o nome de uma determinada pessoa';
comment on column tb_pessoa.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_pessoa.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_pessoa.data_delecao is 'Representa a data de deleção de um determinado registro';