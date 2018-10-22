class LoginPage < SitePrism::Page
  set_url 'http://10.33.40.54/login'

  element :login_field, :xpath,'//*[@id="username"]'
  element :password_field, '#password'
  element :login_button, :xpath, '//*[@id="login-submit"]'
end