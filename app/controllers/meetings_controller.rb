class MeetingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @meetings = Meeting.all
    # user = User.new(user_params)
    user = User.find(params[:user_id])
    # @user = User.first
    @users = User.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    user = current_user
    @meeting.user_id = user.id
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to users_path, notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }

      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    def meeting_params
      params.require(:meeting).permit(:user_id, :start_time, :end_time, :title)
    end
end
