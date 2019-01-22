require 'rails_helper'

RSpec.describe User, type: :model do
  
  before :each do
    @user = User.new(
      name: 'Michael',
      email: 'test@test.com',
      password_digest: 'password'
    )
    @user.save
  end

  describe 'user validations' do
    it 'should save for all user fields set' do
      expect(@user).to be_valid
    end
    


  end
end
