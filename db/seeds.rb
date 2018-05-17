# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

#users = User.create([{name: 'user1@example.com' },{ name: 'User1'},{ mobile: '123'}])

user_list = [
  [ "user1@example.com", "User1", 123 ],
  [ "user2@example.com", "User2", 123 ],
  [ "user3@example.com", "User3", 123 ]  
]

user_list.each do |email, name, mobile|
  User.create( email: email, name: name, mobile: mobile )
end
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
