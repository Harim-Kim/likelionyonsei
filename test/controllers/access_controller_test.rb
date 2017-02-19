require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  test "should get denied" do
    get :denied
    assert_response :success
  end

end
