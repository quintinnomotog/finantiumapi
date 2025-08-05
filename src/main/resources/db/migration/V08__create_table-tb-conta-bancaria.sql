create table if not exists tb_conta_bancaria (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_tipo_conta_bancaria bigint not null,
    id_pessoa_instituicao_financeira bigint not null,
    data_abertura date null,
    saldo numeric(15,2) not null default 0,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_conta_bancaria primary key (codigo),
    constraint fk_conta_tipo_conta foreign key (id_tipo_conta_bancaria) references tb_tipo_conta_bancaria (codigo),
    constraint fk_conta_pessoa_instituicao foreign key (id_pessoa_instituicao_financeira) references tb_pessoa (codigo)
);

comment on table tb_conta_bancaria is 'Representa as Contas Bacárias gerenciadas pelo sistema';
comment on column tb_conta_bancaria.codigo is 'Identificador único da tabela (privado)';
comment on column tb_conta_bancaria.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_conta_bancaria.id_tipo_conta_bancaria is 'Representa a Chave Estrangeira referente ao Tipo da Conta Bancária.';
comment on column tb_conta_bancaria.id_pessoa_instituicao_financeira is 'Representa a Chave Estrangeira referente a Instituição Financeira.';
comment on column tb_conta_bancaria.data_abertura is 'Representa a data de abetura de uma determinada Conta Bancária.';
comment on column tb_conta_bancaria.saldo is 'Representa o saldo efetivo da Conta Bancária.';
comment on column tb_conta_bancaria.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_conta_bancaria.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_conta_bancaria.data_delecao is 'Representa a data de deleção de um determinado registro';