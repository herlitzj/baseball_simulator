class Location < ActiveRecord::Base
	has_many :temperatures
	has_many :skies
	has_many :precipitations
end
