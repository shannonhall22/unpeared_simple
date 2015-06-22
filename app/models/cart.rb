class Cart < ActiveRecord::Base
  has_many :items, :through => :cart_items
  has_many :users
  has_many :cart_items

  def subtotal

  end
end
