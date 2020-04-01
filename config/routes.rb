Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root 'pages#index' # root es buena páctica, también se podría: get '/', to: 'pages#index'
  get '/contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
