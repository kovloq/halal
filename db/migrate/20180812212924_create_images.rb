class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :parent_id
      t.string :url
      t.string :name
      t.string :image_type

      t.timestamps
    end
  end
end
