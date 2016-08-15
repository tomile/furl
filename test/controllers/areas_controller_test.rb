require 'test_helper'

class AreasControllerTest < ActionController::TestCase
  test "should get find_zip" do
    get :find_zip
    assert_response :success
  end

end
