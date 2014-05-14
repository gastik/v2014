require 'test_helper'

class UserAddressesControllerTest < ActionController::TestCase
  setup do
    @user_address = user_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_address" do
    assert_difference('UserAddress.count') do
      post :create, user_address: { Address1: @user_address.Address1, Address2: @user_address.Address2, City: @user_address.City, State: @user_address.State, Zip: @user_address.Zip, countries_id: @user_address.countries_id, user_profile_id: @user_address.user_profile_id }
    end

    assert_redirected_to user_address_path(assigns(:user_address))
  end

  test "should show user_address" do
    get :show, id: @user_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_address
    assert_response :success
  end

  test "should update user_address" do
    patch :update, id: @user_address, user_address: { Address1: @user_address.Address1, Address2: @user_address.Address2, City: @user_address.City, State: @user_address.State, Zip: @user_address.Zip, countries_id: @user_address.countries_id, user_profile_id: @user_address.user_profile_id }
    assert_redirected_to user_address_path(assigns(:user_address))
  end

  test "should destroy user_address" do
    assert_difference('UserAddress.count', -1) do
      delete :destroy, id: @user_address
    end

    assert_redirected_to user_addresses_path
  end
end
