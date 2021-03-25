class APIUsers
  def get_usuario_by_name(name)
    url = "#{API[AMBIENTE]}/users?name=#{name}"
    @header = { 'content-type': "application/json",
                'Authorization': "Bearer #{USER["token"]}" }

    response = HTTParty.get(url,
                            headers: @header)

    response
  rescue StandardError => e
    puts "Erro ao chamar a get_usuario_by_name"
    puts "Error message: #{e}"
  end

  def post_inserir_config(dados)
    url = "http://api.site.com.br/cadastro/item"
    token = get_token(USUARIO, SENHA)

    @header = { 'content-type': "application/json", 'Authorization': "Bearer #{token}" }
    @body = { 'descricao': "#{dados[:descricao]}" }
    response = HTTParty.post(url,
                             headers: @header,
                             body: @body)

    unless response.code == 200
      puts "post_inserir_config retornou sem sucesso"
      puts "Código: #{response.code}"
      puts "Mensagem: #{response.message}"
    end
  rescue StandardError => e
    puts "Erro ao chamar a post_inserir_config"
    puts "Error message: #{e}"
  end
end
