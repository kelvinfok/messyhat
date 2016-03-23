[
  {
    name: "Leisure Skills Exchange Only"
  },
  {
    name: "Skills Exchange & Potential Project Collaborations"
  },
  {
    name: "Skills Exchange & Potential Business Collaborations"
  }
].each do |involvement|
  Involvement.create(involvement)
end



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
   completed: true,
 },
 {
   email: "user2@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user3@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user4@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user5@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user6@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user7@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user8@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user9@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user10@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user11@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user12@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user13@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user14@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user15@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user16@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user17@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 },
 {
   email: "user18@mail.com",
   password: "password",
   password_confirmation: "password",
   completed: true,
 }

].each do |user|
 User.create(user)
end


[
 {
   first_name: "Kelvin",
   last_name: "Sam",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 1,
   my_skill: 2,
   summary: 'My moneys in that office',
   user_id: 1,
   involvement: 2,
 },
 {
   first_name: "Shawn",
   last_name: "Jon",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 3,
   my_skill: 4,
   summary: 'No moneys in that office',
   user_id: 2,
   involvement: 3,
 },
 {
   first_name: "Ellison",
   last_name: "Tan",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 6,
   summary: 'My moneys in that office',
   user_id: 3,
   involvement: 2,
 },
 {
   first_name: "Junius",
   last_name: "Lim",
   date_of_birth: "1990-03-21",
   country: "Singapore",
   looking_for: 1,
   my_skill: 3,
   summary: 'No moneys in that office',
   user_id: 4,
   involvement: 1,
 },
 {
   first_name: "Kaysee",
   last_name: "Fong",
   date_of_birth: "1992-03-21",
   country: "Singapore",
   looking_for: 2,
   my_skill: 4,
   summary: 'My moneys in that office',
   user_id: 5,
   involvement: 1,
 },
 {
   first_name: "Richard",
   last_name: "Ooi",
   date_of_birth: "1999-03-21",
   country: "Singapore",
   looking_for: 3,
   my_skill: 1,
   summary: 'My moneys in that office',
   user_id: 6,
   involvement: 2,
 },
 {
   first_name: "Qing",
   last_name: "Ying",
   date_of_birth: "1981-03-21",
   country: "Singapore",
   looking_for: 4,
   my_skill: 2,
   summary: 'My moneys in that office',
   user_id: 7,
   involvement: 2,
 },
 {
   first_name: "Ping",
   last_name: "Ngu",
   date_of_birth: "1986-03-21",
   country: "Singapore",
   looking_for: 6,
   my_skill: 4,
   summary: 'No moneys in that office',
   user_id: 8,
   involvement: 1,
 },
 {
   first_name: "Lam",
   last_name: "Chen",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 3,
   summary: 'My moneys in that office',
   user_id: 9,
   involvement: 4,
 },
 {
   first_name: "Clarence",
   last_name: "Ying",
   date_of_birth: "1989-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 2,
   summary: 'No moneys in that office',
   user_id: 10,
   involvement: 3,
 },
 {
   first_name: "Ricky",
   last_name: "Leung",
   date_of_birth: "1991-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 4,
   summary: 'My moneys in that office',
   user_id: 11,
   involvement: 1,
 },
 {
   first_name: "Sam",
   last_name: "Harris",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 2,
   my_skill: 6,
   summary: 'No moneys in that office',
   user_id: 12,
   involvement: 2,
 },
 {
   first_name: "Richard",
   last_name: "Dawkins",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 2,
   summary: 'My moneys in that office',
   user_id: 13,
   involvement: 2,
 },
 {
   first_name: "Rosey",
   last_name: "Heng",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 3,
   my_skill: 1,
   summary: 'No moneys in that office',
   user_id: 14,
   involvement: 1,
 },
 {
   first_name: "Mano",
   last_name: "Singh",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 6,
   my_skill: 5,
   summary: 'My moneys in that office',
   user_id: 15,
   involvement: 2,
 },
 {
   first_name: "Finland",
   last_name: "Eng",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 5,
   my_skill: 2,
   summary: 'No moneys in that office',
   user_id: 16,
   involvement: 3,
 },
 {
   first_name: "Dong",
   last_name: "Lim",
   date_of_birth: "1985-03-21",
   country: "Singapore",
   looking_for: 2,
   my_skill: 3,
   summary: 'My moneys in that office',
   user_id: 17,
   involvement: 2,
 },
 {
   first_name: "Irene",
   last_name: "Wok",
   date_of_birth: "1987-03-21",
   country: "Singapore",
   looking_for: 1,
   my_skill: 4,
   summary: 'No moneys in that office',
   user_id: 18,
   involvement: 1,
 }
].each do |profile|
 Profile.create(profile)
end
