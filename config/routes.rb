GreenApi::Application.routes.draw do
  get "log_out(.:format)" => "sessions#destroy", :as => "log_out"
  get "log_in(.:format)" => "sessions#new", :as => "log_in"
  get "sign_up(.:format)" => "users#new", :as => "sign_up"

  resources :sessions

  resources :items

  resources :tasks do
    resources :tasks
  end

  resources :categories do
    resources :tasks
  end

  resources :users do
    resources :tasks
    resources :items
  end
  
  root :to => "categories#index"
end
