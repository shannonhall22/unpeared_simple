class RemoveSideFromFoundItem < ActiveRecord::Migration
  def change
    remove_column :found_items, :side, :string
  end
end
