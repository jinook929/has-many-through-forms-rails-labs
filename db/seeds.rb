# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Cat01")
Category.create(name: "Cat02")
Category.create(name: "Cat03")

User.create(username: "User01", email:"u1@user.com")
User.create(username: "User02", email:"u2@user.com")
User.create(username: "User03", email:"u3@user.com")

Post.create(title: "T1", content: "content 01")
Post.create(title: "T2", content: "content 02")
Post.create(title: "T3", content: "content 03")
Post.create(title: "T4", content: "content 04")

Comment.create(content: "Comment 01", user_id: 1, post_id: 1)
Comment.create(content: "Comment 02", user_id: 2, post_id: 2)
Comment.create(content: "Comment 03", user_id: 3, post_id: 3)
Comment.create(content: "Comment 04", user_id: 1, post_id: 4)
Comment.create(content: "Comment 05", user_id: 2, post_id: 1)
Comment.create(content: "Comment 06", user_id: 3, post_id: 2)
Comment.create(content: "Comment 07", user_id: 1, post_id: 3)
Comment.create(content: "Comment 08", user_id: 2, post_id: 4)
Comment.create(content: "Comment 09", user_id: 1, post_id: 4)

PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 2, category_id: 2)
PostCategory.create(post_id: 3, category_id: 3)
PostCategory.create(post_id: 4, category_id: 1)
PostCategory.create(post_id: 1, category_id: 2)
PostCategory.create(post_id: 2, category_id: 3)
PostCategory.create(post_id: 3, category_id: 1)
