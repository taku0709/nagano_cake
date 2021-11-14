Rails.application.routes.draw do
 root 'public/homes#top'
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

get "admin" => "admin/homes#top"
get "/home/about" => "homes#about"
get '/customers/:id/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
patch '/customers/:id/withdrawal' => 'customers#withdrawal', as: 'withdrawal'

namespace :admin do
  resources :genres
  resources :items
  resources :customers
  resources :orders
  resources :order_details
end

namespace :public do
  resources :cart_items
  resources :items
  resources :customers
  resources :orders
  resources :addresses
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
