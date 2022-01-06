class TimersController < ApplicationController
    def index
        timers = Timer.all
        render json: timers
    end
end
