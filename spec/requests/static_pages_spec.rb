require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content 'Sample App'" do
      visit '/staticpages/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit '/staticpages/home'
      page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help page" do
    it "should have content 'Help'" do
      visit "/staticpages/help"
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About page" do
    it "should have content 'About Us'" do
      visit "/staticpages/about"
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
