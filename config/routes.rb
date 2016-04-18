Rails.application.routes.draw do
  root 'articles#index'

  resources :articles, except: [:update, :destroy, :edit]
end
