class FoundItem < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image1, Image1Uploader

  #validations of the new and edit forms for found items - location must be zip
  validates :name, :category, :location, :image1, presence: true
  validates :location, numericality: true
end
