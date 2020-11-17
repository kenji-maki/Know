Rails.application.routes.draw do
  get 'users/new'
  root 'pages#login'

end
