Rails.application.routes.draw do
  resources :articals
  devise_for :users
  get 'home/index'

  get 'home/about_us'

  get 'home/privacy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  
end
