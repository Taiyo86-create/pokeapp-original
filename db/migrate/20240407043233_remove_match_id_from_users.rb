class RemoveMatchIdFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :match_id, null: false, foreign_key: true
  end
end
