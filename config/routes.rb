Technopark::Application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'

  get "static_pages/home"

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  resources :categories
  resources :events
 
  root :to => 'StaticPages#home'

end
