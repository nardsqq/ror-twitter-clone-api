class Tweet < ApplicationRecord
  scope :latest, -> { order(:created_at) }

  belongs_to :user
  validates :text, presence: true, length: { maximum: 140 }
end
