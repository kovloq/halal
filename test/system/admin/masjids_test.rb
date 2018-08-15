require "application_system_test_case"

class Admin::MasjidsTest < ApplicationSystemTestCase
  setup do
    @admin_masjid = admin_masjids(:one)
  end

  test "visiting the index" do
    visit admin_masjids_url
    assert_selector "h1", text: "Admin/Masjids"
  end

  test "creating a Masjid" do
    visit admin_masjids_url
    click_on "New Admin/Masjid"

    fill_in "Description", with: @admin_masjid.description
    fill_in "Lat", with: @admin_masjid.lat
    fill_in "Lng", with: @admin_masjid.lng
    fill_in "Name", with: @admin_masjid.name
    fill_in "Pref", with: @admin_masjid.pref_id
    click_on "Create Masjid"

    assert_text "Masjid was successfully created"
    click_on "Back"
  end

  test "updating a Masjid" do
    visit admin_masjids_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_masjid.description
    fill_in "Lat", with: @admin_masjid.lat
    fill_in "Lng", with: @admin_masjid.lng
    fill_in "Name", with: @admin_masjid.name
    fill_in "Pref", with: @admin_masjid.pref_id
    click_on "Update Masjid"

    assert_text "Masjid was successfully updated"
    click_on "Back"
  end

  test "destroying a Masjid" do
    visit admin_masjids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Masjid was successfully destroyed"
  end
end
