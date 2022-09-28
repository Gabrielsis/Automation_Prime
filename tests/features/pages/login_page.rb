# frozen_string_literal: true

# :nodoc:
class LogarUsuario < SitePrism::Page
  set_url '/login'
  element :email_login, '#spree_user_email'
  element :senha_login, '#spree_user_password'
  element :botao_logar, '.button.primary'

  def preenche_usuario
    email_login.set 'ogabriel1345@hotmail.com.br'
    senha_login.set '!QAZ2wsx123'
    botao_logar.click
  end
end
