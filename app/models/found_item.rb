class FoundItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  mount_uploader :image1, Image1Uploader
  mount_uploader :image2, Image2Uploader
  mount_uploader :image3, Image3Uploader

  #validations of the new and edit forms for found items - location must be zip
  validates :name, :category, :location, :image1, presence: true
  validates :location, numericality: true
end
