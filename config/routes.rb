Social::Application.routes.draw do
  devise_for :users

  namespace :dashboard do
    resources :real_estates

    root :to => 'real_estates#index'
  end

  root :to => 'home#index'

end
