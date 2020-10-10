Rails.application.routes.draw do
  root 'homes#top'

  devise_for :users,
              controllers: {
              sessions: 'users/sessions',
              passwords: 'users/passwords',
              registrations: 'users/registrations',
            }

  resources :users, only: [:show, :edit, :update] do
    resources :post_messages, only: [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
    resources :training_records, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :teams
  resource  :inquiries, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
