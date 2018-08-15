class CreateAdminShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.integer :pref_id
      t.text :description

      t.timestamps
    end
  end
end
