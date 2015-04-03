require 'test_helper'

class ShohadaControllerTest < ActionController::TestCase


  test "should get welcome" do
    get :welcome
    assert_response :success

  end

  test "should get download" do
    get :download
    assert_response :success

  end

end
