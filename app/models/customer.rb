class Customer < ApplicationRecord

  has_many :orders
  has_many :addresses
  has_many :phones

  accepts_nested_attributes_for :phones

  def full_name
    first_name + " " + last_name
  end


end
