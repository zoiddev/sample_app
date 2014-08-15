require 'spec_helper'

describe "StaicPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the base title'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

 describe "About Us" do
   it "should have content 'About Us'" do
     visit '/static_pages/about'
     expect(page).to have_content('About Us')
   end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
 end
 
 describe "Contact" do
   it "should have content 'Contact'" do
     visit '/static_pages/contact'
     expect(page).to have_content('Contact')
   end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
 end
end

