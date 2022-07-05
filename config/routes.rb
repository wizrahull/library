Rails.application.routes.draw do
  resources :novels
  resources :clothes
   resources :authors do
    resources :novels
   end
resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "authors#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
