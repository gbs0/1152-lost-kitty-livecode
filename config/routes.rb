Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pets#index"
  put "pets/:id", to: "pets#update", as: :pet_founded
  get "pets/new", to: "pets#new", as: :new_pet
  get "pets/:id", to: "pets#show", as: :pet
  post "pets", to: "pets#create"
end
