require 'test_helper'

class NumberGameControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get process_guess" do
    get :process_guess
    assert_response :success
  end

end
