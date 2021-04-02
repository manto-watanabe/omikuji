class RemoveColumnToUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :result, :string
  end
end
