class Customer < ApplicationRecord

  has_many :orders

  has_many :addresses

  def full_name
    first_name + " " + last_name
  end


end
