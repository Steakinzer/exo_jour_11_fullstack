class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @gossip = @city.flopssips
    @user = User.all
  end
end

