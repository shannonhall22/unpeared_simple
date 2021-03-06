class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user_owner

  def current_user_owner
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to root_url
    end
  end


  def show
    @user = User.all
    @found_items = current_user.found_items
    @items = current_user.items

    respond_to do |format|
      format.html
      format.js
    end
  end
end
