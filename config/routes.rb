Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "pets/new", to: "pets#new", as: :new_pet
  post "pets", to: "pets#create"
  # resources :pets, only: [:new, :create]

  # Index
  get "pets", to: "pets#index"

  # Show
  get "pets/:id", to: "pets#show", as: :pet
end
