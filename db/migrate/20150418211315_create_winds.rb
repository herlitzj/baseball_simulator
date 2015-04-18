class CreateWinds < ActiveRecord::Migration
  def change
    create_table :winds do |t|
      t.integer :stadium_id
      t.string :month
      t.string :wind
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
