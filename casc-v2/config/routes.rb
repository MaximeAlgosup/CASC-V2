Rails.application.routes.draw do
  devise_for :users
  
  root 'homes#index'
  
  get 'admin' => 'homes#admin'
  get 'admin/:tab' => 'homes#admin'

  get 'casc_news', to: redirect("admin/news")
  get 'casc_news/new', to: 'casc_news#new', as: :new_casc_new
  get 'casc_news/:id', to: 'casc_news#show', as: :casc_new
  post 'casc_news', to: 'casc_news#create'
  get 'casc_news/:id/edit', to: 'casc_news#edit', as: :edit_casc_new
  patch 'casc_news/:id', to: 'casc_news#update'
  delete 'casc_news/:id', to: 'casc_news#destroy'



  resources :categories, only: [:index, :show, :edit, :update, :destroy, :new, :create]

  get 'challenges', to: redirect("admin/challenges")
  resources :challenges, only: [:show, :edit, :update, :destroy, :new, :create]

  resources :users
end
