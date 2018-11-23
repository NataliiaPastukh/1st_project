feature "My page loading testing", js: true do

  scenario "Loading my page" do
    register_user("pastukhn#{new_timestamp}")
    #login_user("pastukhn#{new_timestamp}")
    @home_page = HomePage.new
    @home_page.load
    @home_page.mypage_link.click
    expect(page).to have_current_path "/my/page"
    expect(page).to have_content "Issues assigned to me (0)"
    expect(page).to have_content "Reported issues (0)"
  end
end