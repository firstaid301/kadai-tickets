Rails.application.routes.draw do

  get 'tickets/index'
  get 'tickets/show'
  get 'tickets/new'
  post 'tickets_create', to: 'tickets#create'
  get 'manage/tickets', to: 'tickets#manage'
  delete 'tickets/destroy', to: 'tickets#destroy'
  get 'tickets/edit'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'


  
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  
  resources :users, only: [:new, :index, :show, :create] 

end