class Product < ApplicationRecord


  belongs_to :user, :optional => true
  belongs_to :category, :optional => true
  has_many :line_items, dependent: :destroy

  geocoded_by :location
  after_validation :geocode

end
