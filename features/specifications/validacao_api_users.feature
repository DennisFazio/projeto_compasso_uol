      #language: pt

      Funcionalidade: validar a API users com seus retornos e códigos
      -- Eu como usario do sistema quero fazer uma requisicao para API https://gorest.co.in/public-api/users
      -- E conseguir validar seus conteudo e o codigo de retorno

      @webservice @get_specific_user
      Cenario: validar se a API está retornando o código 200 e os dados corretos
      Quando quando realizado um get para users passando o nome '<Naik>'
      Então devo validar se o statuscode retornou 200
      E validar se todos users retornados contem o nome pesquisado

      @webservice @get_posts
      Cenario: validar se a API está retornando o código 200 e os dados corretos
      Dado quando realizado um get para api users sem passar parametros
      Quando realizo um get para o endpoint posts com o primeiro ID User retornado do get anterior
      Então devo validar se o statuscode retornou 200
      E validar se todos os posts retornados são do usuário pesquisado

