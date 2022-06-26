Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'typeahead/:input' => 'users#typeahead'
    get '/users' => 'users#index'
    get 'user/:id' => 'users#show'
    put 'user/:id' => 'users#update'
    post 'user' => 'users#create'
    delete 'user/:id' => 'users#destroy'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
