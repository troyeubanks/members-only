Rails.application.routes.draw do
  root               'users#new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get    'signup' => 'users#new'

  get    'login'  => 'sessions#new'

  resources :users
end
