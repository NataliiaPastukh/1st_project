module FeatureHelper
  def new_timestamp
    @time ||= Time.now.to_i
  end

  def register_user(user)
    @register_page = RegisterPage.new
    @register_page.load
    @register_page.login_field.set user
    @register_page.password_field.set 'Qwerty12345!'
    @register_page.confirmation_field.set 'Qwerty12345!'
    @register_page.firstname_field.set 'Natalia'
    @register_page.lastname_field.set 'Pastukh'
    @register_page.email_field.set user + '@gmail.com'
    @register_page.hidemyemailaddress_checkbox.click
    @register_page.language_dropdown.select("English")
    @register_page.submit_button.click
  end

  def login_user(user)
    @login_page = LoginPage.new
    @login_page.load
    @login_page.login_field.set user
    @login_page.password_field.set 'Qwerty12345!'
    @login_page.login_button.click
    expect(page).to have_content "Logged in as pastukhn"
  end
end