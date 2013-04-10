Technopark::Application.routes.draw do
  
  get "pages/show"

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  resources :categories
  resources :pages
  match '/news',  to: 'events#index'
  match '/contacts',  to: 'StaticPages#contacts'
 
  root :to => 'StaticPages#home'

end
