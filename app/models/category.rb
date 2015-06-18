class Category < ActiveRecord::Base
  has_many :found_items
  has_many :items

  validates :name, presence: true
end
