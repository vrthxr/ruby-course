Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks/:id", to: "tasks#show", defaults: {format: "json"}
  get "tasks", to: "tasks#index", defaults: {format: "json"}
end
