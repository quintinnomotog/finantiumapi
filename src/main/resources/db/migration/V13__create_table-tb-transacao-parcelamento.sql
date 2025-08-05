create table if not exists tb_transacao_financeira_parcelamento (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_financeira bigint not null,
    id_parcelamento bigint not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_transacao_financeira_parcelamento primary key (codigo),
    constraint fk_transacao_financeira foreign key (id_transacao_financeira) references tb_transacao_financeira (codigo),
    constraint fk_parcelamento foreign key (id_parcelamento) references tb_parcelamento (codigo)
);