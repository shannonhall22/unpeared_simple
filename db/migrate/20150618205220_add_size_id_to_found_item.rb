class AddSizeIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :size_id, :integer
  end
end
