class TimersController < ApplicationController


    def create 
        
        timer = Timer.new(timer_params)

        if timer.save
            render json: TimerSerializer.new(timer)
        end
    end

    def index
        render json: Timer.all.map {|timer| TimerSerializer.new(timer)}
    end

    # def destroy
    #     byebug
    #     timer = Timer.find(params[:id])
    #     timer.destroy
    # end

    private 

    def timer_params
        params.require(:timer).permit(:span, :description, :datetime)
    end
end
