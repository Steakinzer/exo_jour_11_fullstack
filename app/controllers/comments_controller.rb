class CommentsController < ApplicationController

  def index

  end

  def show
  
  end

  def new

  end

  def create
    @user_id = 10
    puts "ù"*100
    puts params
    @f = Comment.new(flopssip_id: params[:id], content: params[:content], user_id: @user_id)
    if @f.save
      redirect_to gossip_path(params[:id])
    else
      @f.errors.full_messages
      render :new
    end
  end

  def update

  end

  def edit

  end
end
