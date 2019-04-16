class ReviewsController < ApplicationController
    def index
       
        @reviews = Review.all
        puts params[:foodId]
        
        @foods = Food.find(params[:foodId])
        puts @foods.name
        @reviews = Review.where(:ident => params[:foodId])
        render "description.html.erb",food: @foods
    end
    
    def new
        @reviews = Review.new
    end
    
   
end