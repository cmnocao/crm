class Customer < ApplicationRecord

  validates :first_name, :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true

  has_many :orders
  has_many :addresses
  has_many :phones

  accepts_nested_attributes_for :phones

  def full_name
    first_name + " " + last_name
  end


end
