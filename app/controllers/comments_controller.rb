class CommentsController < ApplicationController

  def index

  end

  def show
  
  end

  def new

  end

  def create
    @f = Comment.new(flopssip_id: params[:id], content: params[:content], user_id: session[:user_id])
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
