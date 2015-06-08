# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joey = User.create(name: 'Joey F. Poon', email: 'poonjf@gmail.com', password: 'password', password_confirmation: 'password')
dummy_person = User.create(name: 'Dummy Person', email: 'dummy@person.com', password: 'cheesecake', password_confirmation: 'cheesecake')
test_user = User.create(name: 'Test User', email: 'test@user.com', password: 'bunniess', password_confirmation: 'bunniess')

Post.create(title: 'My Site!', content: 'http://joeypoon.com', votes: 6, user_id: joey.id)

Post.create(title: 'Some other post', content: 'http://cheezburger.com/8450623488', votes: 7, user_id: dummy_person.id)

Post.create(title: 'Yet another post', content: 'http://cheezburger.com/8504605952', votes: 0, user_id: test_user.id)

Post.create(title: 'Yet another post', content: 'http://cheezburger.com/8460247296', votes: -4, user_id: joey.id)

Post.create(title: 'More Posts!', content: 'http://cheezburger.com/7374342144', votes: 3, user_id: dummy_person.id)

Comment.create(content: 'Whoa this is a comment', user_id: joey.id, post_id: 1)
Comment.create(content: 'Whoa this is a comment', user_id: test_user.id, post_id: 1)
Comment.create(content: 'Whoa this is a comment', user_id: dummy_person.id, post_id: 2)
Comment.create(content: 'Whoa this is a comment', user_id: joey.id, post_id: 2)
Comment.create(content: 'Whoa this is a comment', user_id: dummy_person.id, post_id: 3)
Comment.create(content: 'Whoa this is a comment', user_id: test_user.id, post_id: 3)
