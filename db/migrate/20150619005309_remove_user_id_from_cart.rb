class RemoveUserIdFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :user_id, :integer
  end
end
