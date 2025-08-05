create table if not exists tb_produto_servico (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    nome varchar(100) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_produto_servico primary key (codigo)
);

comment on table tb_produto_servico is 'Representa os Produtos e/ou Serviços gerenciados do sistema';
comment on column tb_produto_servico.codigo is 'Identificador único da tabela (privado)';
comment on column tb_produto_servico.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_produto_servico.nome is 'Representa o nome de um determinado Protudo e Serviço';
comment on column tb_produto_servico.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_produto_servico.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_produto_servico.data_delecao is 'Representa a data de deleção de um determinado registro';