class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.integer :stadium_id
      t.string :field_option
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
