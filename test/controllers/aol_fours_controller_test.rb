require 'test_helper'

class AolFoursControllerTest < ActionController::TestCase
  setup do
    @aol_four = aol_fours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aol_fours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aol_four" do
    assert_difference('AolFour.count') do
      post :create, aol_four: { q_nineteen: @aol_four.q_nineteen, q_twenty: @aol_four.q_twenty, q_twentyone: @aol_four.q_twentyone, q_twentytwo: @aol_four.q_twentytwo }
    end

    assert_redirected_to aol_four_path(assigns(:aol_four))
  end

  test "should show aol_four" do
    get :show, id: @aol_four
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aol_four
    assert_response :success
  end

  test "should update aol_four" do
    patch :update, id: @aol_four, aol_four: { q_nineteen: @aol_four.q_nineteen, q_twenty: @aol_four.q_twenty, q_twentyone: @aol_four.q_twentyone, q_twentytwo: @aol_four.q_twentytwo }
    assert_redirected_to aol_four_path(assigns(:aol_four))
  end

  test "should destroy aol_four" do
    assert_difference('AolFour.count', -1) do
      delete :destroy, id: @aol_four
    end

    assert_redirected_to aol_fours_path
  end
end
