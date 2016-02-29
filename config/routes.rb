Rails.application.routes.draw do
  get '/'  => 'gitsongs#index'
  resources :gitsongs
end
