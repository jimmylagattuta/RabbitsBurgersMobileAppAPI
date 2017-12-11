Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/api/v1/users/signup" => "api/v1/users#new"
  post "/api/v1/users" => "api/v1/users#create"

  get "/api/v1/sessions/check" => "api/v1/sessions#check"
  post "/api/v1/sessions/login" => "api/v1/sessions#new"
  post "/ai/v1/sessions/login" => "api/v1/sessions#create"
  get "/api/v1/sessions/logout" => "api/v1/sessions#destroy"

end
