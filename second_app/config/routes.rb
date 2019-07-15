Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/notes/new' => 'notes#new'
  get '/notes/create' => 'notes#create'
end
