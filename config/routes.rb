Rails.application.routes.draw do
  get 'mentor_subcats/new'

  # root 'sessions#new'
  root 'categories#index'
  get 'sessions/new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/newmentor', to: 'mentor_infos#new'
  post '/newmentor', to: 'mentor_infos#create'
  get '/mentorprofile', to: 'mentor_infos#show'

  resources :mentor_subcats


  get '/addmentor', to: 'mentor_infos#new'
  post '/addmentor', to: 'mentor_infos#create'
  get '/mentor_infos/edit', to: 'mentor_infos#edit'
  resources :mentor_infos

  get '/booking/:mentor_id', to: 'bookings#new'
  post '/booking', to: 'bookings#create'


get '/mentor_availabilities', to: 'mentor_availabilities#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories
  resources :subcategories
  get '/bookings/notification', to: 'bookings#notification'
  resources :bookings


  get 'bookings/:id/confirm', to: 'bookings#change_status'

end
