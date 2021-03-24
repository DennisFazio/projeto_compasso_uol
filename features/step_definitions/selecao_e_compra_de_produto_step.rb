# frozen_string_literal: true

######  DADO  ######
Dado("que estou na home do site automationpractice") do
  home.load
  binding.pry
end

######  QUANDO  ######
Quando("realizo a busca pelo produto {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("seleciono para visualizar mais detalhes do produto") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("adiciono o primeiro produto ao carrinho") do
  pending # Write code here that turns the phrase above into concrete actions
end

######  ENTÃO  ######

Então("devo visualizar o detalhe do produto selecionado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo visualizar o produto no carrinho") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("finalizar o processo de compra do produto selecionado") do
  pending # Write code here that turns the phrase above into concrete actions
end
