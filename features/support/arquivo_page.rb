# frozen_string_literal: true

class ArquivosOutput
  def cria_arquivo(caminho_arquivo, nome_arquivo)
    nome_arq = nome_arquivo.gsub(/\s+/, "_").tr("/#", "_c")
    arquivo = File.new(Dir.pwd + "#{caminho_arquivo}#{nome_arq}.txt", "a+")
    arquivo.close
    arquivo
  end

  def registra_usuario_encontrado(texto)
    if $caminho_usuario_encontrado.nil?
      # Cria o nome do arquivo
      nome_arquivo = "usuario_encontrado_#{Time.now.year}_#{Time.now.month}_#{Time.now.day}_#{Time.now.hour}"
      # cria o arquivo
      $caminho_usuario_encontrado = cria_arquivo("/Logs/txt/", nome_arquivo)
    end
    # Abre o arquivo criado
    arquivo = File.new($caminho_usuario_encontrado, "a+")

    # Grava os dados no arquivo
    arquivo.puts texto
    arquivo.close unless arquivo.closed?
    # binding.pry
  end

  def registra_post_encontrados(texto)
    if $caminho_post_encontrados.nil?
      # Cria o nome do arquivo
      nome_arquivo = "post_encontrados_#{Time.now.year}_#{Time.now.month}_#{Time.now.day}_#{Time.now.hour}"
      # cria o arquivo
      $caminho_post_encontrados = cria_arquivo("/Logs/txt/", nome_arquivo)
    end
    # Abre o arquivo criado
    arquivo = File.new($caminho_post_encontrados, "a+")

    # Grava os dados no arquivo
    arquivo.puts texto
    arquivo.close unless arquivo.closed?
    # binding.pry
  end
end
