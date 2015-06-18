class RemoveSizeFromFoundItem < ActiveRecord::Migration
  def change
    remove_column :found_items, :size, :string
  end
end
