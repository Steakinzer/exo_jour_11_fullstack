class AuthorController < ApplicationController
  def author
    @author = User.find(params[:author])
  end
end
