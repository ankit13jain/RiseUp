Rails.application.routes.draw do
  resources :accounts
  resources :events
  resources :charity_oraganizations
  resources :user_activities
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
