class MeetingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @meetings = Meeting.all
    user = User.find(params[:user_id])
    @users = User.all
    meetings = Meeting.all
    @room = Room.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    user = current_user
    @meeting.user_id = user.id
    respond_to do |format|
      if @meeting.save
        NotificationMailer.new_meeting(@meeting).deliver
        format.html { redirect_to user_meetings_path, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }

      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    def meeting_params
      params.require(:meeting).permit(:user_id, :room_id, :start_time, :end_time, :title)
    end
end
