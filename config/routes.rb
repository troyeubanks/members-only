Rails.application.routes.draw do
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get    'signup' => 'users#new'

  resources :users
end
