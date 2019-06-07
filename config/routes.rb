Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'
  get '/faqs' => 'static_pages#faqs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #ßroot 'application#hello'
  namespace :admin do
    root 'base#dashboard'
    resources :companies, :users
    #get '/companies/:id' => 'companies#show'
    # get '/manage-companies' => 'companies#manage'
  end
end
