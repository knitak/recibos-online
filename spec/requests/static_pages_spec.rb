require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Recibos Online'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Recibos Online')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Bem vindo a Recibos Online | Home")
    end
  end

  describe "Contactos page" do

    it "should have the h1 'Contactos'" do
      visit '/static_pages/contactos'
      page.should have_content('Contactos')
  	end

  	it "should have the title 'Contactos'" do
      visit '/static_pages/contactos'
      page.should have_selector('title',
                        :text => "Bem vindo a Recibos Online | Contactos")
  	end
  end
end