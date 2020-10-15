Rails.application.routes.draw do
  root 'homes#top'
  post 'search' => 'homes#search'

  devise_for :users,
              controllers: {
              sessions: 'users/sessions',
              passwords: 'users/passwords',
              registrations: 'users/registrations',
            }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users, only: [:show, :edit, :update] do
    resources :post_messages, only: [:create, :destroy]
    resources :training_records, only: [:new, :create, :edit, :update, :destroy]
    get 'confirmation' => 'users#confirmation'
    post 'withdrawal' => 'users#withdrawal'
    patch 'withdrawal' => 'users#withdrawal'
  end
  
  resources :teams do
    resources :bookmarks, only: [:create, :destroy]
  end
  resource  :inquiries, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
