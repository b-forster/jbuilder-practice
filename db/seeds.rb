Post.delete_all
User.delete_all
Comment.delete_all

User.create!([
  { name: "User 1" },
  { name: "User 2" },
  { name: "User 3" },
  { name: "User 4" },
  { name: "User 5" },
])

Post.create!([
  { content: "First post", user_id: (1 + rand(5)) },
  { content: "Second post", user_id: (1 + rand(5)) },
  { content: "Third post", user_id: (1 + rand(5)) },
  { content: "Fourth post", user_id: (1 + rand(5)) }
])

Comment.create!([
  { content: "First post", user_id: (1 + rand(5)), post_id: (1 + rand(4)) },
  { content: "Second post", user_id: (1 + rand(5)), post_id: (1 + rand(4)) },
  { content: "Third post", user_id: (1 + rand(5)), post_id: (1 + rand(4)) },
  { content: "Fourth post", user_id: (1 + rand(5)), post_id: (1 + rand(4)) }
])