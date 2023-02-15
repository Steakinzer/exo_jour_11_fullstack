class HomeController < ApplicationController
  def index
  @first_name = params[:first_name]
  @gossip = Flopssip.all.sort_by(&:id)
  @user = User.all

  end

  def welcome
  @first_name = params[:first_name]
  @gossip = Flopssip.all
  @user = User.all
   
  end

  def show
    @gossip = Flopssip.all
    @user = User.all
    @id = params[:id]
    @findgossip = Flopssip.find(params[:id])
  end
end
