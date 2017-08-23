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