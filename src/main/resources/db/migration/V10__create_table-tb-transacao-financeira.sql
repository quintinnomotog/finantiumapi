create table if not exists tb_transacao_financeira (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_pessoa_estabelecimento bigint not null,
    id_pessoa_comprador bigint not null,
    valor numeric(15,2) not null,
    data date not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_transacao primary key (codigo),
    constraint fk_transacao_estabelecimento foreign key (id_pessoa_estabelecimento) references tb_pessoa (codigo),
    constraint fk_transacao_comprador foreign key (id_pessoa_comprador) references tb_pessoa (codigo)
);

comment on table tb_transacao_financeira is 'Representa uma transação financeira registrada no sistema.';
comment on column tb_transacao_financeira.codigo is 'Identificador único da transação (privado).';
comment on column tb_transacao_financeira.codigo_publico is 'Identificador público da transação (UUID).';
comment on column tb_transacao_financeira.id_pessoa_estabelecimento is 'Pessoa ou empresa que recebeu o valor da transação. Ex: Supermercado, farmácia, etc.';
comment on column tb_transacao_financeira.id_pessoa_comprador is 'Usuário responsável pela transação.';
comment on column tb_transacao_financeira.valor is 'Valor total da transação financeira.';
comment on column tb_transacao_financeira.data is 'Data em que a transação ocorreu.';
comment on column tb_transacao_financeira.data_criacao is 'Data de criação do registro da transação.';
comment on column tb_transacao_financeira.data_edicao is 'Data da última edição do registro da transação.';
comment on column tb_transacao_financeira.data_delecao is 'Data da exclusão lógica do registro da transação.';