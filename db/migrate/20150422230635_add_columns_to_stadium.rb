class AddColumnsToStadium < ActiveRecord::Migration
  def change
  	change_table :stadia do |t|
  		t.string :roof
  		t.string :foul
  		t.integer :ifr_adj
  		t.integer :ofr_adj
  		t.string :lp_ro
  		t.string :rp_lo
  		t.string :lsp
  		t.string :rsp
  		t.string :surface
  		t.string :surface_cond
  	end
  end
end
