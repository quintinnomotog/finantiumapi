insert into tb_conta_bancaria (id_tipo_conta_bancaria, id_pessoa_instituicao_financeira, saldo) values (
	(select codigo from tb_tipo_conta_bancaria where descricao = 'Conta Carteira'),
	(select codigo from tb_pessoa where id_tipo_pessoa = 4),
	0
);