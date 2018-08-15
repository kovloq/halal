require "application_system_test_case"

class Admin::ShopsTest < ApplicationSystemTestCase
  setup do
    @admin_shop = admin_shops(:one)
  end

  test "visiting the index" do
    visit admin_shops_url
    assert_selector "h1", text: "Admin/Shops"
  end

  test "creating a Shop" do
    visit admin_shops_url
    click_on "New Admin/Shop"

    fill_in "Description", with: @admin_shop.description
    fill_in "Lat", with: @admin_shop.lat
    fill_in "Lng", with: @admin_shop.lng
    fill_in "Name", with: @admin_shop.name
    fill_in "Pref", with: @admin_shop.pref_id
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "updating a Shop" do
    visit admin_shops_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_shop.description
    fill_in "Lat", with: @admin_shop.lat
    fill_in "Lng", with: @admin_shop.lng
    fill_in "Name", with: @admin_shop.name
    fill_in "Pref", with: @admin_shop.pref_id
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop" do
    visit admin_shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop was successfully destroyed"
  end
end
