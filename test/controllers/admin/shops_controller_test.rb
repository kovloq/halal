require 'test_helper'

class Admin::ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_shop = admin_shops(:one)
  end

  test "should get index" do
    get admin_shops_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_shop_url
    assert_response :success
  end

  test "should create admin_shop" do
    assert_difference('Admin::Shop.count') do
      post admin_shops_url, params: { admin_shop: { description: @admin_shop.description, lat: @admin_shop.lat, lng: @admin_shop.lng, name: @admin_shop.name, pref_id: @admin_shop.pref_id } }
    end

    assert_redirected_to admin_shop_url(Admin::Shop.last)
  end

  test "should show admin_shop" do
    get admin_shop_url(@admin_shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_shop_url(@admin_shop)
    assert_response :success
  end

  test "should update admin_shop" do
    patch admin_shop_url(@admin_shop), params: { admin_shop: { description: @admin_shop.description, lat: @admin_shop.lat, lng: @admin_shop.lng, name: @admin_shop.name, pref_id: @admin_shop.pref_id } }
    assert_redirected_to admin_shop_url(@admin_shop)
  end

  test "should destroy admin_shop" do
    assert_difference('Admin::Shop.count', -1) do
      delete admin_shop_url(@admin_shop)
    end

    assert_redirected_to admin_shops_url
  end
end
