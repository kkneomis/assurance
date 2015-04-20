require 'test_helper'

class PInformationsControllerTest < ActionController::TestCase
  setup do
    @p_information = p_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_information" do
    assert_difference('PInformation.count') do
      post :create, p_information: { Department: @p_information.Department, Email: @p_information.Email, Ext: @p_information.Ext, First_Name: @p_information.First_Name, Last_Name: @p_information.Last_Name, OfficeHours: @p_information.OfficeHours, Rank: @p_information.Rank, Room: @p_information.Room }
    end

    assert_redirected_to p_information_path(assigns(:p_information))
  end

  test "should show p_information" do
    get :show, id: @p_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_information
    assert_response :success
  end

  test "should update p_information" do
    patch :update, id: @p_information, p_information: { Department: @p_information.Department, Email: @p_information.Email, Ext: @p_information.Ext, First_Name: @p_information.First_Name, Last_Name: @p_information.Last_Name, OfficeHours: @p_information.OfficeHours, Rank: @p_information.Rank, Room: @p_information.Room }
    assert_redirected_to p_information_path(assigns(:p_information))
  end

  test "should destroy p_information" do
    assert_difference('PInformation.count', -1) do
      delete :destroy, id: @p_information
    end

    assert_redirected_to p_informations_path
  end
end
