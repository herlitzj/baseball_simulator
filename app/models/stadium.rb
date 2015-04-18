class Stadium < ActiveRecord::Base
	has_many :winds
	has_one :team

	accepts_nested_attributes_for :winds
end
