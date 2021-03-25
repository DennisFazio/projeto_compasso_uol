class APIAuxiliarFunctions
  def verifica_retorno_apiuser_by_name(retorno, name)
    body = JSON.parse(retorno.body)
    ret = "Todos os usuarios possuem o nome #{name}"
    body["data"].each do |user|
      #   puts user["name"]
      if user["name"][name].nil? == true
        ret = "Usuario #{user["name"]} não posssui o nome #{name} pesquisado"
        break
      end
    end
    ret
  end

  def retorna_dados_primeiro_user(retorno)
    if retorno["code"] == 200
      body = JSON.parse(retorno.body)
      usuario = {}
      usuario["id"] = body["data"][0]["id"]
      usuario["name"] = body["data"][0]["name"]
      usuario["email"] = body["data"][0]["email"]
      usuario["gender"] = body["data"][0]["gender"]
      usuario["status"] = body["data"][0]["status"]
      usuario["created_at"] = body["data"][0]["created_at"]
      usuario["updated_at"] = body["data"][0]["updated_at"]
    else
      puts "Erro ao chamar a retorna_dados_primeiro_user"
      puts "Status code diferente de 200. Status code encontrado: #{retorno["code"]}"
    end
    usuario
  end

  def verifica_retorno_posts_by_id(retorno, user_id)
    body = JSON.parse(retorno.body)
    ret = "Todos os posts são do user_id #{user_id}"
    body["data"].each do |post|
      puts post["title"]
      if post["user_id"] != user_id
        ret = "Post numero #{post["id"]} não pertence ao user_id #{user_id}"
        break
      end
    end
  end
end
