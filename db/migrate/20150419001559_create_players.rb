class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :first_name
      t.string :last_name
      t.string :hand
      t.string :player_type
      t.integer :durability
      t.integer :dldays
      t.integer :run
      t.integer :steal
      t.integer :jump
      t.string :bat
      t.string :bunt
      t.string :wild

      t.timestamps null: false
    end
  end
end
