module SessionsHelper
  def pesquisa
	self.current_shop = shop
  end

  def current_shop=(shop)
    @current_shop = shop
  end

  def current_shop
    @current_shop ||= Shop.find_by_name
  end
end
