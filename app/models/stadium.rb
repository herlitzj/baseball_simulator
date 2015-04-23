class Stadium < ActiveRecord::Base
	has_many :winds
	has_many :distances
	has_many :parks
	has_one :team

	accepts_nested_attributes_for :winds
	accepts_nested_attributes_for :distances
	accepts_nested_attributes_for :parks
end
