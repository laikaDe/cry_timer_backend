class ReviewsController < ApplicationController

    def index 
        render json: Review.all
    end
    
    def create 
        byebug
        review = Review.new(review_params)

        if review.save
            render json: review
        else
            byebug
        end
    end

    def review_params
        params.require(:review).permit(:comment)
    end

end
