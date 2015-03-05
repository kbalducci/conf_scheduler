require 'twilio-ruby'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :meetings
  has_many :comments
  validates_presence_of :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end

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
