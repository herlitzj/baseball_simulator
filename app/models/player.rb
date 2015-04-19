class Player < ActiveRecord::Base
	belongs_to :team
	has_many :plays
	has_many :offenses
	has_many :defenses

	accepts_nested_attributes_for :plays
	accepts_nested_attributes_for :offenses
	accepts_nested_attributes_for :defenses
end
