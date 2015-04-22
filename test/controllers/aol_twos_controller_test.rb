require 'test_helper'

class AolTwosControllerTest < ActionController::TestCase
  setup do
    @aol_two = aol_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aol_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aol_two" do
    assert_difference('AolTwo.count') do
      post :create, aol_two: { q_eight: @aol_two.q_eight, q_eleven: @aol_two.q_eleven, q_nine: @aol_two.q_nine, q_seven: @aol_two.q_seven, q_ten: @aol_two.q_ten, q_twelve: @aol_two.q_twelve }
    end

    assert_redirected_to aol_two_path(assigns(:aol_two))
  end

  test "should show aol_two" do
    get :show, id: @aol_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aol_two
    assert_response :success
  end

  test "should update aol_two" do
    patch :update, id: @aol_two, aol_two: { q_eight: @aol_two.q_eight, q_eleven: @aol_two.q_eleven, q_nine: @aol_two.q_nine, q_seven: @aol_two.q_seven, q_ten: @aol_two.q_ten, q_twelve: @aol_two.q_twelve }
    assert_redirected_to aol_two_path(assigns(:aol_two))
  end

  test "should destroy aol_two" do
    assert_difference('AolTwo.count', -1) do
      delete :destroy, id: @aol_two
    end

    assert_redirected_to aol_twos_path
  end
end
