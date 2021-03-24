      #language: pt

      Funcionalidade: Validar a busca e finalização de compra de um produto
      -- Eu como usuario quero conseguir pesquisar um produto no site
      -- visualizar os detalhes sobre este produto
      -- Caso eu goste do produto quero adicionar ele ao carrinho e finalizar minha compra
      -- Caso eu não goste, quero voltar e selecionar outro produto

      Contexto: Estou logado na home do site
      Dado que estou na home do site automationpractice
      
      @web_front @product_details
      Esquema do Cenario: Pesquisar um produto e visualizar seus detalhes
      Quando realizo a busca pelo produto '<produto>'
      E seleciono para visualizar mais detalhes do produto retornado
      Então devo visualizar o detalhe do produto selecionado

      Exemplos:
      | produto            |
      | Faded Short Sleeve |

      @web_front @buying_product
      Cenario: selecionar um produto randomico em uma lista e finalizar a compra
      Quando realizo a busca pelo produto 'Faded Short Sleeve'
      E adiciono o primeiro produto ao carrinho
      Então devo visualizar o produto no carrinho
      E finalizar o processo de compra do produto selecionado


