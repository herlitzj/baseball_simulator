class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.integer :location_id
      t.integer :team_id
      t.string :stadium
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
