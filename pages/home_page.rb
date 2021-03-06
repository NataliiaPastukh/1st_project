class HomePage < SitePrism::Page
  set_url 'http://10.33.40.219/'

  # section menu, MenuSection, :xpath, '//*[@id="top-menu"]'

   element :home_link, :xpath,'//*[@id="top-menu"]/ul/li[1]/a'
   element :mypage_link, :xpath,'//*[@id="top-menu"]/ul/li[2]/a'
   element :projects_link, :xpath, '//*[@id="top-menu"]/ul/li[3]/a'
   element :administration_link, :xpath, '//*[@id="top-menu"]/ul/li[4]/a'
   element :help_link, :xpath, '//*[@id="top-menu"]/ul/li[5]/a'
   element :user_link, '#loggedas > a.user.active'
   element :myaccount_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
   element :signout_link, :xpath, '//*[@id="account"]/ul/li[2]/a'

end
