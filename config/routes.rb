
Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:home]
  devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy'   
  end  
end