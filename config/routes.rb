Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :posts do
      	member do
  		put "like" => 'posts#upvote'
  		put "dislike" => 'posts#downvote'
  	end
    resources :comments
  end 

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
