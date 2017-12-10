class Feedback < ApplicationRecord
  belongs_to :milestone
  has_many :scores
  has_many :categories, through: :scores
end
