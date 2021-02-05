class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :user_luckies, dependent: :destroy
end
