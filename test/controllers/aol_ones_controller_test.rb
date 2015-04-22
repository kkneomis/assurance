require 'test_helper'

class AolOnesControllerTest < ActionController::TestCase
  setup do
    @aol_one = aol_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aol_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aol_one" do
    assert_difference('AolOne.count') do
      post :create, aol_one: { q_five: @aol_one.q_five, q_four: @aol_one.q_four, q_one: @aol_one.q_one, q_six: @aol_one.q_six, q_three: @aol_one.q_three, q_two: @aol_one.q_two }
    end

    assert_redirected_to aol_one_path(assigns(:aol_one))
  end

  test "should show aol_one" do
    get :show, id: @aol_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aol_one
    assert_response :success
  end

  test "should update aol_one" do
    patch :update, id: @aol_one, aol_one: { q_five: @aol_one.q_five, q_four: @aol_one.q_four, q_one: @aol_one.q_one, q_six: @aol_one.q_six, q_three: @aol_one.q_three, q_two: @aol_one.q_two }
    assert_redirected_to aol_one_path(assigns(:aol_one))
  end

  test "should destroy aol_one" do
    assert_difference('AolOne.count', -1) do
      delete :destroy, id: @aol_one
    end

    assert_redirected_to aol_ones_path
  end
end
