class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.integer :location_id
      t.string :month
      t.string :time
      t.string :temp
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
