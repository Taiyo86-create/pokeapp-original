class RemoveMatchesIdFromMatch < ActiveRecord::Migration[7.1]
  def change
    remove_column :matches, :matches_id, :reference
  end
end
