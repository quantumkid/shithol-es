require 'test_helper'

class ShitholesControllerTest < ActionController::TestCase
  setup do
    @shithole = shitholes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shitholes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shithole" do
    assert_difference('Shithole.count') do
      post :create, shithole: {  }
    end

    assert_redirected_to shithole_path(assigns(:shithole))
  end

  test "should show shithole" do
    get :show, id: @shithole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shithole
    assert_response :success
  end

  test "should update shithole" do
    put :update, id: @shithole, shithole: {  }
    assert_redirected_to shithole_path(assigns(:shithole))
  end

  test "should destroy shithole" do
    assert_difference('Shithole.count', -1) do
      delete :destroy, id: @shithole
    end

    assert_redirected_to shitholes_path
  end
end
