class ReviewsController < ApplicationController

    before_action :set_review, only: [:destroy]


    def index
        render json: Review.all
    end


    def create    
        review = Review.new(review_params)

        if review.save
            render json:review
        else
            byebug
        end
    end

    def destroy 
        review.destroy
    end

    private 

    def set_review 
        review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:comment, :mood_id)
    end
end