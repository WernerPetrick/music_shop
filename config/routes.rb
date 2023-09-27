Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'

  get 'signup', to: 'accounts#signup'
  post 'signup', to: 'accounts#create'

  delete "logout", to: 'accounts#destroy' 

  get 'login', to: 'accounts#login'
  post 'login', to: 'accounts#getaccess'

  get 'changepass', to: 'accounts#changepass'

  get 'dashboard', to: 'dashboard#dashboard'

  get 'account', to: 'dashboard#account'

  get 'billing', to: 'dashboard#billing'

  get 'shipping', to: 'dashboard#shipping'
  post 'shipping', to: 'dashboard#createshipping'

  get 'orders', to: 'dashboard#orders'

  get 'wishlist', to: 'dashboard#wishlist'
  
  get 'books', to: 'products#books'

  get 'percussion', to: 'products#percussion'
  
  get 'pianos', to: 'products#pianos'

  get 'stringed', to: 'products#stringed'

  get 'wind', to: 'products#wind'

  resources :categories do
    resources :products, only: [:index]
  end

end
