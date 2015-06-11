class AddUserIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :user_id, :integer
  end
end
