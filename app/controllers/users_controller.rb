class UsersController < ApplicationController
  def show
    @found_items = current_user.found_items
    @items = current_user.items
  end
end
