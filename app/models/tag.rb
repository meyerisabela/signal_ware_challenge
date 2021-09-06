class Tag < ApplicationRecord
  belongs_to :ticket

  validates :count, inclusion: 1..4
end
