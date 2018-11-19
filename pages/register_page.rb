class RegisterPage < SitePrism::Page
  set_url 'http://10.33.40.219/account/register'

  element :login_field, '#user_login'
  element :password_field, '#user_password'
  element :confirmation_field, '#user_password_confirmation'
  element :firstname_field, '#user_firstname'
  element :lastname_field, '#user_lastname'
  element :email_field, '#user_mail'
  element :hidemyemailaddress_checkbox, '#pref_hide_mail'#:xpath, '//*[@id="pref_hide_mail"]'
  element :language_dropdown, '#user_language'#:xpath, '//*[@id="user_language"]'
  element :submit_button, :xpath, '//*[@id="new_user"]/input[3]'

end