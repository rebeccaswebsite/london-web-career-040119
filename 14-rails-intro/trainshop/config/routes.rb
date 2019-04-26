Rails.application.routes.draw do
  # generates 2 paths,
  # show action (GET /trains/3)
  # index action (GET /trains)
  # resources :trains, only: [:show, :index]

  get '/trains', to: 'trains#index', as: 'trains'
  get '/trains/:id', to: 'trains#show', as: 'train'


end
