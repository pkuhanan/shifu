class User < ApplicationRecord
  belongs_to :organization
  has_many :milestones_as_mentee, class_name: "Milestone", foreign_key: "mentee_id"
  has_many :milestones_as_mentor, class_name: "Milestone", foreign_key: "mentor_id"

  def milestones
    Milestone.where(mentor_id: id).or(Milestone.where(mentee_id: id))
  end
end
