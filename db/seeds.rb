# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {
    name: "coding"
  },
  {
    name: "fitness"
  },
  {
    name: "cooking"
  },
  {
    name: "entrepreneurship"
  },
  {
    name: "arts"
  },
  {
    name: "outdoors"
  }
].each do |skill|
  Skillset.create(skill)
end


[
 {
   email: "user1@mail.com",
   password: "password",
   password_confirmation: "password",
 },
 {
   email: "user2@mail.com",
   password: "password",
   password_confirmation: "password",
 }
].each do |user|
 User.create(user)
end


[
 {
   first_name: "Kelvin",
   last_name: "Fok",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 2,
   my_skill: 1,
   summary: 'My moneys in that office',
   user_id: 1
 },
 {
   first_name: "Shawn",
   last_name: "Fok",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 2,
   summary: 'No moneys in that office',
   user_id: 2
 }
].each do |profile|
 Profile.create(profile)
end
