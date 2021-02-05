class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def draw
    @post = Post.all.sort_by{rand}.slice(0,10)
  end
end


# @post = SELECT * FROM posts ORDER BY RANDOM();

# Post.find_by(id: Random)

# Entry.all :order => "RANDOM()"


# Post.all.sort_by{rand}.slice(0,10)