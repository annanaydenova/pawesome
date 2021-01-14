Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals
  get 'dashboard', to: 'dashboards#index'
  get 'dashboard/animals', to: 'dashboards#animals'
  get 'dashboard/bookings', to: 'dashboards#bookings'
end
