Rails.application.routes.draw do
  get '/'  => 'gitsongs#index'
  get '/all'  => 'gitsongs#all'
  resources :gitsongs
end
