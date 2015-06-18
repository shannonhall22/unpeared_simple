class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  mount_uploader :image1, Image1Uploader
  mount_uploader :image2, Image2Uploader
  mount_uploader :image3, Image3Uploader

  #validations of the new and edit forms for items - price must be number
  validates :name, :price, :image1, :category_id, presence: true
  validates :price, numericality: true
end
