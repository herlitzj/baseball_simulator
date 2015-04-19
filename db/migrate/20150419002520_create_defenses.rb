class CreateDefenses < ActiveRecord::Migration
  def change
    create_table :defenses do |t|
      t.integer :player_id
      t.string :position
      t.integer :error
      t.string :rnge
      t.integer :throw
      t.string :passedball
      t.integer :pickoff
      t.string :hold
      t.string :wp
      t.string :balk
      t.integer :bfsp
      t.integer :bfrp
      t.integer :rest0
      t.integer :rest1
      t.integer :rest2
      t.integer :rest3

      t.timestamps null: false
    end
  end
end
