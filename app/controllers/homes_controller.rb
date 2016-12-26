class HomesController < ApplicationController
    def new
     @home= Home.new
     @films= Film.all
    end
  def create
    @home = Home.new(home_params)
    if @home.save
        redirect_to root_path
   else
     render :new
    end
  end
  
  private

  def home_params
    params.require(:home).permit(:film, :group)
  end
end
