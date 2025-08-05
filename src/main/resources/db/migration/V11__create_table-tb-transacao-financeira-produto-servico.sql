create table if not exists tb_transacao_financeira_produto_servico (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_financeira bigint not null,
    id_produto_servico bigint not null,
    valor_unitario numeric(15,2) not null,
    quantidade int not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_transacao_financeira_produto_servico primary key (codigo),
    constraint fk_transacao_financeira foreign key (id_transacao_financeira) references tb_transacao_financeira (codigo),
    constraint fk_produto_servico foreign key (id_produto_servico) references tb_produto_servico (codigo)
);

comment on table tb_transacao_financeira_produto_servico is 'Representa o relacionamento entre uma determinada Transação Financeira com os Produtos e/ou Serviços';
comment on column tb_transacao_financeira_produto_servico.codigo is 'Identificador único da tabela (privado)';
comment on column tb_transacao_financeira_produto_servico.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_transacao_financeira_produto_servico.id_transacao_financeira is 'Representa a Chave Estrangeira referente a Transação Financeira.';
comment on column tb_transacao_financeira_produto_servico.id_produto_servico is 'Representa a Chave Estrangeira da Produto e/ou Serviço relacionado.';
comment on column tb_transacao_financeira_produto_servico.valor_unitario is 'Representa o valor unitário de um determinado Produto ou Serviço';
comment on column tb_transacao_financeira_produto_servico.quantidade is 'Representa a quantidade de um determinado Produto ou Serviço.';
comment on column tb_transacao_financeira_produto_servico.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_transacao_financeira_produto_servico.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_transacao_financeira_produto_servico.data_delecao is 'Representa a data de deleção de um determinado registro';