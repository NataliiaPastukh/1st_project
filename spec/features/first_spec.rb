feature "Signing in to virtual application", js: true do

  scenario "Signing in with correct credentials" do
    visit 'http://10.33.40.16/login'
      fill_in 'Login', with: 'pastukhn'
      fill_in 'Password', with: 'Qwerty12345!'
      find(:xpath, '//*[@id="login-submit"]').click
    expect(page).to have_content 'Redmine'
  end
end