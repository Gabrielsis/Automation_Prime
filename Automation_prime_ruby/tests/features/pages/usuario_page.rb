# frozen_string_literal: true

# :nodoc:
class CriaUsuario < SitePrism::Page
  set_url '/signup'
  element :email_login, '#spree_user_email'
  element :senha_login, '#spree_user_password'
  element :confirma_senha, '#spree_user_password_confirmation'
  element :botao_criar, '.button.primary'

  def preencher_cadastro
    email_login.set 'ogabriel13485@hotmail.com.br'
    senha_login.set '!QAZ2wsx123'
    confirma_senha.set '!QAZ2wsx123'
    botao_criar.click
  end
end
