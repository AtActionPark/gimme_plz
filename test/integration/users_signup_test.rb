require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

 def setup
    
  end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
    end
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "Example User",
                                            email: "exuser@example.com",
                                            password:              "password",
                                            password_confirmation: "password" }
    end
  end

end