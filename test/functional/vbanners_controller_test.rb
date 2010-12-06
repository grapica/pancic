require 'test_helper'

class VbannersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vbanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vbanner" do
    assert_difference('Vbanner.count') do
      post :create, :vbanner => { }
    end

    assert_redirected_to vbanner_path(assigns(:vbanner))
  end

  test "should show vbanner" do
    get :show, :id => vbanners(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vbanners(:one).to_param
    assert_response :success
  end

  test "should update vbanner" do
    put :update, :id => vbanners(:one).to_param, :vbanner => { }
    assert_redirected_to vbanner_path(assigns(:vbanner))
  end

  test "should destroy vbanner" do
    assert_difference('Vbanner.count', -1) do
      delete :destroy, :id => vbanners(:one).to_param
    end

    assert_redirected_to vbanners_path
  end
end
