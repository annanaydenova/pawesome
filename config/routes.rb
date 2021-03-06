Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
      resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:update, :destroy]

  get 'dashboard', to: 'dashboards#index'
  get 'dashboard/animals', to: 'dashboards#animals'
  get 'dashboard/bookings', to: 'dashboards#bookings'

end
