require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_path
    assert_response :success
  end
end
