class NonprofitsController < ApplicationController

# this variable was made to have something to pass to the page
  # def index
  #     @nonprofits = Nonprofit.all
  #     respond_to do |f|
  #     f.json { render :json => @nonprofits}
# for a json only return
  #     http://localhost:3000/nonprofits.json
  #   end
  # end

  def new
    @nonprofit = Nonprofit.new
  end

  def create
    donation = params.require(:donation).permit(:name, :amount)
    nonprofit = current_user.nonprofits.create(donation)
    # redirect_to nonprofit_path(nonprofit.id)
      redirect_to results_path(nonprofit.id)
  end

# this searches the nonprofits table to find JUST the nonprofits that the currently signed on user has donated to....I got lots of help on this
  def show
    @nonprofits_search = Nonprofit.where(:user_id => current_user.id)
    @user = current_user
  end
end
