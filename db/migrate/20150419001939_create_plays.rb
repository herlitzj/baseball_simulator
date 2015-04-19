class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :player_id
      t.string :vs_hand
      t.integer :min
      t.integer :max
      t.string :play
      t.string :field
      t.integer :fatigue

      t.timestamps null: false
    end
  end
end
