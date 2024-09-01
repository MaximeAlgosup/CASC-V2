Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#index'
  
  get 'admin' => 'homes#admin'

  get 'casc_news', to: 'homes#admin'
  get 'casc_news/:id', to: 'casc_news#show', as: :casc_new
  resources :casc_news, only: [ :edit, :update, :destroy, :new, :create]


  get 'categories', to: 'homes#admin'
  resources :categories, only: [:show, :edit, :update, :destroy, :new, :create]

  resources :users
end
