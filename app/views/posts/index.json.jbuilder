json.posts @posts do |post|
  json.type Post
  json.content post.content

  json.comments post.comments do |comment|
    json.type Comment

    # json.users post.comments.user do |comment|

    # end
    
    json.content comment.content
  end
end