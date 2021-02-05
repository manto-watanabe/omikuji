class PostsController < ApplicationController
  def index
    if User.first.present?
      @user_lucky_results = User.first.user_luckies.map(&:result)
    else
      @user_lucky_results = []
    end
  end

  def draw
    lucky = luckies.sample
    user = User.first || User.create
    @post = Post.create(content: lucky, user_id: user.id)
    UserLucky.create(result: @post.content, user_id: @post.user_id)
  end

  private

    def luckies
      %w(大吉 中吉 小吉 吉 凶 大凶)
    end
end


# @post = SELECT * FROM posts ORDER BY RANDOM();

# Post.find_by(id: Random)

# Entry.all :order => "RANDOM()"


# Post.all.sort_by{rand}.slice(0,10)