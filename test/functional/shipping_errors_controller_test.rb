require 'test_helper'

class ShippingErrorsControllerTest < ActionController::TestCase
  setup do
    @shipping_error = shipping_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_error" do
    assert_difference('ShippingError.count') do
      post :create, shipping_error: @shipping_error.attributes
    end

    assert_redirected_to shipping_error_path(assigns(:shipping_error))
  end

  test "should show shipping_error" do
    get :show, id: @shipping_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_error
    assert_response :success
  end

  test "should update shipping_error" do
    put :update, id: @shipping_error, shipping_error: @shipping_error.attributes
    assert_redirected_to shipping_error_path(assigns(:shipping_error))
  end

  test "should destroy shipping_error" do
    assert_difference('ShippingError.count', -1) do
      delete :destroy, id: @shipping_error
    end

    assert_redirected_to shipping_errors_path
  end
end
