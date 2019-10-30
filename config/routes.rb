Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  # User
  root 'user#top'
  get '/index'=>'user#index'
  get '/new'=>'user#new'
  get '/user/:id'=>'user#show'
  get '/:id/edit'=>'user#edit'
  put '/update'=>'user#update'
  # Session
  get '/login'=>'session#login'
  post '/check'=>'session#check'
  post '/create'=>'session#create'
  get '/destroy'=>'session#destroy'
  get '/test_login'=>'session#test_login'
  # Post
  get '/post/new'=>'post#new'
  get '/post/index'=>'post#index'
  get '/post/:id'=>'post#show'
  post '/post/create'=>'post#create'
  # Home
  get '/home/index'=>'home#index'
  get '/home/search'=>'home#search'
  get '/home/search_result'=>'home#search_result'
  get '/home/new'=>'home#new'
  post '/home/create'=>'home#create'
  get '/home/all'=>'home#all'
  get '/home/:id/edit'=>'home#edit'
  patch '/home/update/:id'=>'home#update'
  get '/search/:id'=>'home#show'
  get '/home/show/all_edit'=>'home#all_edit'
end
