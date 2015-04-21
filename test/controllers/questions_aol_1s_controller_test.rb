require 'test_helper'

class QuestionsAol1sControllerTest < ActionController::TestCase
  setup do
    @questions_aol_1 = questions_aol_1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions_aol_1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questions_aol_1" do
    assert_difference('QuestionsAol1.count') do
      post :create, questions_aol_1: { q10: @questions_aol_1.q10, q11: @questions_aol_1.q11, q12: @questions_aol_1.q12, q1: @questions_aol_1.q1, q2: @questions_aol_1.q2, q3: @questions_aol_1.q3, q4: @questions_aol_1.q4, q5: @questions_aol_1.q5, q6: @questions_aol_1.q6, q7: @questions_aol_1.q7, q8: @questions_aol_1.q8, q9: @questions_aol_1.q9 }
    end

    assert_redirected_to questions_aol_1_path(assigns(:questions_aol_1))
  end

  test "should show questions_aol_1" do
    get :show, id: @questions_aol_1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questions_aol_1
    assert_response :success
  end

  test "should update questions_aol_1" do
    patch :update, id: @questions_aol_1, questions_aol_1: { q10: @questions_aol_1.q10, q11: @questions_aol_1.q11, q12: @questions_aol_1.q12, q1: @questions_aol_1.q1, q2: @questions_aol_1.q2, q3: @questions_aol_1.q3, q4: @questions_aol_1.q4, q5: @questions_aol_1.q5, q6: @questions_aol_1.q6, q7: @questions_aol_1.q7, q8: @questions_aol_1.q8, q9: @questions_aol_1.q9 }
    assert_redirected_to questions_aol_1_path(assigns(:questions_aol_1))
  end

  test "should destroy questions_aol_1" do
    assert_difference('QuestionsAol1.count', -1) do
      delete :destroy, id: @questions_aol_1
    end

    assert_redirected_to questions_aol_1s_path
  end
end
