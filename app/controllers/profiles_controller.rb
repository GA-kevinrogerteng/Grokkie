class ProfilesController < ApplicationController
  def index
  	@profile = current_user.profiles
  end

  def edit
  end

  def update
  end
end
