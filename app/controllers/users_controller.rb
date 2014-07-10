class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
        if @user.save
          redirect_to log_in_path, :notice => "You are Signed Up!....Please Login once you sign up. This is part of the authentication process"
        else
        render "new"
        end
  end

  # just renders the page form for nonprofit.htm.erb no need to put anything in it  RMEMBER THIS  !!!!

  def nonprofit
  end

# this was your search....rmember params come from routes and views and instance variable come from controllers and variableon this side

  def search
    stuff = params[:q]
    ntee_id = params[:ntee_id]
    results = Typhoeus.get("https://projects.propublica.org/nonprofits/api/v1/search.json", :params => {:q => stuff, 'ntee[id]' => ntee_id })
    @nonprofit_result = JSON.parse(results.body)
   end
end
