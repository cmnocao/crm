class Order < ApplicationRecord

  validates :item, :total, :invoice, :postage_method, :postage_price, :address_id, presence: true

  belongs_to :customer
  belongs_to :address

end
