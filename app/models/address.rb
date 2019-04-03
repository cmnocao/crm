class Address < ApplicationRecord

  belongs_to :customer

  def full_address
    line_1 + ', ' + city + ', ' + country + ', ' + postcode
  end

end
