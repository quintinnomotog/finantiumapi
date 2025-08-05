create table if not exists tb_anexo_transacao_financeira (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_financeira bigint not null,
    nome_arquivo text not null,
    caminho_arquivo text not null,
    tipo_mime varchar(100) not null,
    data_criacao timestamp default now(),
    data_delecao timestamp null,
    constraint pk_anexo primary key (codigo),
    constraint fk_anexo_transacao_financeira foreign key (id_transacao_financeira) references tb_transacao_financeira (codigo)
);