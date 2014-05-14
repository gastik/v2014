require 'test_helper'

class UserProfessionsControllerTest < ActionController::TestCase
  setup do
    @user_profession = user_professions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_professions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profession" do
    assert_difference('UserProfession.count') do
      post :create, user_profession: { PracticeSince: @user_profession.PracticeSince, jobtitles_id: @user_profession.jobtitles_id, roles_id: @user_profession.roles_id, user_profiles_id: @user_profession.user_profiles_id }
    end

    assert_redirected_to user_profession_path(assigns(:user_profession))
  end

  test "should show user_profession" do
    get :show, id: @user_profession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profession
    assert_response :success
  end

  test "should update user_profession" do
    patch :update, id: @user_profession, user_profession: { PracticeSince: @user_profession.PracticeSince, jobtitles_id: @user_profession.jobtitles_id, roles_id: @user_profession.roles_id, user_profiles_id: @user_profession.user_profiles_id }
    assert_redirected_to user_profession_path(assigns(:user_profession))
  end

  test "should destroy user_profession" do
    assert_difference('UserProfession.count', -1) do
      delete :destroy, id: @user_profession
    end

    assert_redirected_to user_professions_path
  end
end
