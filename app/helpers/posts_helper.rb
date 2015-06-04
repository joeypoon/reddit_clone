module PostsHelper

  def truncate_post post
    truncate(post, length: 100)
  end

  def post_path(post)
    "/posts/#{post.id}/#{post.title.parameterize}"
  end

end
