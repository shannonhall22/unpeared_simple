class AddCategoryIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :category_id, :integer
  end
end
