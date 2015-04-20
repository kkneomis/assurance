require 'test_helper'

class PInfosControllerTest < ActionController::TestCase
  setup do
    @p_info = p_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_info" do
    assert_difference('PInfo.count') do
      post :create, p_info: { Department: @p_info.Department, Email: @p_info.Email, Ext: @p_info.Ext, Name: @p_info.Name, OfficeHours: @p_info.OfficeHours, Rank: @p_info.Rank, Room: @p_info.Room }
    end

    assert_redirected_to p_info_path(assigns(:p_info))
  end

  test "should show p_info" do
    get :show, id: @p_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_info
    assert_response :success
  end

  test "should update p_info" do
    patch :update, id: @p_info, p_info: { Department: @p_info.Department, Email: @p_info.Email, Ext: @p_info.Ext, Name: @p_info.Name, OfficeHours: @p_info.OfficeHours, Rank: @p_info.Rank, Room: @p_info.Room }
    assert_redirected_to p_info_path(assigns(:p_info))
  end

  test "should destroy p_info" do
    assert_difference('PInfo.count', -1) do
      delete :destroy, id: @p_info
    end

    assert_redirected_to p_infos_path
  end
end
