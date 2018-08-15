class CreateAdminRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.string :kana_name
      t.string :address
      t.string :kana_address
      t.string :open
      t.string :close
      t.string :phone
      t.string :website
      t.integer :pref_id
      t.integer :status
      t.integer :country_id
      t.text :description

      t.timestamps
    end
  end
end
