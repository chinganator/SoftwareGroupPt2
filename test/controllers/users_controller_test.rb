require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success
    end 
  end
  context 'GET #show' do
    it 'returns a success response' do
      user = User.create!(email: 'eve', password_digest: 'maplestory' )
      get :show, params: { id: user.to_param }
      expect(response).to be_success
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
