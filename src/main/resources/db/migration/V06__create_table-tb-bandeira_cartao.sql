create table if not exists tb_bandeira_cartao (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    descricao varchar(50) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_bandeira_cartao primary key (codigo)
);

comment on table tb_bandeira_cartao is 'Representa as Bandeiras dos Cartões Bancários gerenciados do sistema';
comment on column tb_bandeira_cartao.codigo is 'Identificador único da tabela (privado)';
comment on column tb_bandeira_cartao.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_bandeira_cartao.descricao is 'Representa a descrição do Cartão Bancário. Exemplo: Visa, Master, Eletro, American Express';
comment on column tb_bandeira_cartao.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_bandeira_cartao.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_bandeira_cartao.data_delecao is 'Representa a data de deleção de um determinado registro';