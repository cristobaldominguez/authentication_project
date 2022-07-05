Rails.application.routes.draw do
  get 'cookies/set'
  get 'cookies/show'
  get 'cookies/delete'

  get 'home/index'

  resources :sessions, only: %i[new create destroy]
  root 'home#index'
end
