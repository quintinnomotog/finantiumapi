create table if not exists tb_pagamento_conta (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_pagamento bigint not null,
    id_conta_bancaria bigint not null,
    constraint pk_pagamento_conta primary key (codigo),
    constraint fk_pagamento_conta_pagamento foreign key (id_transacao_pagamento) references tb_transacao_pagamento (codigo),
    constraint fk_pagamento_conta_conta foreign key (id_conta_bancaria) references tb_conta_bancaria (codigo)
);