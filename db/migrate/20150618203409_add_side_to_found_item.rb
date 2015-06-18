class AddSideToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :side, :string
  end
end
