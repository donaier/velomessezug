Velomessezug::Application.routes.draw do
  devise_for :admins
  mount Kuhsaft::Engine => '/'

end
