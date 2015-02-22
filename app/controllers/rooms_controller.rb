class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    @users = User.all
    @rooms = Room.all
  end

end
