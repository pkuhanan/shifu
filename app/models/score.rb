class Score < ApplicationRecord
  belongs_to :category
  belongs_to :feedback
end
