json.extract! feedback, :id, :milestone_id, :description, :completed, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
