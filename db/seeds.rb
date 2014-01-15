# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create(
	:firstname => 'Phil', 
	:lastname => 'Nicholson', 
	:user_id => 1, 
	:username => 'philnicholson'
	)

Collective.delete_all

Collective.create(
	:collective_id => 1,
	:collective_name => 'Perdido',
	:user_id => 1
	)

Project.delete_all

Project.create(
	:project_id => 1,
	:project_name => "Perdido's First Album",
	:collective_id => 1
	)

Gift.delete_all

Gift.create(
	:gift_name => 'These Foolish Things',
	:gift_url => 'these_foolish_things.mp3',
	:project_id => 1
	)

Gift.create(
	:gift_name => 'Have you Met Miss Jones',
	:gift_url => 'have_you_met_miss_jones.mp3',
	:project_id => 1
	)