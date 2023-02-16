class SessionsController < ApplicationController
  def index

  end
  
  def new

  end

  def create
    p params
    puts'$'*50
    p session
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password_digest])
      session[:user_id] = user.id
      redirect_to sessions_path

    else
      puts "t'as faux pelo"
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end

  
  end

  def destroy
    
  end
end
