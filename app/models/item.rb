class Item < ApplicationRecord

  has_many :orders
  belongs_to :user

  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

  attachment :image

  enum item_status: { contribution: 0, reception: 1, reception_stop: 2 }

end


