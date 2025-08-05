create table if not exists tb_cartao_bancario (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_conta_bancaria bigint not null,
    id_bandeira_cartao bigint not null,
    numero varchar(20) not null,
    data_vencimento date not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_cartao_bancario primary key (codigo),
    constraint fk_cartao_conta foreign key (id_conta_bancaria) references tb_cartao_bancario (codigo),
    constraint fk_cartao_bandeira foreign key (id_bandeira_cartao) references tb_bandeira_cartao (codigo)
);

comment on table tb_cartao_bancario is 'Representa um determinado Cartão Bancário gerenciado pelo sistema';
comment on column tb_cartao_bancario.codigo is 'Identificador único da tabela (privado)';
comment on column tb_cartao_bancario.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_cartao_bancario.id_conta_bancaria is 'Representa a Chave Estrangeira referente a Conta Bancária.';
comment on column tb_cartao_bancario.id_bandeira_cartao is 'Representa a Chave Estrangeira referente a Bandeira do Cartão Bancário.';
comment on column tb_cartao_bancario.numero is 'Representa o número do Cartão';
comment on column tb_cartao_bancario.data_vencimento is 'Representa a Data de Vencimento do Cartão.';
comment on column tb_cartao_bancario.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_cartao_bancario.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_cartao_bancario.data_delecao is 'Representa a data de deleção de um determinado registro';