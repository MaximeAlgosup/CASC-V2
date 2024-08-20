Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#index'
  
  get 'admin' => 'homes#admin'

  get 'casc_news', to: 'homes#admin'
  get 'casc_news/:id/edit', to: 'casc_news#edit'
  get 'casc_news/new', to: 'casc_news#new'
  post 'casc_news', to: 'casc_news#create'
  patch 'casc_news/:id', to: 'casc_news#update'
  get 'casc_news/:id', to: 'casc_news#show'
  delete 'casc_news/:id', to: 'casc_news#destroy'


  resources :users
end
