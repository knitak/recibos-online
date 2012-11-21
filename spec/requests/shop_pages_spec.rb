require 'spec_helper'

describe "ShopPages" do

	subject { page }

	describe "profile page" do
		let(:shop) { FactoryGirl.create(:shop) }
    before { visit shop_path(shop) }

  	it { should have_selector('h1',    text: shop.name) }
  	it { should have_selector('title', text: shop.name) }
  end

  describe "shop page" do
  	before { visit shops_path}

  	it { should have_selector('h1',    text: 'Shops') }
    it { should have_selector('title', text: full_title('Shops')) }
  end

  describe "shop" do

    before { visit shops_path }

    let(:submit) { "New shop" }

    describe "with invalid information" do
      it "should not create a shop" do
        expect { click_button submit }.not_to change(Shop, :count)
      end

      describe "after submission" do
        before { click_button submit }

        it { should have_selector('title', text: 'Shops') }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Loja"
        fill_in "Address",      with: "Rua Sobe e Desce"
        fill_in "Postalcode",   with: "1234-567"
      end

      it "should create a shop" do
        expect { click_button submit }.to change(Shop, :count).by(1)
      end

       describe "after saving the shop" do
        before { click_button submit }
        let(:shop) { Shop.find_by_postalcode('1234-567') }

        it { should have_selector('title', text: shop.name) }
        it { should have_selector('div.alert.alert-success', text: 'Bem vindo/a') }
      end
    end
  end
end