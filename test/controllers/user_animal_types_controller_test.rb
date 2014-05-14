require 'test_helper'

class UserAnimalTypesControllerTest < ActionController::TestCase
  setup do
    @user_animal_type = user_animal_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_animal_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_animal_type" do
    assert_difference('UserAnimalType.count') do
      post :create, user_animal_type: { anymal_types_id: @user_animal_type.anymal_types_id, load: @user_animal_type.load, user_profiles_id: @user_animal_type.user_profiles_id }
    end

    assert_redirected_to user_animal_type_path(assigns(:user_animal_type))
  end

  test "should show user_animal_type" do
    get :show, id: @user_animal_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_animal_type
    assert_response :success
  end

  test "should update user_animal_type" do
    patch :update, id: @user_animal_type, user_animal_type: { anymal_types_id: @user_animal_type.anymal_types_id, load: @user_animal_type.load, user_profiles_id: @user_animal_type.user_profiles_id }
    assert_redirected_to user_animal_type_path(assigns(:user_animal_type))
  end

  test "should destroy user_animal_type" do
    assert_difference('UserAnimalType.count', -1) do
      delete :destroy, id: @user_animal_type
    end

    assert_redirected_to user_animal_types_path
  end
end
