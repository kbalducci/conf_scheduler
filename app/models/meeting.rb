class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments
  validates_presence_of :start_time, :end_time, :title, reject_if: :all_blank
  validates :room_id, :title, presence: true
end
