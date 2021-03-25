# frozen_string_literal: true

######  DADO  ######
Dado("que estou na home do site automationpractice") do
  home.load
end

######  QUANDO  ######
Quando("realizo a busca pelo produto {string}") do |nome_produto|
  home.busca_produto_home(nome_produto)
end

Quando("seleciono para visualizar mais detalhes do produto retornado") do
  search_result.clica_exibir_detalhe_produto_posicao(1)
end

Quando("adiciono o primeiro produto ao carrinho") do
  @produto_adicionado = search_result.adicionar_produto_carrinho_posicao(1)
end

######  ENTÃO  ######

Então("devo visualizar o detalhe do produto selecionado") do
  product_details.print_detalhes_produto
end

Então("devo visualizar o produto no carrinho") do
  @produto_carrinho = summary.retorna_valores_unico_produto_summary

  expect(@produto_adicionado[:nome]).to eql @produto_carrinho[:nome]
  expect(@produto_adicionado[:price]).to eql @produto_carrinho[:total_prod]
  expect(@produto_adicionado[:shipping]).to eql @produto_carrinho[:total_shipping]
  expect(@produto_adicionado[:total]).to eql @produto_carrinho[:total_cart]
end

Então("finalizar o processo de compra do produto selecionado") do
  summary.proceed_to_checkout

  authentication.realizar_login(USER["email"], USER["senha"])
  expect(USER["nome"].downcase).to eql (main_menu.retorna_usuario_logado).downcase
  PrintScreen.new.tira_print("usuario_logado", "passou")
  authentication.proceed_to_checkout

  shipping.aceitar_termos
  shipping.proceed_to_checkout

  payment.selecionar_pagamento_cheque
  expect("check payment").to eql (payment.retorna_tipo_pagamento).downcase
  payment.confirmar_pedido
  expect(page).to have_content "Your order on My Store is complete."
  PrintScreen.new.tira_print("pedido confirmado", "passou")
end
