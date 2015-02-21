class WelcomeController < ApplicationController

  def index
  @user = User.first
  user = current_user
  @users = User.all
  end

end
