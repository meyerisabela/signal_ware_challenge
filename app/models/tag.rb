class Tag < ApplicationRecord
  belongs_to :ticket

  validates :count, inclusion: 1..4

  def self.highest_count
    all.order('count DESC').first
  end
end
