class AddUserIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :user, null: false, foreign_key: true, after: :content
  end
end
