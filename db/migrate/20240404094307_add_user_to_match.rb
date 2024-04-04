class AddUserToMatch < ActiveRecord::Migration[7.1]
  def change
    add_reference :matches, :user, null: false, foreign_key: true
  end
end
