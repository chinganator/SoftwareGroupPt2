require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "user should save" do
    assert User.new(email: 'Email', password_digest: 'Password').save
  end 

end
