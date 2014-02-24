class UsersController < ApplicationController
  def show
  	id = params[:id]
  	@user = User.find(id)
  end

  def edit
  	id = params[:id]
  	@user = User.find(id)
  end

  def update
  	id = params[:id]
  	user = User.find(id)
  	user.update(user_params)
  	redirect_to user_path(user)
  end

  private
  def user_params
  	params.require(:user).permit(:email, :username, :twitter_name, :github_name, :bio)
  end
end
