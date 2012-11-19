require 'spec_helper'

describe "ShopPages" do

	subject { page }

  describe "shop page" do
  	before { visit shop_path}

  	it { should have_selector('h1',    text: 'Shops') }
    it { should have_selector('title', text: full_title('Shops')) }
  end
end
