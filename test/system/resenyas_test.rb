require "application_system_test_case"

class ResenyasTest < ApplicationSystemTestCase
  setup do
    @resenya = resenyas(:one)
  end

  test "visiting the index" do
    visit resenyas_url
    assert_selector "h1", text: "Resenyas"
  end

  test "creating a Resenya" do
    visit resenyas_url
    click_on "New Resenya"

    fill_in "Account", with: @resenya.account_id
    fill_in "Descripcion", with: @resenya.descripcion
    fill_in "Product", with: @resenya.product_id
    fill_in "Valoracion", with: @resenya.valoracion
    click_on "Create Resenya"

    assert_text "Resenya was successfully created"
    click_on "Back"
  end

  test "updating a Resenya" do
    visit resenyas_url
    click_on "Edit", match: :first

    fill_in "Account", with: @resenya.account_id
    fill_in "Descripcion", with: @resenya.descripcion
    fill_in "Product", with: @resenya.product_id
    fill_in "Valoracion", with: @resenya.valoracion
    click_on "Update Resenya"

    assert_text "Resenya was successfully updated"
    click_on "Back"
  end

  test "destroying a Resenya" do
    visit resenyas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resenya was successfully destroyed"
  end
end
