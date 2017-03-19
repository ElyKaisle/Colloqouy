Rails.application.routes.draw do
  resources :comments do
    member do
      put "like" => 'comments#upvote'
      put "dislike" => 'comments#downvote'
    end
  end

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
