class HerosController < ApplicationController

    def index 
        hero = Hero.all
        render json: hero
    end 

    def show 
        hero_name = params[:id].capitalize()
        fz = FuzzyMatch.new(Hero.all, :read => :name)
        hero = fz.find("#{hero_name}")
        render json: hero
    end 


end
