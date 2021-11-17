class Order < ApplicationRecord

  belongs_to :user
  belongs_to :item

  enum comment_status: { request: 0, question: 1, reply: 2 }

end
