require 'test_helper'

class CongratsNewControllerTest < ActionController::TestCase
  test "should get congrats" do
    get :congrats
    assert_response :success
  end

end
