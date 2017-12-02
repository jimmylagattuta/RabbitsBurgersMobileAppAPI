Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/api/v1/users/signup" => "users#new"
  post "/api/v1/users" => "users#create"

  get "/api/v1/sessions/login" => "sessions#new"
  post "/ai/v1/sessions/login" => "sessions#create"
  get "/api/v1/sessions/logout" => "sessions#destroy"

end
