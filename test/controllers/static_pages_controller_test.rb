require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get who" do
    get :who
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get conditions" do
    get :conditions
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get assistance" do
    get :assistance
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
