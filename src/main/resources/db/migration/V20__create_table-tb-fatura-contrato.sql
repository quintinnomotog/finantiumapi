create table if not exists tb_fatura_contrato (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_contrato bigint not null,
    mes_ano date not null,
    valor numeric(15,2) not null,
    juros numeric(15,2) default 0,
    desconto numeric(15,2) default 0,
    valor_final numeric(15,2) not null,	
    descricao_situacao varchar(20) not null default 'ABERTA',
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_fatura_contrato primary key (codigo),
    constraint fk_fatura_contrato foreign key (id_contrato) references tb_contrato (codigo)
);

comment on table tb_fatura_contrato is 'Representa o relacionamento entre Faturas de Contratos gerenciadas pelo sistema';
comment on column tb_fatura_contrato.valor_final is 'Representa o Valor Final da Fatura de Contratos com a fórmula: [(VALOR + JUROS) - DESCONTO]';
comment on column tb_fatura_contrato.descricao_situacao is 'Representa a Descrição da Situação que podem ser: ABERTA; PAGA; ATRASADA';
