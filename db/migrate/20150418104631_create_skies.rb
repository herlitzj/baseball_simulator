class CreateSkies < ActiveRecord::Migration
  def change
    create_table :skies do |t|
      t.integer :location_id
      t.string :month
      t.string :sky
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
