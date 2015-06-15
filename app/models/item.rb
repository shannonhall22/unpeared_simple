class Item < ActiveRecord::Base
  belongs_to :user

  #validations of the new and edit forms for items - price must be number
  validates :name, :category, :price, :image1, presence: true
  validates :price, numericality: true
end
