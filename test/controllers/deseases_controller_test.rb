require 'test_helper'

class DeseasesControllerTest < ActionController::TestCase
  setup do
    @desease = deseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desease" do
    assert_difference('Desease.count') do
      post :create, desease: { description: @desease.description }
    end

    assert_redirected_to desease_path(assigns(:desease))
  end

  test "should show desease" do
    get :show, id: @desease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desease
    assert_response :success
  end

  test "should update desease" do
    patch :update, id: @desease, desease: { description: @desease.description }
    assert_redirected_to desease_path(assigns(:desease))
  end

  test "should destroy desease" do
    assert_difference('Desease.count', -1) do
      delete :destroy, id: @desease
    end

    assert_redirected_to deseases_path
  end
end
