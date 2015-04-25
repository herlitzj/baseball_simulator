class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team
      t.integer :away_team
      t.date :date
      t.time :time
      t.integer :location
      t.integer :stadium
      t.string :wind
      t.string :temperature
      t.string :sky
      t.string :precipitation

      t.timestamps null: false
    end
  end
end
