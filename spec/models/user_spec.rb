require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create!(email: "test", password_digest: "maplestory")
  end 

  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new(password_digest: 'maplestory').save
      expect(user).to eq(false)
    end 
    it 'ensures first name presence' do
      user = User.new(email: 'eve').save
      expect(user).to eq(false)
    end 
  end 
  context 'GET #create' do
    it 'create user' do
      expect(User.all.count).to eq(1)
    end 
  end 
  describe "validations" do
    it "should not let user create without user" do
      @user.email = nil
      expect(@user).to_not be_valid
    end 
  end 

  

end
