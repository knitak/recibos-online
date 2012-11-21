class SessionsController < ApplicationController

  def new
  	
  end

  def create
    @shop = Shop.find_by_name(params[:session][:name])
  	redirect_to @shop
  #else
   # flash.now[:error] = 'Loja inexistente'
    #render 'new'
  end
  #def show
   # redirect_to @shop
  #end

  def destroy
  	redirect_to root_url
  end
end
