require "test_helper"

class TopVentasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get top_ventas_show_url
    assert_response :success
  end
end
