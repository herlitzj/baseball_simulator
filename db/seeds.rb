# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
User.create!(name: "Example User",
			email: "example@railstutorial.org",
			password: "foobar",
			password_confirmation: "foobar",
			admin: true)

99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "password"
	User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password)
end


# LOCATION SEEDS #
Location.create!(location: "Great Lakes Northeast")
Location.create!(location: "Rocky Mountain")
Location.create!(location: "Southern California")
Location.create!(location: "North")
Location.create!(location: "Eastern Seaboard")
Location.create!(location: "Heartland")
Location.create!(location: "Florida")
Location.create!(location: "Northern California")
Location.create!(location: "Deep South")
Location.create!(location: "Southwest")
Location.create!(location: "Pacific Northwest")


# SKY SEEDS #
Sky.create!(location_id: 1,
			month: "April",
			sky: "Clear",
			min: 0,
			max: 20
			)

Sky.create!(location_id: 1,
			month: "April",
			sky: "Partly Cloudy",
			min: 21,
			max: 46
			)

Sky.create!(location_id: 1,
			month: "April",
			sky: "Cloudy",
			min: 47,
			max: 99
			)


# TEMPERATURE SEEDS #
Temperature.create!(location_id: 1,
					month: "April",
					time: "Day",
					temp: "Hot"
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Day",
					temp: "Warm",
					min: 0,
					max: 39
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Day",
					temp: "Cool",
					min: 40,
					max: 77
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Day",
					temp: "Cold",
					min: 78,
					max: 99
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Night",
					temp: "Hot"
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Night",
					temp: "Warm"
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Night",
					temp: "Cool",
					min: 0,
					max: 52
					)

Temperature.create!(location_id: 1,
					month: "April",
					time: "Night",
					temp: "Cold",
					min: 53,
					max: 99
					)
=end

# PRECIPITATION SEEDS #
Precipitation.create!(location_id: 1,
					month: "April",
					precip: "Thunderstorms",
					min: 0,
					max: 10
					)

Precipitation.create!(location_id: 1,
					month: "April",
					precip: "Showers",
					min: 11,
					max: 40
					)

Precipitation.create!(location_id: 1,
					month: "April",
					precip: "Snow",
					min: 041,
					max: 46
					)

Precipitation.create!(location_id: 1,
					month: "April",
					precip: "Fog",
					min: 47,
					max: 54
					)

Precipitation.create!(location_id: 1,
					month: "April",
					precip: "None",
					min: 55,
					max: 99
					)