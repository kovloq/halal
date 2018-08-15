json.extract! admin_restaurant, :id, :lat, :lng, :name, :pref_id, :description, :created_at, :updated_at
json.url admin_restaurant_url(admin_restaurant, format: :json)
