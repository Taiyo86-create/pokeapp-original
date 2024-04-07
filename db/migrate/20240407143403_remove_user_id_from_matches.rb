class RemoveUserIdFromMatches < ActiveRecord::Migration[7.1]
  def change
    remove_column :matches, :user_id, null: false, foreign_key: true
  end
end
