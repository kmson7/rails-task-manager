Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new'
  get 'index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit'
end
