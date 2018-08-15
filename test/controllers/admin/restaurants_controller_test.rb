require 'test_helper'

class Admin::RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_restaurant = admin_restaurants(:one)
  end

  test "should get index" do
    get admin_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_restaurant_url
    assert_response :success
  end

  test "should create admin_restaurant" do
    assert_difference('Admin::Restaurant.count') do
      post admin_restaurants_url, params: { admin_restaurant: { description: @admin_restaurant.description, lat: @admin_restaurant.lat, lng: @admin_restaurant.lng, name: @admin_restaurant.name, pref_id: @admin_restaurant.pref_id } }
    end

    assert_redirected_to admin_restaurant_url(Admin::Restaurant.last)
  end

  test "should show admin_restaurant" do
    get admin_restaurant_url(@admin_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_restaurant_url(@admin_restaurant)
    assert_response :success
  end

  test "should update admin_restaurant" do
    patch admin_restaurant_url(@admin_restaurant), params: { admin_restaurant: { description: @admin_restaurant.description, lat: @admin_restaurant.lat, lng: @admin_restaurant.lng, name: @admin_restaurant.name, pref_id: @admin_restaurant.pref_id } }
    assert_redirected_to admin_restaurant_url(@admin_restaurant)
  end

  test "should destroy admin_restaurant" do
    assert_difference('Admin::Restaurant.count', -1) do
      delete admin_restaurant_url(@admin_restaurant)
    end

    assert_redirected_to admin_restaurants_url
  end
end
