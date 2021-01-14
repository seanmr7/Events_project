Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :events, only: [:new, :create, :update, :destroy, :show]
  end
  resources :events, only: [:index] do
    member do
      get "attend"
    end
  end
end
