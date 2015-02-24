class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  validates_presence_of :start_time, :end_time, :title

  # def meeting_author_email
  #   meeting.user.email
  # end
end
