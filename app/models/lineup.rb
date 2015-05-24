class Lineup < ActiveRecord::Base
	belongs_to :game
	has_many :players
	has_many :teams
end
