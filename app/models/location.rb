class Location < ActiveRecord::Base
	has_many :temperatures
	has_many :skies
	has_many :precipitations

	accepts_nested_attributes_for :temperatures
	accepts_nested_attributes_for :skies
	accepts_nested_attributes_for :precipitations
end
