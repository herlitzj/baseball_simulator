# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
User.create!(name: "Admin",
			email: "admin@email.com",
			password: "password",
			password_confirmation: "password",
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



# STADIUM SEEDS #
Stadium.create!(location_id: 1,
				team_id: 3,
				stadium: "Fenway Park",
				lfl: 37,
				lf: 37,
				lc: 37,
				cf: 17,
				rc: 5,
				rf: 5,
				rfl: 3,
				roof: 'none',
				foul: 'small',
				ifr_adj: 'none',
				ofr_adj: -1,
				lp_ro: "1b",
				rp_lo: "3b",
				lsp: "2b",
				rsp: "ss",
				surface: "grass",
				surface_cond: "poor"
				)

Stadium.create!(location_id: 1,
				team_id: 4,
				stadium: "Wrigley Field",
				lfl: 15,
				lf: 12,
				lc: 12,
				cf: 12,
				rc: 12,
				rf: 12,
				rfl: 15,
				roof: 'none',
				foul: 'small',
				ifr_adj: 'none',
				ofr_adj: "none",
				lp_ro: "1b",
				rp_lo: "3b",
				lsp: "2b",
				rsp: "ss",
				surface: "grass",
				surface_cond: "fair"
				)


# WIND SEEDS #
Wind.create!(stadium_id: 1,
			month: "April",
			wind: "cross",
			min: 0,
			max: 26
			)

Wind.create!(stadium_id: 1,
			month: "April",
			wind: "none",
			min: 27,
			max: 85
			)

Wind.create!(stadium_id: 1,
			month: "April",
			wind: "straight",
			min: 86,
			max: 99
			)
=end


# TEAM SEEDS #

Team.create!(stadium_id: 1,
			city: "Boston",
			name: "Red Sox",
			league: "American",
			league_sub: "east"
			)

Team.create!(stadium_id: 1,
			city: "Chicago",
			name: "Cubs",
			league: "National",
			league_sub: "west"
			)

=begin

# PLAYER SEEDS #
Player.create!(team_id: 0,
				first_name: "Freddie",
				last_name: "Freeman",
				hand: "right",
				player_type: "batter",
				durability: 7,
				dldays: 15,
				run: 1,
				steal: 1,
				jump: 0,
				bunt: "Fr_-1",
			)

Player.create!(team_id: 0,
				first_name: "Alex",
				last_name: "Wilson",
				hand: "right",
				player_type: "pitcher",
				durability: 3,
				dldays: 83,
				bunt: "Fr_-1",
				bat: "Rsp#1_Pr",
			)

# PLAYS SEEDS #

Play.create!(player_id: 1,
			vs_hand: "r",
			min: 0,
			max: 10,
			play: "wild",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "l",
			min: 0,
			max: 10,
			play: "wild",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "r",
			min: 11,
			max: 67,
			play: "error",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "l",
			min: 11,
			max: 67,
			play: "error",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "r",
			min: 68,
			max: 82,
			play: "l",
			field: "3b",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "l",
			min: 68,
			max: 82,
			play: "l",
			field: "ss",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "r",
			min: 83,
			max: 97,
			play: "park",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "l",
			min: 83,
			max: 97,
			play: "park",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "r",
			min: 98,
			max: 117,
			play: "1b",
			field: "inf",
			fatigue: 0 
			)

Play.create!(player_id: 1,
			vs_hand: "l",
			min: 98,
			max: 114,
			play: "1b",
			field: "inf",
			fatigue: 0 
			)

# DEFENSE SEEDS #

Defense.create!(player_id: 1,
				position: "1b",
				error: 7,
				rnge: "d"
				)

Defense.create!(player_id: 2,
				error: 3,
				rnge: "h",
				pickoff: 0,
				hold: "Vg_0",
				wp: "normal",
				balk: "Rare",
				bfsp: 0,
				bfrp: 11,
				rest0: 6,
				rest1: 8,
				rest2: 14,
				rest3: 16
				)

# OFFENSE SEEDS #

Offense.create!(player_id: 0,
				vs_hand: "l",
				ifr: "sp",
				ofr: "sp",
				df: "sp",
				power: "sp"
				)



# DIRECTION SEEDS #

Distance.create!(stadium_id: 0,
				wind_direction: "cross",
				lfl: 4,
				lf: 6,
				lc: 9,
				cf: 18,
				rc: 18,
				rf: 17,
				rfl: 16
				)

Distance.create!(stadium_id: 0,
				wind_direction: "none",
				lfl: 7,
				lf: 8,
				lc: 12,
				cf: 20,
				rc: 16,
				rf: 14,
				rfl: 13
				)

Distance.create!(stadium_id: 0,
				wind_direction: "straight",
				lfl: 6,
				lf: 7,
				lc: 10,
				cf: 18,
				rc: 14,
				rf: 13,
				rfl: 11
				)


# PARK SEEDS #

Park.create!(stadium_id: 0,
			field_option: "1blcf",
			min: 0,
			max: 36
			)

Park.create!(stadium_id: 0,
			field_option: "2blc",
			min: 37,
			max: 58
			)

Park.create!(stadium_id: 0,
			field_option: "2brc",
			min: 59,
			max: 81
			)

Park.create!(stadium_id: 0,
			field_option: "3b",
			min: 82,
			max: 92
			)

Park.create!(stadium_id: 0,
			field_option: "sg",
			min: 93,
			max: 94
			)

Park.create!(stadium_id: 0,
			field_option: "rg",
			min: 95,
			max: 96
			)

Park.create!(stadium_id: 0,
			field_option: "hf8",
			min: 97,
			max: 99
			)

=end