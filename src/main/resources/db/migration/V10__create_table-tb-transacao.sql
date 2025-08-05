create table if not exists tb_transacao_financeira (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_pessoa_instituicao bigint not null,
    id_pessoa_comprador bigint not null,
    valor numeric(15,2) not null,
    data date not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_transacao primary key (codigo),
    constraint fk_transacao_pessoa_instituicao foreign key (id_pessoa_instituicao) references tb_pessoa (codigo),
    constraint fk_transacao_pessoa_comprador foreign key (id_pessoa_comprador) references tb_pessoa (codigo)
);

comment on table tb_transacao_financeira is 'Representa um determinada Transação Financeira gerenciada pelo sistema';
comment on column tb_transacao_financeira.codigo is 'Identificador único da tabela (privado)';
comment on column tb_transacao_financeira.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_transacao_financeira.id_pessoa_instituicao is 'Representa a Chave Estrangeira referente a Pessoa Instituição. Exemplo: Supermercados; Farmácias...';
comment on column tb_transacao_financeira.id_pessoa_comprador is 'Representa o Usuário responsável pela Transação.';
comment on column tb_transacao_financeira.valor is 'Representa a Chave Estrangeira referente a Conta Bancária.';
comment on column tb_transacao_financeira.data is 'Representa a Chave Estrangeira referente a Conta Bancária.';
comment on column tb_transacao_financeira.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_transacao_financeira.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_transacao_financeira.data_delecao is 'Representa a data de deleção de um determinado registro';