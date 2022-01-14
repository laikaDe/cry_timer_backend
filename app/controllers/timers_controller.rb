class TimersController < ApplicationController


    def create 
        byebug
        timer = Timer.new(timer_params)

        if timer.save
            render json: timer
        end
    end

    def index
        timers = Timer.all
        render json: timers
    end

    private 

    def timer_params
        params.require(:timer).permit(:span, :description, :datetime)
    end
end
