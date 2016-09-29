Rails.application.routes.draw do
  resources :articles
  resources :users
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match  ':controller(/:action(/:id))(.:format)',:via => [:get, :post]

end
