require 'test_helper'

class CarlinesControllerTest < ActionController::TestCase
  setup do
    @carline = carlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carline" do
    assert_difference('Carline.count') do
      post :create, carline: { address: @carline.address, name: @carline.name, phone: @carline.phone }
    end

    assert_redirected_to carline_path(assigns(:carline))
  end

  test "should show carline" do
    get :show, id: @carline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carline
    assert_response :success
  end

  test "should update carline" do
    patch :update, id: @carline, carline: { address: @carline.address, name: @carline.name, phone: @carline.phone }
    assert_redirected_to carline_path(assigns(:carline))
  end

  test "should destroy carline" do
    assert_difference('Carline.count', -1) do
      delete :destroy, id: @carline
    end

    assert_redirected_to carlines_path
  end
end
