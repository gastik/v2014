require 'test_helper'

class UserProfileControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get ContactDetails" do
    get :ContactDetails
    assert_response :success
  end

  test "should get Profile" do
    get :Profile
    assert_response :success
  end

  test "should get Balance" do
    get :Balance
    assert_response :success
  end

end
