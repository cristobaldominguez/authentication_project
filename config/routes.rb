Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'cookies/set'
  get 'cookies/show'
  get 'cookies/delete'

end
