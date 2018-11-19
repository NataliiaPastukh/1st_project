feature "Registering with virtual application", js: true do

  scenario "Registering with valid data" do
    register_user("pastukhn#{new_timestamp}")
    expect(page).to have_content 'Redmine'
  end
end