require "test_helper"

class ListItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get list_items_create_url
    assert_response :success
  end

  test "should get destroy" do
    get list_items_destroy_url
    assert_response :success
  end
end
