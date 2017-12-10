class Category < ApplicationRecord
  belongs_to :milestone
  has_many :scores
  has_many :feedbacks, through: :scores

  def summary
    {
      completed_score: completed_score,
      incompleted_score: incompleted_score,
      point_goal: point_goal
    }
  end

  def completed_score
    feedbacks.where(completed: true).sum(:points)
  end

  def incompleted_score
    feedbacks.where(completed: false).sum(:points)
  end
end
