feature "Signing in to virtual application", js: true do

  scenario "Signing in with correct credentials" do
    @login_page = LoginPage.new

    @login_page.load
    @login_page.login_field.set 'pastukhn'
    @login_page.password_field.set 'Qwerty12345!'
    @login_page.login_button.click

    expect(page).to have_content 'Redmine'
  end
end