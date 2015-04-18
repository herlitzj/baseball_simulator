class ChangeTeamColumns < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.rename :location_id, :stadium_id
  		t.string :league_sub
  	end
  end
end
