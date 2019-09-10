Rails.application.routes.draw do
  resources :user_tasks
  resources :user_projects
  resources :tasks
  resources :projects
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
end
