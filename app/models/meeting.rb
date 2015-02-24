class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  validates_presence_of :start_time, :end_time, :title, reject_if: :all_blank
  validates :room_id, :title, presence: true


  # def room_location
  #   if room
  #     room.location
  #   else
  #     "no room chosen"
  #   end
  # end

  # def room_name_name
  #   if room
  #     room.room_name
  #   else
  #     "no room name chosen"
  #   end
  # end
end
