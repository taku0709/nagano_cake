class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_details
  belongs_to :genres
  attachment :image
  
  enum is_active: {on_sale: 0, off_sale: 1}
end
