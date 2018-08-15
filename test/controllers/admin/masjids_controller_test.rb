require 'test_helper'

class Admin::MasjidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_masjid = admin_masjids(:one)
  end

  test "should get index" do
    get admin_masjids_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_masjid_url
    assert_response :success
  end

  test "should create admin_masjid" do
    assert_difference('Admin::Masjid.count') do
      post admin_masjids_url, params: { admin_masjid: { description: @admin_masjid.description, lat: @admin_masjid.lat, lng: @admin_masjid.lng, name: @admin_masjid.name, pref_id: @admin_masjid.pref_id } }
    end

    assert_redirected_to admin_masjid_url(Admin::Masjid.last)
  end

  test "should show admin_masjid" do
    get admin_masjid_url(@admin_masjid)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_masjid_url(@admin_masjid)
    assert_response :success
  end

  test "should update admin_masjid" do
    patch admin_masjid_url(@admin_masjid), params: { admin_masjid: { description: @admin_masjid.description, lat: @admin_masjid.lat, lng: @admin_masjid.lng, name: @admin_masjid.name, pref_id: @admin_masjid.pref_id } }
    assert_redirected_to admin_masjid_url(@admin_masjid)
  end

  test "should destroy admin_masjid" do
    assert_difference('Admin::Masjid.count', -1) do
      delete admin_masjid_url(@admin_masjid)
    end

    assert_redirected_to admin_masjids_url
  end
end
