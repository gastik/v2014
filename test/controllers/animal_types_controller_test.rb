require 'test_helper'

class AnimalTypesControllerTest < ActionController::TestCase
  setup do
    @animal_type = animal_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animal_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal_type" do
    assert_difference('AnimalType.count') do
      post :create, animal_type: { description: @animal_type.description }
    end

    assert_redirected_to animal_type_path(assigns(:animal_type))
  end

  test "should show animal_type" do
    get :show, id: @animal_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal_type
    assert_response :success
  end

  test "should update animal_type" do
    patch :update, id: @animal_type, animal_type: { description: @animal_type.description }
    assert_redirected_to animal_type_path(assigns(:animal_type))
  end

  test "should destroy animal_type" do
    assert_difference('AnimalType.count', -1) do
      delete :destroy, id: @animal_type
    end

    assert_redirected_to animal_types_path
  end
end
