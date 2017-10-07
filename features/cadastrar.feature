#language: pt

Funcionalidade: Acessar o site do submarino e efetuar o cadastro cliente
@Cenario01
Cenario: Cadastrar o usuario para acesso 

Dado que estou na pagina "https://www.submarino.com.br/"
E posiciono o cursor no menu "Minha conta"
E clico em "Cliente novo? Cadastrar"
E preencho o campo e-mail
E preencho o campo Senha submarino
E preencho o campo Confirme sua Senha
E preencho o campo Nome Completo
E na opcao Sexo escolho opcao masculino
E preencho o campo CPF
E preencho o campo Data de Nascimento
E preencho o campo Telefone para Contato
E preencho o campo Telefone Celular
E seleciono a opcao Desejo receber ofertas do Submarino pelo celular
E seleciono o Tipo de Endereco "Comercial"
E preencho o campo CEP
E preencho o campo Numero
E preencho o campo Complementos
E preencho o campo Ponto de Referencia
E clico em Cadastrar

@Regressao
Cenario: Cadastrar o usuario para acesso 

Dado que estou na pagina "https://www.submarino.com.br/"
E posiciono o cursor no menu "Minha conta"
E clico em "Cliente novo? Cadastrar"
E efetuo um cadastro valido PF "Casa"
E clico em Cadastrar

@Regressao
Cenario: Cadastrar o usuario para acesso 

Dado que estou na pagina "https://www.submarino.com.br/"
E posiciono o cursor no menu "Minha conta"
E clico em "Cliente novo? Cadastrar"
E efetuo um cadastro valido PF "Comercial"
E clico em Cadastrar


