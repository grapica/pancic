require 'test_helper'

class CourseListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_list" do
    assert_difference('CourseList.count') do
      post :create, :course_list => { }
    end

    assert_redirected_to course_list_path(assigns(:course_list))
  end

  test "should show course_list" do
    get :show, :id => course_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => course_lists(:one).to_param
    assert_response :success
  end

  test "should update course_list" do
    put :update, :id => course_lists(:one).to_param, :course_list => { }
    assert_redirected_to course_list_path(assigns(:course_list))
  end

  test "should destroy course_list" do
    assert_difference('CourseList.count', -1) do
      delete :destroy, :id => course_lists(:one).to_param
    end

    assert_redirected_to course_lists_path
  end
end
