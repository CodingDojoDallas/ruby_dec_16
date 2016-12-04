require 'test_helper'

class SurveyControllerTest < ActionController::TestCase
  test "should get process_survey" do
    get :process_survey
    assert_response :success
  end

end
