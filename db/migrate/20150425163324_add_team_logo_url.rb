class AddTeamLogoUrl < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.string :logo_url
  	end
  end
end
