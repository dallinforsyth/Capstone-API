Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
  post "/pets" => "pets#create"
  post "/breeds" => "breeds#create"
  post "/food_schedules" => "food_schedules#create"
  delete "/food_schedules/:id" => "food_schedules#destroy"
end
