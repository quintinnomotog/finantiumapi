create table if not exists tb_pagamento_parcelamento (
    codigo bigserial not null,
    codigo_publico uuid not null default gen_random_uuid(),
    id_transacao_pagamento bigint not null,
    id_parcelamento bigint not null,
    constraint pk_pagamento_parcelamento primary key (codigo),
    constraint fk_pagamento_parcelamento_pagamento foreign key (id_transacao_pagamento) references tb_transacao_pagamento (codigo),
    constraint fk_pagamento_parcelamento_parcelamento foreign key (id_parcelamento) references tb_parcelamento (codigo)
);