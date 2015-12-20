require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

end
