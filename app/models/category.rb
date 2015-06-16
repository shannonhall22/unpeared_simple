class Category < ActiveRecord::Base
  has_many :found_items
  has_many :items
end
