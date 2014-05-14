require 'test_helper'

class UserDeseasesControllerTest < ActionController::TestCase
  setup do
    @user_desease = user_deseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_deseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_desease" do
    assert_difference('UserDesease.count') do
      post :create, user_desease: { deaseases_id: @user_desease.deaseases_id, user_profiles_id: @user_desease.user_profiles_id }
    end

    assert_redirected_to user_desease_path(assigns(:user_desease))
  end

  test "should show user_desease" do
    get :show, id: @user_desease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_desease
    assert_response :success
  end

  test "should update user_desease" do
    patch :update, id: @user_desease, user_desease: { deaseases_id: @user_desease.deaseases_id, user_profiles_id: @user_desease.user_profiles_id }
    assert_redirected_to user_desease_path(assigns(:user_desease))
  end

  test "should destroy user_desease" do
    assert_difference('UserDesease.count', -1) do
      delete :destroy, id: @user_desease
    end

    assert_redirected_to user_deseases_path
  end
end
