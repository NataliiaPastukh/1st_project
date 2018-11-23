class LoginPage < SitePrism::Page
  set_url 'http://10.33.40.219/login'

  # section menu, MenuSection, :xpath, '//*[@id="top-menu"]'

  element :login_field, '#username' #:xpath,'//*[@id="username"]'
  element :password_field, '#password'
  element :login_button, :xpath, '//*[@id="login-submit"]'
end