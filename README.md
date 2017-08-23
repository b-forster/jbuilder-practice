```
# In app/controllers/products_controller.rb:
# Make the database call once and assign to a local variable

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
end

# In app/views/posts/index.json.jbuilder:
# Create JSON endpoint using Jbuilder gem
# This can be accessed at /posts.json

json.posts @posts do |post|
  json.type 'Post'
  json.content post.content
  json.user do
    json.type 'User'
    json.name post.user.name
  end

  json.comments post.comments do |comment|
    json.type 'Comment'
    json.user do
      json.type 'User'
      json.name comment.user.name
    end
    json.content comment.content
  end
end

# To create an array of posts, make an API call and set the JSON endpoint to a variable like posts_obj.
# Then iterate over each nested object to add it to a local array.

posts_array = []
posts_obj["posts"].each { |post|
  posts_array << post
}
```
