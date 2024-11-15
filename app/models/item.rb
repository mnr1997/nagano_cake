class Item < ApplicationRecord
  has_many :customers, through: :cart_items, source: :customer
  has_many :orders, through: :order_details, source: :order
  belongs_to :genre, optional: true
  
  has_one_attached :image
  
  validates :image, presence: true
  
  def get_image(width, height)
    if image.blob.variable?
      image.variant(resize_to_fit: [width, height]).processed
    else
      image
    end
  end
end
