class UsersController < ApplicationController
  def show
    @found_items = FoundItem.all
    @items = Item.all
  end
end
