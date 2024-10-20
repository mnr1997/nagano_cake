class Item < ApplicationRecord
  has_many :customers, through: :cart_items, source: :customer
  has_many :orders, through: :order_details, source: :order
  belongs_to :genre
end
