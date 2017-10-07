
Dado(/^que estou na pagina "([^"]*)"$/) do |arg1|
    visit arg1
  end
  
  Dado(/^posiciono o cursor no menu "([^"]*)"$/) do |arg1|
    find(".usr-icon-wrapper").hover
  end
  
  Dado(/^clico em "([^"]*)"$/) do |arg1|
    find(".usr-signup").click
  end
  
Dado(/^preencho o campo e\-mail$/) do
    Cadastro.new.email_valido
end
    
Dado(/^preencho o campo Senha submarino$/) do
    Cadastro.new.senha_valida
end

Dado(/^preencho o campo Confirme sua Senha$/) do
    Cadastro.new.confirma_senha_valida
end

Dado(/^preencho o campo Nome Completo$/) do
    Cadastro.new.confirma_senha_valida
end

Dado(/^na opcao Sexo escolho opcao masculino$/) do
    Cadastro.new.nome
end

Dado(/^preencho o campo CPF$/) do
    Cadastro.new.sexo
end

Dado(/^preencho o campo Data de Nascimento$/) do
    Cadastro.new.cpf_valido
end

Dado(/^preencho o campo Telefone para Contato$/) do
    Cadastro.new.dt_nasc_valido
end

Dado(/^preencho o campo Telefone Celular$/) do
    Cadastro.new.phone_number
end

Dado(/^seleciono a opcao Desejo receber ofertas do Submarino pelo celular$/) do
    Cadastro.new.cell_phone
end

Dado(/^seleciono o Tipo de Endereco "([^"]*)"$/) do |arg1|
    Cadastro.new.address_type(arg1)
  end

Dado(/^preencho o campo CEP$/) do
    Cadastro.new.cep_valido
end

Dado(/^preencho o campo Numero$/) do
    Cadastro.new.num_valido
end

Dado(/^preencho o campo Complementos$/) do
    Cadastro.new.complemento_valido
end

Dado(/^preencho o campo Ponto de Referencia$/) do
    Cadastro.new.referencia_valido
end

Dado(/^clico em Cadastrar$/) do
    Cadastro.new.btn_cadastrar
end

Dado(/^efetuo um cadastro valido PF "([^"]*)"$/) do |arg1|
    Cadastro.new.valido(arg1)
end