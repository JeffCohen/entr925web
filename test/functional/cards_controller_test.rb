require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  test "should get deal" do
    get :deal
    assert_response :success
  end

end
