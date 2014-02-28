Velomessezug::Application.routes.draw do

  namespace :cms do
    resources :suppliers
    resources :activities
  end

  devise_for :admins
  mount Kuhsaft::Engine => '/'

  post 'contacts/create'
  get  'contacts/thanks'
  get  'contacts/failed'

  root 'kuhsaft/pages#show'
end
