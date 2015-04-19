class CreateOffenses < ActiveRecord::Migration
  def change
    create_table :offenses do |t|
      t.integer :player_id
      t.string :vs_hand
      t.string :ifr
      t.string :ofr
      t.string :df
      t.string :power

      t.timestamps null: false
    end
  end
end
