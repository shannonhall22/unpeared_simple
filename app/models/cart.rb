class Cart < ActiveRecord::Base
  has_many :items
  has_many :users
  has_many :cart_items

end
