class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :user_luckies, dependent: :destroy

    def self.first_user
        self.first || self.create
    end
end
