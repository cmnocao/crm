class Order < ApplicationRecord

  belongs_to :customer

  def full_order
    item + ", " + total.to_s + ", " + postage_method + ", " + invoice.to_s + ", " + comment
  end
end
