class AddSizeToItem < ActiveRecord::Migration
  def change
    add_column :items, :size, :integer
  end
end
