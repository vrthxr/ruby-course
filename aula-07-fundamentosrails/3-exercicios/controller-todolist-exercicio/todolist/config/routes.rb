Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks/:id", to: "tasks#show", defaults: { format: "json" }
  get "tasks", to: "tasks#index", defaults: { format: "json" }
  resources :posts do
    member do
      get "comments", to: "posts#comments"
      post "create_comment", to: "posts#create_comment"
      # posts/:post_id/comments ou /create_comment
    end
  end

  get "example/time_sensitive", to: "example#time_sensitive_action"
end
