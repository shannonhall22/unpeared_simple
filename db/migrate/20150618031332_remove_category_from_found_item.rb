class RemoveCategoryFromFoundItem < ActiveRecord::Migration
  def change
    remove_column :found_items, :category, :string
  end
end
