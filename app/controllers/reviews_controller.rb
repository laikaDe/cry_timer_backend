class ReviewsController < ApplicationController

    def index 
        render json: Review.all
    end
    
    def create 
        review = Review.new(review_params)

        if review.save
            render json: review
        else
            
        end
    end

    def review_params
        params.require(:review).permit(:comment, :timer_id)
    end

end
