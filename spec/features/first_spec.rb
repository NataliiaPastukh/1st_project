feature "Signing in to virtual application", js: true do

  scenario "Signing in with correct credentials" do
    register_user("pastukhn#{new_timestamp}")
    @home_page = HomePage.new
    @home_page.load
    @home_page.signout_link.click
    @login_page = LoginPage.new
    @login_page.load
    login_user("pastukhn#{new_timestamp}")
    expect(page).to have_content "Logged in as pastukhn"
  end
end