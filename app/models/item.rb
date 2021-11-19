class Item < ApplicationRecord
  is_impressionable
  acts_as_taggable

  has_many :orders
  belongs_to :user

  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

	def bookmarked_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  attachment :image

  enum item_status: { contribution: 0, reception: 1, reception_stop: 2 }

end


