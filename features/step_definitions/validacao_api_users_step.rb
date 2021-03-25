# frozen_string_literal: true

######  DADO  ######
Dado("quando realizado um get para api users sem passar parametros") do
  @retorno_lista_usuarios = api_users.get_todos_usuarios
end

Dado("seleciono o primeiro usuario da lista") do
  @user = api_auxiliar_functions.retorna_dados_primeiro_user(@retorno_lista_usuarios)
end

######  QUANDO  ######
Quando("quando realizado um get para users passando o nome {string}") do |nome|
  @name = nome
  @retorno = api_users.get_usuario_by_name(@name)
end

Quando("realizo um get para o endpoint posts com o primeiro ID User retornado do get anterior") do
  #Coloquei esse post aqui pois em alguns testes o usuário buscado não tinha post.
  #Isso garante que pelo menos um post terá.
  api_users.post_posts_by_username_id(@user["id"])
  @retorno = api_users.get_posts_by_username_id(@user["id"])
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
  expect(@retorno["code"]).to eql 200
  ret = api_auxiliar_functions.verifica_retorno_posts_by_id(@retorno, @user["Id"])
end
