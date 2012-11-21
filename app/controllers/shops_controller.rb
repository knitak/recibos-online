class ShopsController < ApplicationController
  def new
  	@shop = Shop.new
  end

  def show
  	@shop = Shop.find(params[:id])
  end

  def index
  	
  end

  def create
  	@shop = Shop.new(params[:shop])
  	if @shop.save
      flash[:success] = "Bem vindo/a a Recibos Online"
  		redirect_to show
  	else
  		render 'new'
  	end 	
  end
end
