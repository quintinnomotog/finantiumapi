create table if not exists tb_forma_pagamento (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    descricao varchar(60) not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_forma_pagamento primary key (codigo)
);

comment on table tb_forma_pagamento is 'Representa as Formas de Pagamentos gerenciados do sistema';
comment on column tb_forma_pagamento.codigo is 'Identificador único da tabela (privado)';
comment on column tb_forma_pagamento.codigo_publico is 'Identificador único da tabela (público)';
comment on column tb_forma_pagamento.descricao is 'Representa a descrição da forma de pagamento. Exemplo: Dinheiro; Transferência (DOC), Transferência (TED),Transferência (PIX); Depósito Bancário; Boleto Bancário etc';
comment on column tb_forma_pagamento.data_criacao is 'Representa a data de criação de um determinado registro';
comment on column tb_forma_pagamento.data_edicao is 'Representa a data de edição de um determinado registro';
comment on column tb_forma_pagamento.data_delecao is 'Representa a data de deleção de um determinado registro';