# frozen_string_literal: true

class Home < SitePrism::Page
  set_url ""

  element :product_search_top, "#search_query_top"
  element :btn_submit_search, 'button[name="submit_search"]'

  def busca_produto_home(nome_produto)
    product_search_top.set nome_produto
    btn_submit_search.click
  end

  def busca_prod
    @email_logado = USUARIO["username"]
    senha = USUARIO["senha"]
    email.set @email_logado
    senha.set senha
  end
end
