class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
      t.integer :location_id
      t.string :month
      t.string :precip
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
