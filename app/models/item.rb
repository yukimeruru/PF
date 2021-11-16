class Item < ApplicationRecord

  has_many :orders
  belongs_to :user

  attachment :image

  enum item_status: { contribution: 0, reception: 1, reception_stop: 2 }

end


