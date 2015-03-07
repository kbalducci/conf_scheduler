class WelcomeController < ApplicationController

  def index
  @user = User.first
  user = current_user
  @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :fav_color, :dob, :phone)
  end
end
