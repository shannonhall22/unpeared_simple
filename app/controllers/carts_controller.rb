class CartsController < ApplicationController

  def show
    @carts = Cart.all
    @items = Item.all
    @cart_items = CartItem.all
  end

end
