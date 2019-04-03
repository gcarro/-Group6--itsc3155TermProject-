class IndexController < ApplicationController
  def index
    @foods = Food.all
  end
  
end
