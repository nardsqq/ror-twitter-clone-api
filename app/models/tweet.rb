class Tweet < ApplicationRecord
  belongs_to :user
  validates :text, presence: true, length: { maximum: 140 }
end
