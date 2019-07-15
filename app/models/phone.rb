class Phone < ApplicationRecord

  validates :number, presence: true

  belongs_to :customer

end
