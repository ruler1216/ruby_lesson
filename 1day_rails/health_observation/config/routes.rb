Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "healths#index"
  get "healths" => "healths#top"
  get "healths/index" => "healths#index"
  get "healths/new" => "healths#new"
  post "healths" => "healths#create"
  resources :healths, only:[:show]
end