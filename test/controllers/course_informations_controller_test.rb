require 'test_helper'

class CourseInformationsControllerTest < ActionController::TestCase
  setup do
    @course_information = course_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_information" do
    assert_difference('CourseInformation.count') do
      post :create, course_information: { CRN: @course_information.CRN, Course_Title: @course_information.Course_Title, Days: @course_information.Days, Enrollment: @course_information.Enrollment, Roomstring: @course_information.Roomstring, Time: @course_information.Time }
    end

    assert_redirected_to course_information_path(assigns(:course_information))
  end

  test "should show course_information" do
    get :show, id: @course_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_information
    assert_response :success
  end

  test "should update course_information" do
    patch :update, id: @course_information, course_information: { CRN: @course_information.CRN, Course_Title: @course_information.Course_Title, Days: @course_information.Days, Enrollment: @course_information.Enrollment, Roomstring: @course_information.Roomstring, Time: @course_information.Time }
    assert_redirected_to course_information_path(assigns(:course_information))
  end

  test "should destroy course_information" do
    assert_difference('CourseInformation.count', -1) do
      delete :destroy, id: @course_information
    end

    assert_redirected_to course_informations_path
  end
end
