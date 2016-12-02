require 'test_helper'

class SayControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get hellojoe" do
    get :hellojoe
    assert_response :success
  end

  test "should get hellomichael" do
    get :hellomichael
    assert_response :success
  end

end
