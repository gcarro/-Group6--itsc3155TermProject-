class ReviewsController < ApplicationController
    def index
       
        @reviews = Review.all
        puts params[:foodId]
        
        @foods = Food.find_by_Ident(params[:foodId])
        
        @reviews = Review.find_by_ident(params[:foodId])
        render "description.html.erb",food: @foods,review: @reviews
    end
    
    def new
        @reviews = Review.new
    end
    
   
end