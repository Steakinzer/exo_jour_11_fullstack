class HomeController < ApplicationController
  def index

  end

  def welcome
  p params
  @first_name = params[:first_name]
  @gossip = Flopssip.all
  @user = User.all
  end

  def show
    @gossip = Flopssip.all
    @user = User.all
    @id = params[:id]

  end

end
