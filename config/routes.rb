Rails.application.routes.draw do
  root 'home#index'
  get 'contact/' => 'contact#index_contact'
  get 'team/' => 'team#index_team'
  get 'welcome/:first_name' => 'home#welcome'
  get 'potin/:id' => 'home#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
