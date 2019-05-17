Rails.application.routes.draw do
  devise_for :users
  get 'users/new'
  root 'static_pages#home'
  get '/faqs' => 'static_pages#faqs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #ßroot 'application#hello'
end
