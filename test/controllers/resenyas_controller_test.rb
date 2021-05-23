require "test_helper"

class ResenyasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resenya = resenyas(:one)
  end

  test "should get index" do
    get resenyas_url
    assert_response :success
  end

  test "should get new" do
    get new_resenya_url
    assert_response :success
  end

  test "should create resenya" do
    assert_difference('Resenya.count') do
      post resenyas_url, params: { resenya: { account_id: @resenya.account_id, descripcion: @resenya.descripcion, product_id: @resenya.product_id, valoracion: @resenya.valoracion } }
    end

    assert_redirected_to resenya_url(Resenya.last)
  end

  test "should show resenya" do
    get resenya_url(@resenya)
    assert_response :success
  end

  test "should get edit" do
    get edit_resenya_url(@resenya)
    assert_response :success
  end

  test "should update resenya" do
    patch resenya_url(@resenya), params: { resenya: { account_id: @resenya.account_id, descripcion: @resenya.descripcion, product_id: @resenya.product_id, valoracion: @resenya.valoracion } }
    assert_redirected_to resenya_url(@resenya)
  end

  test "should destroy resenya" do
    assert_difference('Resenya.count', -1) do
      delete resenya_url(@resenya)
    end

    assert_redirected_to resenyas_url
  end
end
