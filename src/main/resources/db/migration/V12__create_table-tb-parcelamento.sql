create table if not exists tb_parcelamento (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    valor numeric(15,2) not null,
    numero_parcela int not null,
    quantidade_dia_atraso int not null default 0,
    data_pagamento date not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_parcelamento primary key (codigo)
);