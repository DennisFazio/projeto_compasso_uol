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

  def get_todos_usuarios
    url = "#{API[AMBIENTE]}/users"
    @header = { 'content-type': "application/json",
                'Authorization': "Bearer #{USER["token"]}" }

    response = HTTParty.get(url,
                            headers: @header)

    response
  rescue StandardError => e
    puts "Erro ao chamar a get_todos_usuarios"
    puts "Error message: #{e}"
  end

  def get_posts_by_username_id(id)
    url = "#{API[AMBIENTE]}/users/#{id}/posts"
    @header = { 'content-type': "application/json",
                'Authorization': "Bearer #{USER["token"]}" }

    response = HTTParty.get(url,
                            headers: @header)

    response
  rescue StandardError => e
    puts "Erro ao chamar a get_posts_by_username_id"
    puts "Error message: #{e}"
  end

  def post_posts_by_username_id(id)
    url = "#{API[AMBIENTE]}/users/#{id}/posts"
    @header = { 'content-type': "application/json",
                'Accept': "application/json",
                'Authorization': "Bearer #{USER["token"]}" }
    @body = { "title": "post da automacao #{Time.now}",
              "body": "blablablablablablablabalb #{Time.now}" }

    response = HTTParty.post(url,
                             headers: @header,
                             body: @body)

    response
  rescue StandardError => e
    puts "Erro ao chamar a get_posts_by_username_id"
    puts "Error message: #{e}"
  end
end
