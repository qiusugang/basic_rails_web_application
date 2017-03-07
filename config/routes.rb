Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :settings
  match 'users/login' => 'users#login', :via => [:get, :post]
  match 'users/logout' => 'users#logout', :via => [:get, :post]
  match 'roles/build_credentials' => 'roles#build_credentials', :via => [:get, :post]
  match 'roles/remove/:id/:rule_id' => 'roles#remove', :via => [:get, :post]
  match 'roles/add/:id/:rule_id' => 'roles#add', :via => [:get, :post]

  resources :users
  resources :credentials
  resources :roles
  resources :rules
  resources :articles

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match  ':controller(/:action(/:id))(.:format)',:via => [:get, :post]

end
