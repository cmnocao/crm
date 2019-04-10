class Customer < ApplicationRecord

  has_many :orders
  has_many :addresses
  has_many :phones

  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :phones

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :phone, presence: true

  def full_name
    first_name + " " + last_name
  end


end
