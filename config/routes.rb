Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # add a new route to list the tasks
  post 'tasks', to: 'tasks#create'
  get 'tasks', to: 'tasks#index'
  get 'tasks/add', to: 'tasks#add'
  get    'tasks/:id',      to: 'tasks#show'

  get    'tasks/:id/edit', to: 'tasks#edit'
  patch  'tasks/:id',      to: 'tasks#update'

  delete 'tasks/:id',      to: 'tasks#destroy'
end
