Rails.application.routes.draw do
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

namespace :admin do
  resources :genres
  resources :items
  resources :customers
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
