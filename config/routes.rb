Mercancias::Application.routes.draw do

  root 'products#index'


  resources :products, only: [:index, :show] do
    resources :comments
  end
end
