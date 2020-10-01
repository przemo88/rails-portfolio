Rails.application.routes.draw do
  get 'statics/index'
  get 'statics/contact'
  root "statics#index"
  resources :pages
  match ':controller(/:id(/:action))', :via=>[:get,:post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
