require 'spec_helper'

describe "AuthenticationPages" do
  
  subject { page }

  describe "pesquisa page" do
  	before { visit pesquisa_path }

  	it { should have_selector('h1', text: 'Pesquisa') }
  	it { should have_selector('title', text: 'Pesquisa') }
  end

  describe "pesquisa" do
    before { visit pesquisa_path }

    describe "with invalid information" do
      before { click_button "Pesquisa" }

      it { should have_selector('title', text: 'Pesquisa') }
      it { should have_selector('div.alert.alert-error', text: 'Invalido') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:shop) { FactoryGirl.create(:shop) }
      before do
        fill_in "Name",    with: shop.name
        click_button "Pesquisa"
      end

      it { should have_selector('title', text: shop.name) }
      it { should have_link('Profile', href: shop_path(shop)) }
      it { should have_link('Sair', href: root_path) }
      it { should_not have_link('Pesquisa', href: pesquisa_path) }
    end
  end
end