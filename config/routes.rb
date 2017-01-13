Rails.application.routes.draw do
  root "decks#index"
  resources :decks, path: ''
  get '/:slug', to: 'decks#show'
  resources :cards
  resources :relationships, only: [:create, :destroy]
end