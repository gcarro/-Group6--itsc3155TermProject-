class IndexController < ApplicationController
  def index
    @foods = Food.all
  end
  
  def show
    @foods = Food.find(params[:id])
    #redirect_to action: :reviews
  end

end