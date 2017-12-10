Rails.application.routes.draw do
  resources :scores
  resources :feedbacks
  resources :categories
  resources :milestones
  resources :users
  resources :organizations
end
