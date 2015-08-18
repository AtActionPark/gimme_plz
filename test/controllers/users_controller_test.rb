require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @admin = users(:admin)
    @user = users(:user)
  end

  test "should redirect index when not logged in" do
    get :index
    assert_redirected_to user_session_path
  end

end
