class CreateUserLuckies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_luckies do |t|
      t.string :result
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
