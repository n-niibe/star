require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}  | Home")
    end
    it "should have the content 'Star'" do
      visit '/static_pages/home'
      expect(page).to have_content('Star')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "'Contact'というコンテンツを持っているべきです" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "'Contact'というタイトルであるべきです" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
