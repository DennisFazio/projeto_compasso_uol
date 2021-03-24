Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Product_Details < SitePrism::Page
  def print_detalhes_produto
    PrintScreen.new.tira_print("detalhes_produtos_1", "passou")
    find("#product_comments_block_tab").hover
    PrintScreen.new.tira_print("detalhes_produtos_2", "passou")
  end
end
