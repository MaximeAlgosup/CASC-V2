Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#index'
  
  get 'admin' => 'homes#admin'

  resources :users
end
