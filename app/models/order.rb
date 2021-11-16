class Order < ApplicationRecord

  belongs_to :user
  belongs_to :item

  enum comment_status: { order: 0, question: 1, reply: 2 }

end
