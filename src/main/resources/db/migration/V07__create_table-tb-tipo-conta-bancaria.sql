create table if not exists tb_tipo_conta_bancaria (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    descricao varchar(50) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_tipo_conta_bancaria primary key (codigo)
);

comment on table tb_tipo_conta_bancaria is 'Representa as Bandeiras das Contas Bacárias gerenciadas pelo sistema';
comment on column tb_tipo_conta_bancaria.codigo is 'Identificador único da tabela (privado)';
comment on column tb_tipo_conta_bancaria.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_tipo_conta_bancaria.descricao is 'Representa a descrição do Tipo da Conta Bancária. Exemplo: Conta Corrente; Conta Poupança; Conta Investimento;';
comment on column tb_tipo_conta_bancaria.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_tipo_conta_bancaria.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_tipo_conta_bancaria.data_delecao is 'Representa a data de deleção de um determinado registro';