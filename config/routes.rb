Rails.application.routes.draw do

  resources :recipes do
    resources :tsukurepos
  end
  get 'home/index'

  devise_for :users
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
