class HomeController < ApplicationController
  def index

  end

  def welcome
  p params
  @first_name = params[:first_name]

  end
end
