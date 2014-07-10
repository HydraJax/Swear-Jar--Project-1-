class SessionsController < ApplicationController
def new
  @user = User.new
end

# I got help setting up this and the sign on pages from this screencast as I did not want to use a plug in or gem.......I tried to work thru the tutorial and insert my own code but it pucked like an ultra high pressure vomit hose, but I understood the logic......http://railscasts.com/episodes/250-authentication-from-scratch

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
     redirect_to users_nonprofit_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end


