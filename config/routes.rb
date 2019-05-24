Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'static_pages#home'
  get '/faqs' => 'static_pages#faqs'
  get '/dashboard' => 'static_pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #ßroot 'application#hello'
end
