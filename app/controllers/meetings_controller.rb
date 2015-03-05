class MeetingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @meetings = Meeting.all
    user = User.find(params[:user_id])
    @users = User.all
    @room = Room.all
  end

  def show
    @meetings = Meeting.all
    user = User.find(params[:user_id])
    @users = User.all
    @room = Room.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
    @meeting.room_id = Room.find(params[:room_id]).id if params[:room_id]
    respond_to do |format|
      if @meeting.save
        Appointment.send_reminder_text_message("What: #{@meeting.title}
                                                When: #{@meeting.start_time}")
        NotificationMailer.new_meeting(@meeting).deliver
        format.html { redirect_to room_path(@meeting.room_id), notice: 'Meeting was successfully created.' }
      else
        format.html { redirect_to root_path, notice: "Something went wrong" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    def meeting_params
      params.require(:meeting).permit(:user_id, :room_id, :start_time, :end_time, :title)
    end
end
