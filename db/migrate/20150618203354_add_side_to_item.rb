class AddSideToItem < ActiveRecord::Migration
  def change
    add_column :items, :side, :string
  end
end
