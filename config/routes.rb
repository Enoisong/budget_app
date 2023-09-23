Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  root "pages#splash"

  resources :users, only: [:show]
  resources :categories do
    resources :transactions, only: [:index, :new, :create]
  end
  # Other application routes...

end
