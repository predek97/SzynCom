Rails.application.routes.draw do
  get 'user/search' => 'user#search'
  get 'user/:id' => 'user#show'
  
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
