Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'healths/index'
  post 'healths/create', to: 'users#create'
  
  resources :posts
  get 'users/index'
end
