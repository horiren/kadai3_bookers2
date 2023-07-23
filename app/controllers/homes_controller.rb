class HomesController < ApplicationController
  def top
  end
  
  def about
  end
  
  def create
    @home = Home.new(home_params)
    if @home.save
      flash[:notice] = "Signed out successfully."
      redirect_to homes_top_path(@home.id)
    else
      render :new
    end
  end
end
