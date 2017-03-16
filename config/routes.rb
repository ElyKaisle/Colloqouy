Rails.application.routes.draw do
  devise_for :users
  resources :posts do
      	member do
  		put "like" => 'posts#upvote'
  		put "dislike" => 'posts#downvote'
  	end
  end 

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
