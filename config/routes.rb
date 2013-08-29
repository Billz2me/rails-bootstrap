RailsBootstrap::Application.routes.draw do
  root :to => 'application#index'

  resources :posts 

  resources :users

end
