require 'test_helper'

class HbannersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hbanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hbanner" do
    assert_difference('Hbanner.count') do
      post :create, :hbanner => { }
    end

    assert_redirected_to hbanner_path(assigns(:hbanner))
  end

  test "should show hbanner" do
    get :show, :id => hbanners(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hbanners(:one).to_param
    assert_response :success
  end

  test "should update hbanner" do
    put :update, :id => hbanners(:one).to_param, :hbanner => { }
    assert_redirected_to hbanner_path(assigns(:hbanner))
  end

  test "should destroy hbanner" do
    assert_difference('Hbanner.count', -1) do
      delete :destroy, :id => hbanners(:one).to_param
    end

    assert_redirected_to hbanners_path
  end
end
