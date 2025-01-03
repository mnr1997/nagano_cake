class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :items, through: :cart_items, source: :item
  has_many :addresses, dependent: :destroy
  has_many :order, dependent: :destroy
end
