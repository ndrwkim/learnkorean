Rails.application.routes.draw do
  root "decks#index"
  resources :decks
  resources :cards
  resources :relationships, only: [:create, :destroy]
end