class Address < ApplicationRecord

  geocoded_by :postcode
  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.line_1  = geo.address
      obj.country = geo.country
      obj.city    = geo.city
      obj.latitude = geo.latitude
      obj.longitude = geo.longitude
    end
  end

  after_validation :geocode, :reverse_geocode

  belongs_to :customer
  has_many :orders

  def full_address
    [line_1, city, country, postcode].compact.join(", ")
  end

  def postcode_half
    postcode.split.first
  end

  def quote
    if CourierRate.where(postcode: postcode_half).count == 0
      false
    else
      true
    end
  end
end
