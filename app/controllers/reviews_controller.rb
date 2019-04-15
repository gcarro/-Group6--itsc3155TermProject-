class ReviewsController < ApplicationController
    def index
        render "description.html.erb"
        @reviews = Review.all
        puts params[:foodId]
        
        @food = Food.find(params[:foodId])
        @reviews = Review.where(:ident => params[:foodId])
    end
    
    def new
        @reviews = Review.new
    end
    
   
end