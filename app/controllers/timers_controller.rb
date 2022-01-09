class TimersController < ApplicationController


    def create 
        byebug
    end

    def index
        timers = Timer.all
        render json: timers
    end
end
