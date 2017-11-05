Rails.application.routes.draw do
  resources :events
  resources :charities
  resources :user_activity_histories
  root 'application#index'
 	devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  scope "/admin" do
    get '/users/show', to: 'users#show'
    post '/users/savenew', to: 'users#savenew'
    resources :users
  end
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
