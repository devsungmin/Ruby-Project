Rails.application.routes.draw do
#Note
  # Create
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create'
  # Read
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'
  # Update
  get '/notes/:id/edit' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'
  # Destroy
  delete  '/notes/:id' => 'notes#destroy'

#Comment
  #create
  post '/comments' => 'comments#create'

  #Destroy
  delete '/comments/:id' => 'comments#destroy'
  
end