require 'test_helper'

class ProfessorSchedulesControllerTest < ActionController::TestCase
  setup do
    @professor_schedule = professor_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_schedule" do
    assert_difference('ProfessorSchedule.count') do
      post :create, professor_schedule: { CRN: @professor_schedule.CRN, Course_Title: @professor_schedule.Course_Title, department: @professor_schedule.department, email: @professor_schedule.email, enrollment: @professor_schedule.enrollment, ext: @professor_schedule.ext, meeting_days: @professor_schedule.meeting_days, name: @professor_schedule.name, rank: @professor_schedule.rank, room: @professor_schedule.room, room_num: @professor_schedule.room_num, time: @professor_schedule.time }
    end

    assert_redirected_to professor_schedule_path(assigns(:professor_schedule))
  end

  test "should show professor_schedule" do
    get :show, id: @professor_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor_schedule
    assert_response :success
  end

  test "should update professor_schedule" do
    patch :update, id: @professor_schedule, professor_schedule: { CRN: @professor_schedule.CRN, Course_Title: @professor_schedule.Course_Title, department: @professor_schedule.department, email: @professor_schedule.email, enrollment: @professor_schedule.enrollment, ext: @professor_schedule.ext, meeting_days: @professor_schedule.meeting_days, name: @professor_schedule.name, rank: @professor_schedule.rank, room: @professor_schedule.room, room_num: @professor_schedule.room_num, time: @professor_schedule.time }
    assert_redirected_to professor_schedule_path(assigns(:professor_schedule))
  end

  test "should destroy professor_schedule" do
    assert_difference('ProfessorSchedule.count', -1) do
      delete :destroy, id: @professor_schedule
    end

    assert_redirected_to professor_schedules_path
  end
end
