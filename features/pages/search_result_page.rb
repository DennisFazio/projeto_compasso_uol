# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Search_Result < SitePrism::Page
  sections :items_returned, ProdutosRetornados, 'li[class*="ajax_block_product"]'
  section :modal_added_to_cart, ModalAddedCart, "#layer_cart"

  def clica_exibir_detalhe_produto_posicao(posicao)
    posicao -= 1
    item = items_returned[posicao]
    all('li[class*="ajax_block_product"]')[posicao].hover
    PrintScreen.new.tira_print("produto_hover", "passou")
    all('li[class*="ajax_block_product"]')[posicao].hover
    item.btn_more.click
  end

  def adicionar_produto_carrinho_posicao(posicao)
    posicao -= 1
    item = items_returned[posicao]
    all('li[class*="ajax_block_product"]')[posicao].hover
    item.btn_add_cart.click

    produto = {}
    produto[:nome] = modal_added_to_cart.field_product_name.text
    produto[:price] = modal_added_to_cart.field_product_price.text
    produto[:shipping] = modal_added_to_cart.field_product_shipping.text
    produto[:total] = modal_added_to_cart.field_cart_total.text
    PrintScreen.new.tira_print("produto_adicionado", "passou")
    modal_added_to_cart.btn_proceed_to_checkout.click
    produto
  end
end
