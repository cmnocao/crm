class Address < ApplicationRecord
  before_validation :postcode_upcase
  geocoded_by :postcode
  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.line_2  = geo.street_address
      obj.country = geo.country
      obj.city    = geo.city
    end
  end

  after_validation :geocode, :reverse_geocode, on: [:create]


  belongs_to :customer
  has_many :orders

  def full_address
    [line_1, line_2, city, country, postcode].compact.join(", ")
  end

  def postcode_upcase
    postcode.upcase!
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
