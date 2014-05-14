require 'test_helper'

class UserWorkplacesControllerTest < ActionController::TestCase
  setup do
    @user_workplace = user_workplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_workplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_workplace" do
    assert_difference('UserWorkplace.count') do
      post :create, user_workplace: { DoctorCount: @user_workplace.DoctorCount, Name: @user_workplace.Name, user_profiles_id: @user_workplace.user_profiles_id, workplaces_id: @user_workplace.workplaces_id }
    end

    assert_redirected_to user_workplace_path(assigns(:user_workplace))
  end

  test "should show user_workplace" do
    get :show, id: @user_workplace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_workplace
    assert_response :success
  end

  test "should update user_workplace" do
    patch :update, id: @user_workplace, user_workplace: { DoctorCount: @user_workplace.DoctorCount, Name: @user_workplace.Name, user_profiles_id: @user_workplace.user_profiles_id, workplaces_id: @user_workplace.workplaces_id }
    assert_redirected_to user_workplace_path(assigns(:user_workplace))
  end

  test "should destroy user_workplace" do
    assert_difference('UserWorkplace.count', -1) do
      delete :destroy, id: @user_workplace
    end

    assert_redirected_to user_workplaces_path
  end
end
