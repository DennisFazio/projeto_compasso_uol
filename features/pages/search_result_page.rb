# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Search_Result < SitePrism::Page
  sections :items_returned, ProdutosRetornados, 'li[class*="ajax_block_product"]'

  def clica_exibir_detalhe_produto_posicao(posicao)
    posicao -= 1
    item = items_returned[posicao]
    all('li[class*="ajax_block_product"]')[posicao].hover
    PrintScreen.new.tira_print("produto_hover", "passou")
    all('li[class*="ajax_block_product"]')[posicao].hover
    item.btn_more.click
  end
end
