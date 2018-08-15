class CreatePrefs < ActiveRecord::Migration[5.2]
  def change
    create_table :prefs do |t|
      t.string :jp
      t.string :en

      t.timestamps
    end
  end
end
