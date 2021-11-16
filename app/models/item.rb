class Item < ApplicationRecord

  has_many :orders
  belongs_to :user

  attachment :image

end
