Rails.application.routes.draw do
  root "welcome#index"
  post "adicionar_produto", to: "welcome#adicionar_produto"
end
