require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Recibos Online'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Recibos Online')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Recibos Online")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Contactos page" do

    it "should have the h1 'Contactos'" do
      visit '/static_pages/contactos'
      page.should have_content('Contactos')
  	end

  	it "should have the base title" do
      visit '/static_pages/contactos'
      page.should have_selector('title',
                        :text => "Contactos")
    end

    it "should not have a custom page title" do
      visit '/static_pages/contactos'
      page.should_not have_selector('title', :text => '| Contactos')
    end
  end
end