require 'spec_helper'

describe "StaticPages" do

	subject  { page }

  	describe "Home page" do
  		before { visit root_path }

    	it { should have_selector('h1', text: 'Recibos Online') }

    	it { should have_selector('title', text: full_title('')) }

    	it { should_not have_selector 'title', text: '| Home' }
    end

  	describe "Contactos page" do
  		before { visit contactos_path }

    	it { should have_selector('h1', text: 'Contactos') }

  		it { should have_selector('title', text: full_title('Contactos')) }
    end
end