Rails.application.routes.draw do
  root "decks#index"
  resources :cards
  resources :relationships, only: [:create, :destroy]
  resources :decks, path: ''
  get ':slug', to: 'decks#show'
end