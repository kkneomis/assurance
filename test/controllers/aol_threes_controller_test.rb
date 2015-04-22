require 'test_helper'

class AolThreesControllerTest < ActionController::TestCase
  setup do
    @aol_three = aol_threes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aol_threes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aol_three" do
    assert_difference('AolThree.count') do
      post :create, aol_three: { q_eightteen: @aol_three.q_eightteen, q_fithteen: @aol_three.q_fithteen, q_fourthteen: @aol_three.q_fourthteen, q_seventeen: @aol_three.q_seventeen, q_sixthteen: @aol_three.q_sixthteen, q_thirthteen: @aol_three.q_thirthteen }
    end

    assert_redirected_to aol_three_path(assigns(:aol_three))
  end

  test "should show aol_three" do
    get :show, id: @aol_three
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aol_three
    assert_response :success
  end

  test "should update aol_three" do
    patch :update, id: @aol_three, aol_three: { q_eightteen: @aol_three.q_eightteen, q_fithteen: @aol_three.q_fithteen, q_fourthteen: @aol_three.q_fourthteen, q_seventeen: @aol_three.q_seventeen, q_sixthteen: @aol_three.q_sixthteen, q_thirthteen: @aol_three.q_thirthteen }
    assert_redirected_to aol_three_path(assigns(:aol_three))
  end

  test "should destroy aol_three" do
    assert_difference('AolThree.count', -1) do
      delete :destroy, id: @aol_three
    end

    assert_redirected_to aol_threes_path
  end
end
