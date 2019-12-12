require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = user(:one)
  end  
  
  test "should get index" do
     get users_url
     assert_response :success
   end

   test "should get new" do
    get new_user_url
    assert_response :success
   end 

  assert_redirected_to user_url(User.last)
  end 
   test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: {email: @user.email, password: @user.password_digest}}
    end 
    
    test "should show user" do
      get users_url(@user)
      assert_response :success
    end 

    test "should get edit" do
      get edit_user_irl(@user)
      assert_response :success

    end 
    test "should update user" do
      patch users_url(@user), params: { user: {email: @user.email, password: @user.password_digest}}
      assert_redirected_to user_url(@user)
    end

    test "should destroy user" do
      assert_difference('User.count', -1) do
        delete users_url(@user)
    end

    assert_redirected_to users_url
  end   

end
