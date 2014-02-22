Velomessezug::Application.routes.draw do

  namespace :cms do
    resources :suppliers
    resources :activities
  end

  devise_for :admins
  mount Kuhsaft::Engine => '/'

  root 'kuhsaft/pages#show'
end
