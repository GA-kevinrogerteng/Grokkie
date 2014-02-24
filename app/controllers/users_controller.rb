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
  end

  private
  def user_params
  	
  end
end
