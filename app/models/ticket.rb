class Ticket < ApplicationRecord
  has_one :tag

  validates :user_id, :title, presence: true
end
