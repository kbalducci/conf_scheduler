require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_many(:meetings)}

  describe 'full_name' do
    it "returns the user's full name" do
      user = User.new(first_name: 'Kate', last_name: 'Balducci')
      full_name = user.full_name
      expect(user.full_name).to eq('Kate Balducci')
    end
  end
end
