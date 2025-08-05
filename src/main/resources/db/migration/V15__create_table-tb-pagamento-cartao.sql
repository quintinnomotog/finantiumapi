create table if not exists tb_pagamento_cartao (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_pagamento bigint not null,
    id_cartao_bancario bigint not null,
    constraint pk_pagamento_cartao primary key (codigo),
    constraint fk_pagamento_cartao_pagamento foreign key (id_transacao_pagamento) references tb_transacao_pagamento (codigo),
    constraint fk_pagamento_cartao_cartao foreign key (id_cartao_bancario) references tb_cartao_bancario (codigo)
);