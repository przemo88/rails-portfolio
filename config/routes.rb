Rails.application.routes.draw do
  root "pages#index"
  resources :pages
  match ':controller(/:id(/:action))', :via=>[:get,:post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
