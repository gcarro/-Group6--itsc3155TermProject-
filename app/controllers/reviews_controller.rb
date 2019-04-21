class ReviewsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
       
        puts params[:foodId]
        @foods = Food.find_by_Ident(params[:foodId])
        @reviews = Review.where({ident: params[:foodId]})
        puts @reviews
        render "description.html.erb"
    end
    
    def new
        @reviews = Review.new
    end
    def show
       @foods = Food.all
        render "index.html.erb"
    end
    def create
        @reviews = Review.new
        @reviews.ident = params[:foodId]
        @reviews.username = params[:username]
        @reviews.body = params[:body]
        @reviews.save
        redirect_to "/reviews?foodId=" + params[:foodId]
    end
end

private
    def review_params
        params.require().permit(:foodId, :username, :body)
    end
