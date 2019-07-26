Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'
  get '/faqs' => 'static_pages#faqs'
  get '/dashboard' => 'users#dashboard'
  post '/dashboard' => 'users#dashboard'
  # post '/dashboard/calculator' => 'users#calculator'


  namespace :admin do
    root 'base#dashboard'
    resources :companies
    resources :users
    resources :option_values
    
  end
end
