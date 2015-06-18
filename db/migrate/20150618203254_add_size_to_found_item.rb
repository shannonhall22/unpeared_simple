class AddSizeToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :size, :integer
  end
end
