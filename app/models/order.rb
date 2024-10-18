class Order < ApplicationRecord
  has_many :items, through: :order_details, source: :item
  belongs_to :customer
end
