class ShopsController < ApplicationController
  def new
  	@shop = Shop.new
    redirect_to :index

  end

  def show
  	@shop = Shop.all
  end

  def index   
    redirect_to  @shop_id
  end

  def create
  	@shop = Shop.new(params[:shop])
  	if @shop.save
      session[:shop_id] = @shop.id
      flash[:success] = "Bem vindo/a a Recibos Online"
  		redirect_to  @shop#:action => :show, :id => @shop.id
  	else
  		render 'new'
    end
  end
end