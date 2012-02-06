require 'test_helper'

class ExtraControllerTest < ActionController::TestCase
  test "should get stuff" do
    get :stuff
    assert_response :success
  end

end
