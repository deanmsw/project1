class Product < ApplicationRecord


  belongs_to :user, :optional => true
  belongs_to :category, :optional => true
  geocoded_by :location
  after_validation :geocode

end
