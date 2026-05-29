Rails.application.routes.draw do
  # root "posts#index"
  root "users#new"
  post "confirmation", to: "users#create"
  get "creation", to: "users#new"
end
