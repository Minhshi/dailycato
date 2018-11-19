Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  root to: "pages#home"
=======
  root to: 'pages#home'

  namespace :admins do
    resources :restaurants
  end
  resources :restaurants, only: [:index, :show]
>>>>>>> 589d6a479004bbb5e061b5511bb8e250e71f07a7
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
