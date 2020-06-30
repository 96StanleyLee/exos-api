class StatsController < ApplicationController

    def index 
        stat = Stat.find(1)
        render json: stat
    end 
end
