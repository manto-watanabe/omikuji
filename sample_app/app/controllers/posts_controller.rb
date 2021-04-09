class PostsController < ApplicationController
  after_action :create_user_lucky, only: :draw

  def index
    if User.first.present?
      @user_lucky_results = User.first.user_luckies.map(&:result)
    else
      @user_lucky_results = []
    end
  end

  def draw

    lucky = luckies.sample
    user = User.first_user
    @post = Post.create(content: lucky, user_id: user.id)

  end

  private

    def luckies
      %w(大吉 中吉 小吉 吉 凶 大凶)
    end

    def create_user_lucky
      UserLucky.create(result: @post.content, user_id: @post.user_id) 
    end
end


# @post = Post.all.sort_by{rand}.slice(0,10)
# @post = SELECT * FROM posts ORDER BY RANDOM();

# Post.find_by(id: Random)

# Entry.all :order => "RANDOM()"


# Post.all.sort_by{rand}.slice(0,10)