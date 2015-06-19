class AddInCartToItem < ActiveRecord::Migration
  def change
    add_column :items, :in_cart, :boolean
  end
end
