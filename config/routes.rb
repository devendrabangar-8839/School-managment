Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: redirect('/users')
  get '/signup' => 'users#new', as: :signup
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
  get '/' => 'users#index' 
  root "sessions#new"
  resources :session
  resources :users 
  resources :teacher_details
  resources :student_details
  resource :session, only: %i[new create destroy] 
  get "/users/:id", to: "user#show"
end
