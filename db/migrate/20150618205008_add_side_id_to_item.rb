class AddSideIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :side_id, :integer
  end
end
