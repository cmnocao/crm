class Address < ApplicationRecord

  belongs_to :customer

  def full_address
    line_1.to_s + ', ' + city.to_s + ', ' + country.to_s + ', ' + postcode.to_s + ', ' + address_type.to_s
  end

end
