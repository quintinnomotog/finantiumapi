create table if not exists tb_contrato (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_pessoa_cliente bigint not null,
    data_inicio date not null,
    data_fim date not null,
    valor_mensal numeric(15,2) not null,
    condicoes text,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_contrato primary key (codigo),
    constraint fk_contrato_pessoa foreign key (id_pessoa_cliente) references tb_pessoa (codigo)
);