create table if not exists tb_transacao_pagamento (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_financeira bigint not null,
    id_meio_pagamento bigint not null,
    id_forma_pagamento bigint not null,
    valor_pago numeric(15,2) not null,
    observacoes text null,
    data_pagamento date not null,
    data_criacao timestamp default now(),
    data_edicao timestamp null,
    data_delecao timestamp null,
    constraint pk_transacao_pagamento primary key (codigo),
    constraint fk_transacao_pagamento_transacao foreign key (id_transacao_financeira) references tb_transacao_financeira (codigo),
    constraint fk_transacao_pagamento_meio foreign key (id_meio_pagamento) references tb_meio_pagamento (codigo),
    constraint fk_transacao_pagamento_forma foreign key (id_forma_pagamento) references tb_forma_pagamento (codigo)
);