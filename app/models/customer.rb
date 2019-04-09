class Customer < ApplicationRecord

  has_many :orders
  has_many :addresses

  accepts_nested_attributes_for :addresses

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :phone, presence: true

  def full_name
    first_name + " " + last_name
  end


end
