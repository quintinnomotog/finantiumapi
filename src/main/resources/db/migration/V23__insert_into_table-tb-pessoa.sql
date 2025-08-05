insert into tb_pessoa (id_tipo_pessoa, nome) values (
	(select codigo from tb_tipo_pessoa where descricao = 'Pessoa Instituição Financeira'),
	'Conta Carteira'
);

insert into tb_pessoa (id_tipo_pessoa, nome) values (
	(select codigo from tb_tipo_pessoa where descricao = 'Pessoa Física'),
	'Usuário do Sistema'
);
