class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    @users = User.all
    @rooms = Room.all.page params[:page]
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    # @meeting = Meeting.find(params[:id])
    # @comment.meeting_id = @meeting.id
    # user = User.find(params[user.id])
    #@meeting = @room.meetings.new
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'User was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render "welcome/index" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
    end

  private
  def room_params
    params.require(:room).permit(:room_name, :location, :description, :photo,
                                 :meetings_attributes => [:user_id, :room_id, :start_time, :end_time, :title]
                                 )
  end

end
