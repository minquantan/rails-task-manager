Rails.application.routes.draw do
  # get 'tasks/index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # # ------------------------READ---------------------------------
  # # read all tasks
  # get 'tasks', to: 'tasks#index'

  # # ---------------------CREATE----------------------------------
  # # give them a form to fill out
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # # -------------------------------------------------------------
  # # use the details to make a new task
  # post 'tasks', to: 'tasks#create'
  # # -------------------------------------------------------------

  # # read one task
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # # -------------------------------------------------------------

  # # ---------------------UPDATE----------------------------------
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'

  # # ---------------------DELETE----------------------------------
  # delete 'tasks/:id', to: 'tasks#destroy'
  # # -------------------------------------------------------------
  resources :tasks
end
