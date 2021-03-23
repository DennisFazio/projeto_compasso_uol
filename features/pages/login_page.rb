# frozen_string_literal: true

# Pagina de login
class LoginPage < SitePrism::Page
  element :email, 'input[ng-model="loginCtrl.form.username"]'
  element :senha, 'input[ng-model="loginCtrl.form.password"]'
  element :btn_login, 'button[type="submit"]'

  set_url "/"

  def login
    @usuario_logado = USUARIO["Nomeusuario"]
    @email_logado = USUARIO["username"]
    senha = USUARIO["senha"]
    email.set @email_logado
    senha.set senha
    btn_login.click
  end
end
