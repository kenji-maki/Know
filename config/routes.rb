Rails.application.routes.draw do
  get 'topics/new'
  get 'users/new'
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics
  
  get     '/login',  to: 'sessions#new' #login_pathがindex.html.erbにある #get通信で/loginページを呼び出して、同時にsessions newアクションを行っている
  post    '/login',  to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
end