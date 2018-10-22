feature "Signing in to virtual application", js: true do

  scenario "Signing in with correct credentials" do
    @login_page = LoginPage.new

    #def time
      time = Time.now.to_i
    #end

    @login_page.load
    @login_page.login_field.set "pastukhn#{time}"
    @login_page.password_field.set 'Qwerty12345!'
    @login_page.login_button.click
    #find(:xpath, '//*[@id="login-submit"]').click
    expect(page).to have_content "Logged in as pastukhn"
  end
end