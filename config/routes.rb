Rails.application.routes.draw do
  resources :users, except: [:index]

  resources :boards do
    resources :lists, only: [:create,:update,:destroy]
    resources :labels, only: [:create, :update, :destroy]
  end

  resources :lists, only: [] do 
    resources :cards, except: [:index]
  end

  resources :cards, only: [] do
    resources :checklists, only: [:create, :update, :destroy]
  end

  resources :checklists, only: [] do
    resources :check_items, only: [:create, :update, :destroy]
  end

  post 'cards/:card_id/cards_labels', to: 'cards_labels#create'
  delete 'cards/:card_id/cards_labels', to: 'cards_labels#destroy'

  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
end
