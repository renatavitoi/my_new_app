Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }

  resources :products do
    resources :comments
  end

  resources :users

  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/thank_you'
  get '/products/:users/1', to: 'products#show'
  get '/products', to: 'products#index'

  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'simple_pages#landing_page'


end
