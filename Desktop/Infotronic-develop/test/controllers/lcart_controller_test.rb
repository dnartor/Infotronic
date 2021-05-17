require "test_helper"

class LcartControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lcart_show_url
    assert_response :success
  end
end
