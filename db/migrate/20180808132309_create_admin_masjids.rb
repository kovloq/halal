class CreateAdminMasjids < ActiveRecord::Migration[5.2]
  def change
    create_table :masjids do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.string :city
      t.string :post_code
      t.integer :pref_id
      t.boolean :masjid_type
      t.string :address
      t.string :phone
      t.string :website
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
