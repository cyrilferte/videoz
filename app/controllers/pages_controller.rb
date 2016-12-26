class PagesController < ApplicationController
  def home
    @home = Home.last
    @film = Film.where(:titre => @home.film)
    @films = Film.all
   
  end
end
