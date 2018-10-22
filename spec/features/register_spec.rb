feature "Registering with virtual application", js: true do

  scenario "Registering with valid data" do

    def time
      @time = Time.now.to_i
    end

    @register_page = RegisterPage.new
    @register_page.load
    @register_page.login_field.set "pastukhn#{time}"
    @register_page.password_field.set 'Qwerty12345!'
    @register_page.confirmation_field.set 'Qwerty12345!'
    @register_page.firstname_field.set 'Natalia'
    @register_page.lastname_field.set 'Pastukh'
    @register_page.email_field.set "pastukhn#{time}@gmail.com"
    #@register_page.hidemyemailaddress_checkbox.uncheck
    #@register_page.language_dropdown.select("Ukrainian (Українська)", :from => "language_dropdown")
    @register_page.submit_button.click
    expect(page).to have_content 'Redmine'
  end
end