Rails.application.routes.draw do
  get 'forums' => 'forums#index'
  get 'discussions/create' => 'discussions#createpost'

  get 'discussions' => 'discussions#post'

  get 'accounts' => 'accounts#register'
  post 'accounts' => 'accounts#createaccount'
  get '/accounts/:id' => 'accounts#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
