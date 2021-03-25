# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class MainMenu < SitePrism::Page
  element :field_logged_user, 'a[title="View my customer account"]', wait: 5

  def retorna_usuario_logado
    usuario = field_logged_user.text
    find('a[title="View my customer account"]').hover
    usuario
  end
end
