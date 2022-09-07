Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root "users#index"
  resources :session
  resources :users 
  resources :teacher_details
  resources :student_details

  get "/users/:id", to: "users#show"
  post "/teacher_details/new", to: "teacher_details#new"
end
