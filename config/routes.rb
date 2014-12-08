TrelloClone::Application.routes.draw do
  root to: 'static_pages#root'

  match '/auth/:provider/callback', :to => 'authentications#create', :via => [:get, :post]

  resources :users
  resource :session
  resources :authentications
  
  

  namespace :api, defaults: { format: :json } do
    resources :boards, except: [:new, :edit]
    resources :lists, only: [:create, :update, :destroy]
    resources :cards, only: [:create, :show, :update, :destroy]
    resources :items, only: [:create, :update, :destroy]
    # resources :board_memberships
    # resources :card_assignments
  end
end
