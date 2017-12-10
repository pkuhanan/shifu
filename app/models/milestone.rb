class Milestone < ApplicationRecord
  belongs_to :mentor, class_name: "User", foreign_key: "mentor_id"
  belongs_to :mentee, class_name: "User", foreign_key: "mentee_id"
  has_many :categories

  def summary
    categories.each_with_object({}) do |category,h|
      h[category.name] = category.summary
    end
  end
end
