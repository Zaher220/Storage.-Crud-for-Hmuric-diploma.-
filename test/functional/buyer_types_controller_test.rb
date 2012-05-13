require 'test_helper'

class BuyerTypesControllerTest < ActionController::TestCase
  setup do
    @buyer_type = buyer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buyer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buyer_type" do
    assert_difference('BuyerType.count') do
      post :create, buyer_type: @buyer_type.attributes
    end

    assert_redirected_to buyer_type_path(assigns(:buyer_type))
  end

  test "should show buyer_type" do
    get :show, id: @buyer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buyer_type
    assert_response :success
  end

  test "should update buyer_type" do
    put :update, id: @buyer_type, buyer_type: @buyer_type.attributes
    assert_redirected_to buyer_type_path(assigns(:buyer_type))
  end

  test "should destroy buyer_type" do
    assert_difference('BuyerType.count', -1) do
      delete :destroy, id: @buyer_type
    end

    assert_redirected_to buyer_types_path
  end
end
