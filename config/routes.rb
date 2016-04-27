Rails.application.routes.draw do
  root 'home#index'

  get 'admin' =>'home#admin'

  get 'sessions/new'

  
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'
  resources :users
end
