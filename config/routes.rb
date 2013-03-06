Technopark::Application.routes.draw do
  
  get "pages/show"

  mount Ckeditor::Engine => '/ckeditor'

  get "static_pages/home"

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  resources :categories
  resources :pages
  match '/news',  to: 'events#index'
 
  root :to => 'StaticPages#home'

end
