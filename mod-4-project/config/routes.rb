Rails.application.routes.draw do
  resources :user_tasks
  resources :user_projects
  resources :tasks
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
