require 'test_helper'

class CrapsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get roll" do
    get :roll
    assert_response :success
  end

end
