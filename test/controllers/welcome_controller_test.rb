require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get welcomeindex" do
    get :welcomeindex
    assert_response :success
  end

end
