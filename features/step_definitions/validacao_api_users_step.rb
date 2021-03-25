# frozen_string_literal: true

######  DADO  ######
Dado("quando realizado um get para api users sem passar parametros") do
  pending # Write code here that turns the phrase above into concrete actions
end

######  QUANDO  ######
Quando("quando realizado um get para users passando o nome {string}") do |name|
  @name = name
  @retorno = api_users.get_usuario_by_name(@name)
end

Quando("realizo um get para o endpoint posts com o primeiro ID User retornado do get anterior") do
  pending # Write code here that turns the phrase above into concrete actions
end

######  ENTÃO  ######

Então("devo validar se o statuscode retornou {int}") do |code|
  expect(@retorno["code"]).to eql code
end

Então("validar se todos users retornados contem o nome pesquisado") do
  ret = api_auxiliar_functions.verifica_retorno_apiuser_by_name(@retorno, @name)
  expect(ret).to eql "Todos os usuarios possuem o nome #{@name}"
end

Então("validar se todos os posts retornados são do usuário pesquisado") do
  pending # Write code here that turns the phrase above into concrete actions
end
