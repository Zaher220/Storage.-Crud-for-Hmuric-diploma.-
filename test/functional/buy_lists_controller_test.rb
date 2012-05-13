require 'test_helper'

class BuyListsControllerTest < ActionController::TestCase
  setup do
    @buy_list = buy_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buy_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buy_list" do
    assert_difference('BuyList.count') do
      post :create, buy_list: @buy_list.attributes
    end

    assert_redirected_to buy_list_path(assigns(:buy_list))
  end

  test "should show buy_list" do
    get :show, id: @buy_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buy_list
    assert_response :success
  end

  test "should update buy_list" do
    put :update, id: @buy_list, buy_list: @buy_list.attributes
    assert_redirected_to buy_list_path(assigns(:buy_list))
  end

  test "should destroy buy_list" do
    assert_difference('BuyList.count', -1) do
      delete :destroy, id: @buy_list
    end

    assert_redirected_to buy_lists_path
  end
end
