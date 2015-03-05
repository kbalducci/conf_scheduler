require 'twilio-ruby'

class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments
  validates_presence_of :start_time, :end_time, :title, reject_if: :all_blank
  validates :room_id, :title, presence: true

  def self.establish_twilio
    @account_sid = Figaro.env.twilio_sid
    @auth_token = Figaro.env.auth_token
    @from_phone_number = "512-456-3275"
    @twilio_client = Twilio::REST::Client.new(@account_sid, @auth_token)
  end

  def self.send_text(body)
    Appointment.establish_twilio
    @twilio_client.messages.create(to: "512-731-1220",
                                  from: @from_phone_number,
                                  body: body)
  end
end
