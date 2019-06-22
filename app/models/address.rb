class Address < ApplicationRecord

  geocoded_by :postcode
  after_validation :geocode

  belongs_to :customer
  has_many :orders

  def full_address
    [line_1, city, country,postcode].compact.join(", ")
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
