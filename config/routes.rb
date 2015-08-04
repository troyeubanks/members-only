Rails.application.routes.draw do
  get 'posts/new'

  get 'posts/create'

  get 'posts/index'

  root               'users#new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get    'signup' => 'users#new'

  resources :users
end
