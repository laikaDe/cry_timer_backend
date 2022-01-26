class MoodsController < ApplicationController


    def create 
        
        mood = Mood.new(mood_params)

        if mood.save
            render json: MoodSerializer.new(mood)
        end
    end

    def index
        render json: Mood.all.map {|mood| MoodSerializer.new(mood)}
    end

    # def destroy
    #     byebug
    #     mood = Mood.find(params[:id])
    #     mood.destroy
    # end

    private 

    def mood_params
        params.require(:mood).permit(:description, :datetime)
    end
end
