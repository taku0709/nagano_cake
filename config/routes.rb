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



get "about", :to => "public/homes#about"


namespace :admin do
  resources :genres
  resources :items
  resources :customers
  resources :orders
  resources :order_details
  get "", :to =>"homes#top",as: 'top'
end

namespace :public do
  resources :cart_items do
   delete :destroy_all, on: :collection
  end
  resources :items
  post "/items/:id(.:format)" => "items#show"
  resource :customers
  get "/customers/my_page" => "customers#show"
  get '/customers/:id/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
  patch '/customers/:id/withdraw' => 'customers#withdraw', as: 'withdraw'
  resources :orders
  post "/orders/confirm" => "orders#confirm"
  get "/orders/thanks" => "orders#thanks"
  resources :addresses
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
