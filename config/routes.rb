Rails.application.routes.draw do

  root to: 'toppages#index'


#  get 'tickets/index'
#  get 'tickets/show'
  get 'tickets/new'
  post 'tickets_create', to: 'tickets#create'
  get 'manage/tickets', to: 'tickets#manage'
  delete 'tickets/destroy', to: 'tickets#destroy'
  get 'tickets/edit'
  
  get 'signup', to: 'users#new'
  post 'users_create', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end