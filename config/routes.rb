Rails.application.routes.draw do

  resources :lists
  root 'list#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
