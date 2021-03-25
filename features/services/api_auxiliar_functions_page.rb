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
end
