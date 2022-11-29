Rails.application.routes.draw do
  

  resources :marks
  resources :students
  get "home/index"
  get "/rank/rank"
  post "home/login"
  get "home/login"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
