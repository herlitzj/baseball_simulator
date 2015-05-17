class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.integer :game_id
      t.integer :team_id
      t.integer :player_id
      t.string :position
      t.float :inning_in
      t.float :inning_out

      t.timestamps null: false
    end
  end
end
