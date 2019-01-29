Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/tasks', to: 'tasks#create'
  get '/tasks', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show'
end
