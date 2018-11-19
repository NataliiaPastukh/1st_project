feature "Signing in to virtual application", js: true do

  scenario "Signing in with correct credentials" do
    register_user("pastukhn#{new_timestamp}")
    login_user("pastukhn#{new_timestamp}")
    expect(page).to have_content "Logged in as pastukhn"
  end
end