# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adam = User.create(first_name:  "Adam",   last_name: "Bray",  email: "adam.bray@ga.co",   producer: true,  password: "qwerty12345")
tim = User.create(first_name:   "Tim",    last_name: "Foley", email: "tim.foley@ga.co",   producer: true,  password: "qwerty12345")
jesse = User.create(first_name: "Jesse",  last_name: "Shawl", email: "jesse@ga.co",       producer: false, password: "qwerty12345")
andy = User.create(first_name:  "Andy",   last_name: "Kim",   email: "andrew.kim@ga.co",  producer: false, password: "qwerty12345")

bewd = Course.create(name: "BEWD1", start_date: Date.parse("2015-06-01"), end_date: Date.parse("2015-07-01"), enrollment: 18)
wdi  = Course.create(name: "WDI6",  start_date: Date.parse("2015-06-29"), end_date: Date.parse("2015-09-28"), enrollment: 29)

bewd.instructors = [adam, jesse]
wdi.instructors  = [adam, jesse, andy]
