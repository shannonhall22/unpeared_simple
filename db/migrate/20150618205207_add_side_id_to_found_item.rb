class AddSideIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :side_id, :integer
  end
end
