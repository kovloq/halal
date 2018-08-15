require "application_system_test_case"

class Admin::RestaurantsTest < ApplicationSystemTestCase
  setup do
    @admin_restaurant = admin_restaurants(:one)
  end

  test "visiting the index" do
    visit admin_restaurants_url
    assert_selector "h1", text: "Admin/Restaurants"
  end

  test "creating a Restaurant" do
    visit admin_restaurants_url
    click_on "New Admin/Restaurant"

    fill_in "Description", with: @admin_restaurant.description
    fill_in "Lat", with: @admin_restaurant.lat
    fill_in "Lng", with: @admin_restaurant.lng
    fill_in "Name", with: @admin_restaurant.name
    fill_in "Pref", with: @admin_restaurant.pref_id
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant" do
    visit admin_restaurants_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_restaurant.description
    fill_in "Lat", with: @admin_restaurant.lat
    fill_in "Lng", with: @admin_restaurant.lng
    fill_in "Name", with: @admin_restaurant.name
    fill_in "Pref", with: @admin_restaurant.pref_id
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant" do
    visit admin_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant was successfully destroyed"
  end
end
