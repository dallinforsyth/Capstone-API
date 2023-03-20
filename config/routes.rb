Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
  post "/pets" => "pets#create"
end
