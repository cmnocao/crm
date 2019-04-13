class Address < ApplicationRecord

  belongs_to :customer
  has_many :orders

  def full_address
    "#{address_type}, #{line_1}, #{city}, #{country}, #{postcode}"
  end

  def postcode_half
    postcode.split.first
  end

end
