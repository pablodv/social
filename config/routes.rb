Social::Application.routes.draw do
  devise_for :users

  namespace :dashboard do
    resources :real_estates do
      member do
        get 'upload_images'
      end
    end

    root :to => 'real_estates#index'
  end

  root :to => 'home#index'

end
