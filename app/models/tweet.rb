class Tweet < ApplicationRecord
  belongs_to :user
  delegate :username, to: :user

  validates :text, presence: true, length: { maximum: 140 }

  scope :latest, -> { order(:created_at) }
end
