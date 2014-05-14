require 'test_helper'

class UserAnimalsControllerTest < ActionController::TestCase
  setup do
    @user_animal = user_animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_animal" do
    assert_difference('UserAnimal.count') do
      post :create, user_animal: { animals_id: @user_animal.animals_id, load: @user_animal.load, user_profiles_id: @user_animal.user_profiles_id }
    end

    assert_redirected_to user_animal_path(assigns(:user_animal))
  end

  test "should show user_animal" do
    get :show, id: @user_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_animal
    assert_response :success
  end

  test "should update user_animal" do
    patch :update, id: @user_animal, user_animal: { animals_id: @user_animal.animals_id, load: @user_animal.load, user_profiles_id: @user_animal.user_profiles_id }
    assert_redirected_to user_animal_path(assigns(:user_animal))
  end

  test "should destroy user_animal" do
    assert_difference('UserAnimal.count', -1) do
      delete :destroy, id: @user_animal
    end

    assert_redirected_to user_animals_path
  end
end
