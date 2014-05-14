require 'test_helper'

class TadressesControllerTest < ActionController::TestCase
  setup do
    @tadress = tadresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tadresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tadress" do
    assert_difference('Tadress.count') do
      post :create, tadress: { country: @tadress.country }
    end

    assert_redirected_to tadress_path(assigns(:tadress))
  end

  test "should show tadress" do
    get :show, id: @tadress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tadress
    assert_response :success
  end

  test "should update tadress" do
    patch :update, id: @tadress, tadress: { country: @tadress.country }
    assert_redirected_to tadress_path(assigns(:tadress))
  end

  test "should destroy tadress" do
    assert_difference('Tadress.count', -1) do
      delete :destroy, id: @tadress
    end

    assert_redirected_to tadresses_path
  end
end
