class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def draw
    luckies = ["大吉","中吉","小吉","吉","凶","大凶"]
    @post = luckies.sample
  end
end


# @post = Post.all.sort_by{rand}.slice(0,10)
# @post = SELECT * FROM posts ORDER BY RANDOM();

# Post.find_by(id: Random)

# Entry.all :order => "RANDOM()"


# Post.all.sort_by{rand}.slice(0,10)