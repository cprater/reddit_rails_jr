RedditJrRails::Application.routes.draw do

  root 'posts#index'

  # DELETE 'sessions#destroy'

  resources :users do 
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :sessions
end
