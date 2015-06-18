class RemoveSideFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :side, :string
  end
end
