class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.integer :stadium_id
      t.string :wind_direction
      t.integer :lfl
      t.integer :lf
      t.integer :lc
      t.integer :cf
      t.integer :rc
      t.integer :rf
      t.integer :rfl

      t.timestamps null: false
    end
  end
end
