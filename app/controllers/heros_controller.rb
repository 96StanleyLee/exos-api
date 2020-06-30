class HerosController < ApplicationController

    def index 
        hero = Hero.all
        render json: hero
    end 

    def show 
        hero_name = params[:id].capitalize()
        hero = Hero.where(name: hero_name)
        if hero.length == 0 
            render json: {"error": "Hero not found"}
        else
            render json: hero
        end


    end 


end
