require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

end
