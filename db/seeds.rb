# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Course.destroy_all
Survey.destroy_all
SurveyQuestion.destroy_all
Question.destroy_all

adam = User.create!(first_name:  "Adam",   last_name: "Bray",  email: "adam.bray@ga.co",   producer: true,  password: "qwerty12345")
tim = User.create!(first_name:   "Tim",    last_name: "Foley", email: "tim.foley@ga.co",   producer: true,  password: "qwerty12345")
jesse = User.create!(first_name: "Jesse",  last_name: "Shawl", email: "jesse@ga.co",       producer: false, password: "qwerty12345")
andy = User.create!(first_name:  "Andy",   last_name: "Kim",   email: "andrew.kim@ga.co",  producer: false, password: "qwerty12345")

bewd = Course.create!(name: "BEWD1", start_date: Date.parse("2015-06-01"), end_date: Date.parse("2015-07-01"), enrollment: 18)
wdi  = Course.create!(name: "WDI6",  start_date: Date.parse("2015-06-29"), end_date: Date.parse("2015-09-28"), enrollment: 29)

bewd.instructors = [adam, jesse]
wdi.instructors  = [adam, jesse, andy]

bewd.surveys.create!(name: "Demo 1", date: Date.today, survey_questions: [
  SurveyQuestion.create!(position: 1, question:
    Question.create!(question_type: "scale5", prompt: "How cool are you?", description: "On a scale of 1-5 rate your coolness.")),
  SurveyQuestion.create!(position: 2, question:
    Question.create!(question_type: "scale5", prompt: "How awesome are you?", description: "On a scale of 1-5 rate your awesomeness."))
])
